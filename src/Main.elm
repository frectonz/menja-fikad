port module Main exposing (main)

import Browser
import Html exposing (Html, aside, button, details, div, h1, h2, h3, header, img, li, main_, p, section, span, summary, text, ul)
import Html.Attributes exposing (alt, class, classList, disabled, src, style, title)
import Html.Events exposing (onClick)
import Html.Keyed
import Icon
import Json.Decode as D
import Json.Encode as E
import Quiz exposing (Question, Quiz, Text, Topic)
import Quizzes
import Task
import Time
import Zipper exposing (Zipper)


port save : E.Value -> Cmd msg


port playSound : String -> Cmd msg



-- MODEL


{-| Either we are in the lobby looking at every desk, or we are seated at
exactly one of them. A seat owns its quiz, so it can never point at a quiz
that does not exist.
-}
type Model
    = Lobby (List Desk)
    | Seated Seat


type alias Desk =
    { quiz : Quiz
    , sitting : Maybe Sitting
    , history : List Record
    }


type alias Seat =
    { before : List Desk
    , quiz : Quiz
    , history : List Record
    , after : List Desk
    , activity : Activity
    }


{-| The record shown by `Summary` and `Review` is the newest one; `Seat.history`
holds the ones before it.
-}
type Activity
    = Answering Sitting EndPrompt
    | Summary Record
    | Review Record


type EndPrompt
    = NotAsked
    | ConfirmingEnd


type alias Sitting =
    { slots : Zipper Slot
    , elapsed : Int
    }


type alias Record =
    { slots : Zipper Slot
    , elapsed : Int
    , finishedAt : Time.Posix
    }


type alias Slot =
    { question : Question
    , picked : Maybe Int
    , seconds : Int
    }


type Intent
    = Continue
    | StartOver
    | ViewLast


type Msg
    = Open Int Intent
    | Leave
    | Pick Int
    | Goto Int
    | Tick Time.Posix
    | AskEnd
    | CancelEnd
    | EndNow
    | Ended Time.Posix
    | Retry
    | ReviewAt Int
    | BackToSummary


main : Program D.Value Model Msg
main =
    Browser.element
        { init = \flags -> ( restore flags, Cmd.none )
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


{-| Every full quiz, followed by one practice set per topic made from the
questions of all quizzes.
-}
catalog : List Quiz
catalog =
    Quizzes.all ++ List.filterMap topicSet Quiz.topics


topicSet : Topic -> Maybe Quiz
topicSet topic =
    case List.filter (\question -> question.topic == topic) (List.concatMap Quiz.questions Quizzes.all) of
        first :: rest ->
            Just
                { id = "topic-" ++ String.replace " " "-" (String.toLower (Quiz.topicLabel topic))
                , title = Quiz.topicTitle topic
                , minutes = 1 + List.length rest
                , first = first
                , rest = rest
                }

        [] ->
            Nothing


newSitting : Quiz -> Sitting
newSitting quiz =
    { slots = Zipper.create (emptySlot quiz.first) (List.map emptySlot quiz.rest)
    , elapsed = 0
    }


emptySlot : Question -> Slot
emptySlot question =
    { question = question, picked = Nothing, seconds = 0 }


subscriptions : Model -> Sub Msg
subscriptions model =
    case model of
        Seated seat ->
            case seat.activity of
                Answering sitting _ ->
                    if unansweredCount sitting.slots == 0 then
                        Sub.none

                    else
                        Time.every 1000 Tick

                _ ->
                    Sub.none

        Lobby _ ->
            Sub.none



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    let
        next =
            step msg model
    in
    ( next
    , Cmd.batch
        [ save (encode next)
        , Maybe.withDefault Cmd.none (Maybe.map playSound (soundFor model next))
        , if msg == EndNow then
            Task.perform Ended Time.now

          else
            Cmd.none
        ]
    )


{-| A sound for what just changed: an answer going in, or a quiz being finished.
-}
soundFor : Model -> Model -> Maybe String
soundFor before after =
    case ( before, after ) of
        ( Seated was, Seated now ) ->
            case ( was.activity, now.activity ) of
                ( Answering old _, Answering new _ ) ->
                    if answeredCount new.slots > answeredCount old.slots then
                        Just
                            (if isCorrect new.slots.focus then
                                "correct"

                             else
                                "wrong"
                            )

                    else
                        Nothing

                ( Answering _ _, Summary record ) ->
                    Just
                        (if recordPassed record then
                            "passed"

                         else
                            "failed"
                        )

                _ ->
                    Nothing

        _ ->
            Nothing


step : Msg -> Model -> Model
step msg model =
    case ( msg, model ) of
        ( Open index intent, Lobby all ) ->
            open index intent all

        ( Leave, Seated _ ) ->
            Lobby (desks model)

        ( Retry, Seated seat ) ->
            case seat.activity of
                Answering _ _ ->
                    model

                Summary record ->
                    retry record seat

                Review record ->
                    retry record seat

        ( _, Seated seat ) ->
            Seated { seat | activity = stepActivity msg seat.quiz seat.activity }

        _ ->
            model


retry : Record -> Seat -> Model
retry record seat =
    Seated { seat | history = record :: seat.history, activity = Answering (newSitting seat.quiz) NotAsked }


stepActivity : Msg -> Quiz -> Activity -> Activity
stepActivity msg quiz activity =
    case ( msg, activity ) of
        ( Pick option, Answering sitting prompt ) ->
            Answering { sitting | slots = Zipper.mapFocus (pick option) sitting.slots } prompt

        ( Goto index, Answering sitting prompt ) ->
            Answering { sitting | slots = Zipper.goTo index sitting.slots } prompt

        ( Goto index, Review record ) ->
            Review { record | slots = Zipper.goTo index record.slots }

        ( Tick now, Answering sitting prompt ) ->
            let
                ticked =
                    { sitting
                        | elapsed = sitting.elapsed + 1
                        , slots =
                            Zipper.mapFocus
                                (\slot ->
                                    if slot.picked == Nothing then
                                        { slot | seconds = slot.seconds + 1 }

                                    else
                                        slot
                                )
                                sitting.slots
                    }
            in
            if ticked.elapsed >= quiz.minutes * 60 then
                Summary (finish now ticked)

            else
                Answering ticked prompt

        ( AskEnd, Answering sitting _ ) ->
            Answering sitting ConfirmingEnd

        ( CancelEnd, Answering sitting _ ) ->
            Answering sitting NotAsked

        ( Ended now, Answering sitting _ ) ->
            Summary (finish now sitting)

        ( ReviewAt index, Summary record ) ->
            Review { record | slots = Zipper.goTo index record.slots }

        ( BackToSummary, Review record ) ->
            Summary record

        _ ->
            activity


pick : Int -> Slot -> Slot
pick option slot =
    if slot.picked == Nothing && option >= 0 && option < List.length (Quiz.options slot.question) then
        { slot | picked = Just option }

    else
        slot


finish : Time.Posix -> Sitting -> Record
finish now sitting =
    { slots = Zipper.goTo 0 sitting.slots
    , elapsed = sitting.elapsed
    , finishedAt = now
    }


open : Int -> Intent -> List Desk -> Model
open index intent all =
    case ( index >= 0, List.drop index all ) of
        ( True, desk :: after ) ->
            let
                seat history activity =
                    Seated
                        { before = List.take index all
                        , quiz = desk.quiz
                        , history = history
                        , after = after
                        , activity = activity
                        }
            in
            case ( intent, desk.sitting, desk.history ) of
                ( Continue, Just sitting, _ ) ->
                    seat desk.history (Answering sitting NotAsked)

                ( ViewLast, Nothing, latest :: earlier ) ->
                    seat earlier (Summary latest)

                ( ViewLast, _, _ ) ->
                    Lobby all

                _ ->
                    seat desk.history (Answering (newSitting desk.quiz) NotAsked)

        _ ->
            Lobby all


desks : Model -> List Desk
desks model =
    case model of
        Lobby all ->
            all

        Seated seat ->
            seat.before
                ++ (case seat.activity of
                        Answering sitting _ ->
                            { quiz = seat.quiz, sitting = Just sitting, history = seat.history }

                        Summary record ->
                            { quiz = seat.quiz, sitting = Nothing, history = record :: seat.history }

                        Review record ->
                            { quiz = seat.quiz, sitting = Nothing, history = record :: seat.history }
                   )
                :: seat.after



-- STATS


isCorrect : Slot -> Bool
isCorrect slot =
    slot.picked == Just (Quiz.correctIndex slot.question)


correctCount : Zipper Slot -> Int
correctCount slots =
    List.length (List.filter isCorrect (Zipper.toList slots))


answeredCount : Zipper Slot -> Int
answeredCount slots =
    List.length (List.filter (\slot -> slot.picked /= Nothing) (Zipper.toList slots))


unansweredCount : Zipper Slot -> Int
unansweredCount slots =
    Zipper.length slots - answeredCount slots


passed : Int -> Int -> Bool
passed correct total =
    correct * 100 > total * 74


percent : Int -> Int -> Int
percent part total =
    if total == 0 then
        0

    else
        part * 100 // total


recordPercent : Record -> Int
recordPercent record =
    percent (correctCount record.slots) (Zipper.length record.slots)


recordPassed : Record -> Bool
recordPassed record =
    passed (correctCount record.slots) (Zipper.length record.slots)


longestStreak : Zipper Slot -> Int
longestStreak slots =
    List.foldl
        (\slot ( run, best ) ->
            if isCorrect slot then
                ( run + 1, max best (run + 1) )

            else
                ( 0, best )
        )
        ( 0, 0 )
        (Zipper.toList slots)
        |> Tuple.second


{-| Seconds ahead of (positive) or behind (negative) an even pace through the quiz.
-}
paceLead : Quiz -> Sitting -> Int
paceLead quiz sitting =
    answeredCount sitting.slots * quiz.minutes * 60 // Zipper.length sitting.slots - sitting.elapsed


nextUnanswered : Zipper Slot -> Int
nextUnanswered slots =
    let
        total =
            Zipper.length slots

        answered =
            List.map (\slot -> slot.picked /= Nothing) (Zipper.toList slots)
    in
    List.range 1 total
        |> List.map (\offset -> modBy total (Zipper.position slots + offset))
        |> List.filter (\index -> List.drop index answered |> List.head |> (==) (Just False))
        |> List.head
        |> Maybe.withDefault (Zipper.position slots)


formatTime : Int -> String
formatTime seconds =
    let
        pad n =
            String.padLeft 2 '0' (String.fromInt n)

        hours =
            seconds // 3600
    in
    (if hours > 0 then
        String.fromInt hours ++ ":"

     else
        ""
    )
        ++ pad (modBy 60 (seconds // 60))
        ++ ":"
        ++ pad (modBy 60 seconds)


formatDuration : Int -> String
formatDuration seconds =
    if seconds >= 3600 then
        String.fromInt (seconds // 3600) ++ "h " ++ String.fromInt (modBy 60 (seconds // 60)) ++ "m"

    else if seconds >= 60 then
        String.fromInt (seconds // 60) ++ "m " ++ String.fromInt (modBy 60 seconds) ++ "s"

    else
        String.fromInt seconds ++ "s"



-- STORAGE


encode : Model -> E.Value
encode model =
    E.object
        [ ( "screen"
          , E.list E.string <|
                case model of
                    Lobby _ ->
                        [ "lobby" ]

                    Seated seat ->
                        case seat.activity of
                            Answering _ _ ->
                                [ "answering", seat.quiz.id ]

                            Summary _ ->
                                [ "summary", seat.quiz.id ]

                            Review _ ->
                                [ "review", seat.quiz.id ]
          )
        , ( "quizzes"
          , E.object (List.map (\desk -> ( desk.quiz.id, encodeDesk desk )) (desks model))
          )
        ]


encodeDesk : Desk -> E.Value
encodeDesk desk =
    E.object
        [ ( "sitting"
          , case desk.sitting of
                Just sitting ->
                    E.object (encodeProgress sitting)

                Nothing ->
                    E.null
          )
        , ( "history"
          , E.list
                (\record -> E.object (( "finishedAt", E.int (Time.posixToMillis record.finishedAt) ) :: encodeProgress record))
                desk.history
          )
        ]


encodeProgress : { r | slots : Zipper Slot, elapsed : Int } -> List ( String, E.Value )
encodeProgress progress =
    [ ( "elapsed", E.int progress.elapsed )
    , ( "cursor", E.int (Zipper.position progress.slots) )
    , ( "slots"
      , E.list
            (\slot ->
                E.object
                    [ ( "picked", Maybe.withDefault E.null (Maybe.map E.int slot.picked) )
                    , ( "seconds", E.int slot.seconds )
                    ]
            )
            (Zipper.toList progress.slots)
      )
    ]


restore : D.Value -> Model
restore flags =
    let
        all =
            List.map
                (\quiz ->
                    D.decodeValue (D.at [ "quizzes", quiz.id ] (deskDecoder quiz)) flags
                        |> Result.withDefault { quiz = quiz, sitting = Nothing, history = [] }
                )
                catalog

        indexOf id =
            List.indexedMap Tuple.pair all
                |> List.filter (\( _, desk ) -> desk.quiz.id == id)
                |> List.head
                |> Maybe.map Tuple.first
                |> Maybe.withDefault -1
    in
    case D.decodeValue (D.field "screen" (D.list D.string)) flags of
        Ok [ "answering", id ] ->
            open (indexOf id) Continue all

        Ok [ "summary", id ] ->
            open (indexOf id) ViewLast all

        Ok [ "review", id ] ->
            case open (indexOf id) ViewLast all of
                Seated seat ->
                    case seat.activity of
                        Summary record ->
                            Seated { seat | activity = Review record }

                        _ ->
                            Seated seat

                lobby ->
                    lobby

        _ ->
            Lobby all


deskDecoder : Quiz -> D.Decoder Desk
deskDecoder quiz =
    D.map2 (Desk quiz)
        (D.field "sitting" (D.nullable (D.map2 Sitting (slotsDecoder quiz) (D.field "elapsed" D.int))))
        (D.field "history"
            (D.list
                (D.map3 Record
                    (slotsDecoder quiz)
                    (D.field "elapsed" D.int)
                    (D.field "finishedAt" (D.map Time.millisToPosix D.int))
                )
            )
        )


slotsDecoder : Quiz -> D.Decoder (Zipper Slot)
slotsDecoder quiz =
    D.map2 Tuple.pair
        (D.field "cursor" D.int)
        (D.field "slots"
            (D.list
                (D.map2 Tuple.pair
                    (D.field "picked" (D.nullable D.int))
                    (D.field "seconds" D.int)
                )
            )
        )
        |> D.andThen
            (\( cursor, stored ) ->
                let
                    slot question ( picked, seconds ) =
                        pick (Maybe.withDefault -1 picked) { question = question, picked = Nothing, seconds = seconds }
                in
                case ( List.length stored == 1 + List.length quiz.rest, stored ) of
                    ( True, first :: rest ) ->
                        D.succeed
                            (Zipper.create (slot quiz.first first) (List.map2 slot quiz.rest rest)
                                |> Zipper.goTo cursor
                            )

                    _ ->
                        D.fail "saved answers do not match this quiz"
            )



-- VIEW


view : Model -> Html Msg
view model =
    case model of
        Lobby all ->
            viewLobby all

        Seated seat ->
            case seat.activity of
                Answering sitting prompt ->
                    viewExam seat.quiz (Taking sitting prompt)

                Review record ->
                    viewExam seat.quiz (Looking record)

                Summary record ->
                    viewSummary seat.quiz record seat.history


shell : String -> List (Html Msg) -> Html Msg
shell extra children =
    div [ class ("flex min-h-dvh flex-col bg-ground text-ink " ++ extra) ] children


{-| The header is drawn like a blue direction sign, with the name on an outlined plate.
-}
blueBar : List (Html Msg) -> Html Msg
blueBar extras =
    header [ class "sticky top-0 z-10 bg-plate text-white" ]
        [ div [ class (container ++ " flex items-center justify-between gap-4 py-2.5") ]
            (button
                [ class "cursor-pointer whitespace-nowrap rounded-lg border-2 border-white px-3 py-0.5 text-xl font-black hover:bg-white hover:text-plate"
                , onClick Leave
                ]
                [ text "መንጃ ፈቃድ" ]
                :: extras
            )
        ]


container : String
container =
    "mx-auto w-full max-w-7xl px-4 sm:px-8"


tile : String
tile =
    "rounded-2xl border-2 border-b-4 border-edge bg-white"


buttonBase : String
buttonBase =
    "cursor-pointer rounded-2xl border-2 border-b-4 px-5 py-2.5 text-sm font-extrabold uppercase tracking-wide active:translate-y-0.5 active:border-b-2 "


greenButton : String
greenButton =
    buttonBase ++ "border-leaf-dark bg-leaf text-white hover:brightness-105"


redButton : String
redButton =
    buttonBase ++ "border-cherry-dark bg-cherry text-white hover:brightness-105"


blueButton : String
blueButton =
    buttonBase ++ "border-plate-dark bg-plate text-white hover:brightness-105"


plainButton : String
plainButton =
    buttonBase ++ "border-edge bg-white text-plate hover:bg-snow disabled:cursor-not-allowed disabled:text-edge disabled:hover:bg-white"


thickBar : String -> Int -> Html msg
thickBar color value =
    div [ class "h-3 w-full overflow-hidden rounded-full bg-edge" ]
        [ div [ class ("h-full rounded-full " ++ color), style "width" (String.fromInt value ++ "%") ] [] ]


viewLobby : List Desk -> Html Msg
viewLobby all =
    let
        records =
            List.concatMap .history all

        attempted =
            List.concatMap (.slots >> Zipper.toList) records
                ++ List.concatMap (.sitting >> Maybe.map (.slots >> Zipper.toList) >> Maybe.withDefault []) all
                |> List.filter (\slot -> slot.picked /= Nothing)

        practiceTime =
            List.sum (List.map .elapsed records)
                + List.sum (List.filterMap (.sitting >> Maybe.map .elapsed) all)

        chip extra icon value label =
            li [ class ("items-center gap-1.5 font-extrabold " ++ extra), title label ] [ icon, text value ]

        indexed =
            List.indexedMap Tuple.pair all

        fullQuizzes =
            List.take (List.length Quizzes.all) indexed

        topicSets =
            List.drop (List.length Quizzes.all) indexed
    in
    shell ""
        [ blueBar
            [ if List.isEmpty attempted then
                text ""

              else
                ul [ class "flex items-center gap-3 whitespace-nowrap text-sm sm:gap-6 sm:text-base" ]
                    [ chip "flex" (Icon.target "size-5") (String.fromInt (percent (List.length (List.filter isCorrect attempted)) (List.length attempted)) ++ "%") "Answers you got right"
                    , chip "flex" (Icon.checkCircle "size-5") (String.fromInt (List.length attempted)) "Questions answered"
                    , chip "hidden sm:flex" (Icon.clock "size-5") (formatDuration practiceTime) "Time spent practising"
                    ]
            ]
        , main_ [ class (container ++ " py-8") ]
            [ h1 [ class "text-3xl font-black leading-tight sm:text-4xl" ] [ text "የመንጃ ፈቃድ የጽሑፍ ፈተና ልምምድ" ]
            , p [ class "mt-2 max-w-2xl text-lg text-mute" ]
                [ text "Practise the written driving test against the clock. You pass with more than 74%." ]
            , h2 [ class "mt-8 text-xl font-extrabold" ] [ text "Full quizzes" ]
            , div [ class "mt-3 grid gap-4 md:grid-cols-2 xl:grid-cols-3" ]
                (List.map
                    (\( index, desk ) ->
                        viewDesk index
                            desk
                            (span [ class "grid size-14 shrink-0 place-items-center rounded-2xl bg-plate text-2xl font-black text-white" ]
                                [ text (String.fromInt (index + 1)) ]
                            )
                    )
                    fullQuizzes
                )
            , h2 [ class "mt-10 text-xl font-extrabold" ] [ text "Practise one topic" ]
            , div [ class "mt-3 grid gap-4 sm:grid-cols-2 lg:grid-cols-3" ]
                (List.map
                    (\( index, desk ) ->
                        viewDesk index
                            desk
                            (span [ class "grid size-14 shrink-0 place-items-center rounded-2xl bg-snow text-plate" ]
                                [ Icon.topic desk.quiz.first.topic "size-8" ]
                            )
                    )
                    topicSets
                )
            ]
        ]


viewDesk : Int -> Desk -> Html Msg -> Html Msg
viewDesk index desk icon =
    let
        total =
            1 + List.length desk.quiz.rest

        best =
            List.maximum (List.map (\record -> correctCount record.slots) desk.history)
    in
    div [ class ("flex flex-col p-4 " ++ tile) ]
        [ div [ class "flex items-center gap-4" ]
            [ icon
            , div [ class "min-w-0" ]
                [ h3 [ class "truncate text-lg font-extrabold leading-tight" ] [ text desk.quiz.title.am ]
                , p [ class "text-mute" ] [ text desk.quiz.title.en ]
                ]
            ]
        , p [ class "mt-3 text-sm font-bold text-mute" ]
            [ text (String.fromInt total ++ " questions, " ++ String.fromInt desk.quiz.minutes ++ " minutes") ]
        , div [ class "mt-2" ]
            (case ( desk.sitting, best ) of
                ( Just sitting, _ ) ->
                    [ thickBar "bg-plate" (percent (answeredCount sitting.slots) total)
                    , p [ class "mt-1.5 text-sm font-bold text-plate" ]
                        [ text
                            (String.fromInt (answeredCount sitting.slots)
                                ++ " answered, "
                                ++ formatTime (desk.quiz.minutes * 60 - sitting.elapsed)
                                ++ " left"
                            )
                        ]
                    ]

                ( Nothing, Just correct ) ->
                    [ thickBar
                        (if passed correct total then
                            "bg-leaf"

                         else
                            "bg-cherry"
                        )
                        (percent correct total)
                    , p
                        [ class "mt-1.5 text-sm font-bold"
                        , classList [ ( "text-leaf-dark", passed correct total ), ( "text-cherry-dark", not (passed correct total) ) ]
                        ]
                        [ text ("Best " ++ String.fromInt (percent correct total) ++ "% from " ++ String.fromInt (List.length desk.history) ++ " tries") ]
                    ]

                ( Nothing, Nothing ) ->
                    [ thickBar "bg-edge" 0
                    , p [ class "mt-1.5 text-sm font-bold text-mute" ] [ text "Not started" ]
                    ]
            )
        , div [ class "mt-auto flex flex-wrap gap-2 pt-4" ]
            (case ( desk.sitting, desk.history ) of
                ( Just _, _ ) ->
                    [ button [ class blueButton, onClick (Open index Continue) ] [ text "Resume" ]
                    , button [ class plainButton, onClick (Open index StartOver) ] [ text "Start over" ]
                    ]

                ( Nothing, _ :: _ ) ->
                    [ button [ class blueButton, onClick (Open index StartOver) ] [ text "Try again" ]
                    , button [ class plainButton, onClick (Open index ViewLast) ] [ text "Last result" ]
                    ]

                ( Nothing, [] ) ->
                    [ button [ class blueButton, onClick (Open index Continue) ] [ text "Start" ] ]
            )
        ]


type Exam
    = Taking Sitting EndPrompt
    | Looking Record


{-| On large screens the exam fills the window exactly: the question area
scrolls inside itself if it ever has to, never the page.
-}
viewExam : Quiz -> Exam -> Html Msg
viewExam quiz exam =
    let
        slots =
            case exam of
                Taking sitting _ ->
                    sitting.slots

                Looking record ->
                    record.slots

        total =
            Zipper.length slots
    in
    shell "lg:h-dvh"
        [ header [ class "sticky top-0 z-10" ]
            [ div [ class "bg-plate text-white" ]
                [ div [ class (container ++ " flex items-center gap-4 py-2") ]
                    [ button
                        [ class "cursor-pointer rounded-lg border-2 border-white p-1.5 hover:bg-white hover:text-plate"
                        , onClick Leave
                        , title "Leave the quiz, your progress is kept"
                        ]
                        [ Icon.cross "size-5" ]
                    , p [ class "min-w-0 flex-1 leading-tight" ]
                        [ span [ class "block truncate font-extrabold" ] [ text (quiz.title.am ++ " " ++ quiz.title.en) ]
                        , span [ class "block text-sm font-semibold" ]
                            [ text (String.fromInt (answeredCount slots) ++ " of " ++ String.fromInt total)
                            , span [ class "hidden sm:inline" ] [ text " answered" ]
                            ]
                        ]
                    , case exam of
                        Taking sitting _ ->
                            viewClock quiz sitting

                        Looking record ->
                            clock "text-white" (formatTime record.elapsed) "time used"
                    ]
                ]
            , case exam of
                Taking sitting _ ->
                    viewRoad (percent (answeredCount slots) total) (Just (percent sitting.elapsed (quiz.minutes * 60)))

                Looking _ ->
                    viewRoad (percent (Zipper.position slots + 1) total) Nothing
            ]
        , main_ [ class (container ++ " grid flex-1 content-start items-start gap-4 py-4 lg:min-h-0 lg:content-stretch lg:grid-cols-[minmax(0,1fr)_19rem] lg:items-stretch") ]
            [ viewQuestion exam slots
            , viewNavigator exam slots
            ]
        , viewFooter exam slots
        ]


{-| Progress drawn as a stretch of road. The green stretch and the dot are how far
you have got through the questions, and the amber post is how far the clock has
got through the time, so staying ahead of the post means you will finish in time.
-}
viewRoad : Int -> Maybe Int -> Html msg
viewRoad you clockAt =
    div [ class "relative h-5 bg-road" ]
        [ div [ class "absolute inset-y-0 left-0 bg-white/25", style "width" (String.fromInt you ++ "%") ] []
        , div [ class "road-dashes absolute inset-0" ] []
        , case clockAt of
            Just at ->
                div
                    [ class "absolute inset-y-0 w-1.5 -translate-x-1/2 bg-sun"
                    , style "left" (String.fromInt at ++ "%")
                    , title "Where the clock is. Keep the green stretch ahead of it."
                    ]
                    []

            Nothing ->
                text ""
        , div
            [ class "absolute top-1/2 size-5 -translate-x-1/2 -translate-y-1/2 rounded-full border-[3px] border-white bg-plate"
            , style "left" (String.fromInt you ++ "%")
            , title "How far you have got"
            ]
            []
        ]


viewClock : Quiz -> Sitting -> Html msg
viewClock quiz sitting =
    let
        remaining =
            quiz.minutes * 60 - sitting.elapsed

        lead =
            paceLead quiz sitting
    in
    clock
        (if remaining <= 300 || lead < 0 then
            "text-sun"

         else
            "text-white"
        )
        (formatTime remaining)
        (if lead >= 0 then
            formatTime lead ++ " ahead"

         else
            formatTime (negate lead) ++ " behind"
        )


clock : String -> String -> String -> Html msg
clock color time note =
    p [ class ("shrink-0 text-right leading-none " ++ color) ]
        [ span [ class "flex items-center justify-end gap-1.5 text-xl font-black tabular-nums" ] [ Icon.clock "size-5", text time ]
        , span [ class "mt-1 block text-xs font-bold tabular-nums" ] [ text note ]
        ]


isRevealed : Exam -> Slot -> Bool
isRevealed exam slot =
    case exam of
        Taking _ _ ->
            slot.picked /= Nothing

        Looking _ ->
            True


viewQuestion : Exam -> Zipper Slot -> Html Msg
viewQuestion exam slots =
    let
        slot =
            slots.focus

        answers =
            div [ class "grid content-start gap-2" ]
                (List.indexedMap (viewOption slot (isRevealed exam slot)) (Quiz.options slot.question))
    in
    section [ class "rounded-2xl border-2 border-edge bg-white p-4 sm:p-6 lg:min-h-0 lg:overflow-y-auto" ]
        [ div []
            [ p [ class "flex flex-wrap items-center gap-x-4 gap-y-1 text-sm font-bold text-mute" ]
                [ text ("Question " ++ String.fromInt (Zipper.position slots + 1) ++ " of " ++ String.fromInt (Zipper.length slots))
                , span [ class "inline-flex items-center gap-1.5" ] [ Icon.topic slot.question.topic "size-4", text (Quiz.topicLabel slot.question.topic) ]
                ]
            , h2 [ class "mt-2 text-2xl font-extrabold leading-snug" ] [ text slot.question.prompt.am ]
            , p [ class "mt-1 text-mute" ] [ text slot.question.prompt.en ]
            , case slot.question.figure of
                Just path ->
                    div [ class "mt-4 grid gap-5 md:grid-cols-[14rem_minmax(0,1fr)]" ]
                        [ img [ src path, alt "Road sign", class "mx-auto h-36 w-auto max-w-full object-contain md:mt-2 md:h-48" ] []
                        , answers
                        ]

                Nothing ->
                    div [ class "mt-4" ] [ answers ]
            ]
        ]


optionKey : Int -> String
optionKey index =
    List.drop index [ "ሀ", "ለ", "ሐ", "መ", "ሠ" ] |> List.head |> Maybe.withDefault ""


viewOption : Slot -> Bool -> Int -> Text -> Html Msg
viewOption slot revealed index option =
    let
        isAnswer =
            revealed && index == Quiz.correctIndex slot.question

        isWrongPick =
            revealed && slot.picked == Just index && not isAnswer

        isRest =
            revealed && not isAnswer && not isWrongPick
    in
    button
        [ class "flex w-full items-center gap-3 rounded-xl border-2 border-b-4 px-3 py-2 text-left"
        , classList
            [ ( "cursor-pointer border-edge bg-white hover:bg-snow active:translate-y-0.5 active:border-b-2", not revealed )
            , ( "border-leaf bg-mint text-leaf-dark", isAnswer )
            , ( "border-cherry bg-blush text-cherry-dark", isWrongPick )
            , ( "border-edge bg-white text-mute", isRest )
            ]
        , disabled revealed
        , onClick (Pick index)
        ]
        [ span
            [ class "grid size-8 shrink-0 place-items-center rounded-lg border-2 font-extrabold"
            , classList
                [ ( "border-edge text-mute", not isAnswer && not isWrongPick )
                , ( "border-leaf bg-leaf text-white", isAnswer )
                , ( "border-cherry bg-cherry text-white", isWrongPick )
                ]
            ]
            [ if isAnswer then
                Icon.check "size-5"

              else if isWrongPick then
                Icon.cross "size-5"

              else
                text (optionKey index)
            ]
        , span [ class "min-w-0" ]
            [ span [ class "block font-bold leading-snug" ] [ text option.am ]
            , span [ class "block text-sm leading-snug", classList [ ( "text-mute", not isAnswer && not isWrongPick ) ] ] [ text option.en ]
            ]
        ]


{-| The bar across the bottom: plain while you are choosing, then green or red
with the verdict, the explanation and the button to move on.
-}
viewFooter : Exam -> Zipper Slot -> Html Msg
viewFooter exam slots =
    let
        slot =
            slots.focus

        index =
            Zipper.position slots

        total =
            Zipper.length slots

        correct =
            isCorrect slot

        moveOn =
            case exam of
                Looking _ ->
                    [ button [ class plainButton, disabled (index == total - 1), onClick (Goto (index + 1)) ] [ text "Next" ]
                    , button [ class blueButton, onClick BackToSummary ] [ text "Results" ]
                    ]

                Taking _ _ ->
                    [ if unansweredCount slots == 0 then
                        button [ class blueButton, onClick EndNow ] [ text "See results" ]

                      else if correct then
                        button [ class greenButton, onClick (Goto (nextUnanswered slots)) ] [ text "Continue" ]

                      else
                        button [ class redButton, onClick (Goto (nextUnanswered slots)) ] [ text "Continue" ]
                    ]
    in
    if isRevealed exam slot then
        div [ class "sticky bottom-0", classList [ ( "bg-mint text-leaf-dark", correct ), ( "bg-blush text-cherry-dark", not correct ) ] ]
            [ div [ class (container ++ " flex flex-wrap items-center gap-x-6 gap-y-3 py-3 sm:flex-nowrap") ]
                [ span [ class "hidden size-14 shrink-0 place-items-center rounded-full bg-white text-3xl font-black sm:grid" ]
                    [ if correct then
                        Icon.check "size-8"

                      else
                        Icon.cross "size-8"
                    ]
                , div [ class "min-w-0 flex-1 basis-full sm:basis-0" ]
                    [ p [ class "text-lg font-extrabold leading-tight sm:text-xl" ]
                        [ text
                            (if correct then
                                "ትክክል! Correct"

                             else if slot.picked == Nothing then
                                "Not answered. The answer is " ++ optionKey (Quiz.correctIndex slot.question)

                             else
                                "ስህተት! The answer is " ++ optionKey (Quiz.correctIndex slot.question)
                            )
                        ]
                    , p [ class "mt-0.5 max-w-prose text-sm font-semibold leading-snug sm:text-base" ] [ text slot.question.explanation ]
                    ]
                , div [ class "flex shrink-0 gap-2" ]
                    (button [ class plainButton, disabled (index == 0), onClick (Goto (index - 1)) ] [ text "Back" ] :: moveOn)
                ]
            ]

    else
        div [ class "sticky bottom-0 border-t-2 border-edge bg-white" ]
            [ div [ class (container ++ " flex items-center justify-between gap-3 py-3") ]
                [ button [ class plainButton, disabled (index == 0), onClick (Goto (index - 1)) ] [ text "Back" ]
                , p [ class "hidden font-bold text-mute sm:block" ] [ text "Choose an answer" ]
                , button [ class plainButton, onClick (Goto (modBy total (index + 1))) ] [ text "Skip" ]
                ]
            ]


viewNavigator : Exam -> Zipper Slot -> Html Msg
viewNavigator exam slots =
    let
        cell index slot =
            button
                [ class "aspect-square cursor-pointer rounded-md text-sm font-extrabold sm:text-xs"
                , classList
                    [ ( "bg-snow text-mute hover:bg-edge", slot.picked == Nothing )
                    , ( "bg-leaf text-white", isCorrect slot )
                    , ( "bg-cherry text-white", slot.picked /= Nothing && not (isCorrect slot) )
                    , ( "outline-2 outline-offset-1 outline-plate", index == Zipper.position slots )
                    ]
                , onClick (Goto index)
                ]
                [ text (String.fromInt (index + 1)) ]
    in
    let
        contents =
            [ div [ class "grid grid-cols-6 gap-1.5 sm:grid-cols-10 md:grid-cols-20 lg:grid-cols-10 lg:gap-1" ] (List.indexedMap cell (Zipper.toList slots))
            , div [ class "mt-3" ]
                (case exam of
                    Looking _ ->
                        [ button [ class (blueButton ++ " w-full"), onClick BackToSummary ] [ text "Results" ] ]

                    Taking _ ConfirmingEnd ->
                        [ p [ class "text-sm font-bold" ]
                            [ text ("The " ++ String.fromInt (unansweredCount slots) ++ " questions you have not answered will count as wrong.") ]
                        , div [ class "mt-3 grid grid-cols-2 gap-2" ]
                            [ button [ class (plainButton ++ " px-2"), onClick CancelEnd ] [ text "Keep going" ]
                            , button [ class (redButton ++ " px-2"), onClick EndNow ] [ text "End quiz" ]
                            ]
                        ]

                    Taking _ NotAsked ->
                        [ button [ class (plainButton ++ " w-full"), onClick AskEnd ] [ text "End quiz" ] ]
                )
            ]
    in
    div [ class "w-full self-start lg:max-h-full lg:overflow-y-auto" ]
        [ -- Keyed by question so the list folds away again after you jump to one.
          Html.Keyed.node "div"
            [ class "lg:hidden" ]
            [ ( String.fromInt (Zipper.position slots)
              , details [ class ("group p-3 " ++ tile) ]
                    [ summary [ class "flex cursor-pointer list-none items-center justify-between gap-3 font-extrabold text-plate [&::-webkit-details-marker]:hidden" ]
                        [ span []
                            [ text "All questions"
                            , span [ class "ml-2 font-bold text-mute" ]
                                [ text (String.fromInt (answeredCount slots) ++ " of " ++ String.fromInt (Zipper.length slots) ++ " answered") ]
                            ]
                        , Icon.chevronDown "size-6 transition-transform group-open:rotate-180"
                        ]
                    , div [ class "mt-3" ] contents
                    ]
              )
            ]
        , aside [ class ("hidden p-3 lg:block " ++ tile) ] contents
        ]


viewSummary : Quiz -> Record -> List Record -> Html Msg
viewSummary quiz record earlier =
    let
        all =
            Zipper.toList record.slots

        total =
            List.length all

        correct =
            correctCount record.slots

        pass =
            passed correct total

        score =
            percent correct total

        indexed =
            List.indexedMap Tuple.pair all

        missed =
            List.filter (\( _, slot ) -> not (isCorrect slot)) indexed

        slowest =
            List.sortBy (\( _, slot ) -> negate slot.seconds) indexed |> List.take 5

        topics =
            List.foldl
                (\slot seen ->
                    if List.member slot.question.topic seen then
                        seen

                    else
                        seen ++ [ slot.question.topic ]
                )
                []
                all

        comparison =
            case earlier of
                previous :: _ ->
                    let
                        change =
                            score - recordPercent previous
                    in
                    if change > 0 then
                        " That is " ++ String.fromInt change ++ " points better than last time."

                    else if change < 0 then
                        " That is " ++ String.fromInt (negate change) ++ " points lower than last time."

                    else
                        " That is the same as last time."

                [] ->
                    ""

        byTopic =
            section [ class ("p-5 " ++ tile) ]
                [ h2 [ class "text-xl font-extrabold" ] [ text "Score by topic" ]
                , ul [ class "mt-4 grid gap-3" ] (List.map (viewTopic all) topics)
                ]

        longest =
            section [ class ("p-5 " ++ tile) ]
                [ h2 [ class "text-xl font-extrabold" ] [ text "Questions that took you longest" ]
                , ul [ class "mt-2" ] (List.map viewSlotLink slowest)
                ]

        box color textColor label value =
            div [ class ("rounded-2xl p-1 " ++ color) ]
                [ p [ class "py-1 text-center text-xs font-extrabold uppercase tracking-wide text-white" ] [ text label ]
                , p [ class ("rounded-xl bg-white py-3 text-center text-lg font-black tabular-nums sm:text-2xl " ++ textColor) ] [ text value ]
                ]
    in
    shell ""
        [ blueBar []
        , main_ [ class (container ++ " py-8") ]
            [ div [ class "mx-auto max-w-2xl text-center" ]
                [ div
                    [ class "mx-auto grid size-20 place-items-center rounded-full text-white"
                    , classList [ ( "bg-leaf", pass ), ( "bg-cherry", not pass ) ]
                    ]
                    [ if pass then
                        Icon.trophy "size-11"

                      else
                        Icon.cross "size-11"
                    ]
                , h1 [ class "mt-3 text-4xl font-black", classList [ ( "text-leaf", pass ), ( "text-cherry", not pass ) ] ]
                    [ text
                        (if pass then
                            "አልፈዋል!"

                         else
                            "አላለፉም!"
                        )
                    ]
                , p [ class "mt-2 text-lg font-semibold text-mute" ]
                    [ text
                        (quiz.title.en
                            ++ ", attempt "
                            ++ String.fromInt (List.length earlier + 1)
                            ++ ". You got "
                            ++ String.fromInt correct
                            ++ " of "
                            ++ String.fromInt total
                            ++ " right and need more than 74% to pass."
                            ++ comparison
                        )
                    ]
                , div [ class "mt-6 grid grid-cols-3 gap-3" ]
                    [ box "bg-sun" "text-sun-dark" "Score" (String.fromInt score ++ "%")
                    , box "bg-plate" "text-plate" "Time" (formatTime record.elapsed)
                    , box "bg-leaf" "text-leaf-dark" "Best run" (String.fromInt (longestStreak record.slots))
                    ]
                , div [ class "mt-6 flex flex-wrap justify-center gap-3" ]
                    [ button [ class blueButton, onClick Retry ] [ text "Try again" ]
                    , button [ class plainButton, onClick (ReviewAt 0) ] [ text "Review answers" ]
                    , button [ class plainButton, onClick Leave ] [ text "All quizzes" ]
                    ]
                ]
            , case ( List.isEmpty missed, List.length topics > 1 ) of
                ( False, _ ) ->
                    div [ class "mt-10 grid items-start gap-4 lg:grid-cols-2" ]
                        [ div [ class "grid gap-4" ]
                            (if List.length topics > 1 then
                                [ byTopic, longest ]

                             else
                                [ longest ]
                            )
                        , section [ class ("p-5 " ++ tile) ]
                            [ h2 [ class "text-xl font-extrabold" ]
                                [ text
                                    (if List.length missed == 1 then
                                        "1 question to go over"

                                     else
                                        String.fromInt (List.length missed) ++ " questions to go over"
                                    )
                                ]
                            , ul [ class "mt-2" ] (List.map viewSlotLink missed)
                            ]
                        ]

                ( True, True ) ->
                    div [ class "mt-10 grid items-start gap-4 lg:grid-cols-2" ] [ byTopic, longest ]

                ( True, False ) ->
                    div [ class "mx-auto mt-10 max-w-2xl" ] [ longest ]
            ]
        ]


viewTopic : List Slot -> Topic -> Html msg
viewTopic all topic =
    let
        inTopic =
            List.filter (\slot -> slot.question.topic == topic) all

        right =
            List.length (List.filter isCorrect inTopic)

        count =
            List.length inTopic
    in
    li []
        [ p [ class "flex justify-between font-bold" ]
            [ span [ class "flex items-center gap-2" ] [ Icon.topic topic "size-5 text-plate", text (Quiz.topicLabel topic) ]
            , span [ class "tabular-nums text-mute" ] [ text (String.fromInt right ++ " of " ++ String.fromInt count) ]
            ]
        , div [ class "mt-1" ]
            [ thickBar
                (if passed right count then
                    "bg-leaf"

                 else
                    "bg-cherry"
                )
                (percent right count)
            ]
        ]


viewSlotLink : ( Int, Slot ) -> Html Msg
viewSlotLink ( index, slot ) =
    li []
        [ button
            [ class "flex w-full cursor-pointer items-center gap-3 rounded-xl px-2 py-2 text-left hover:bg-snow"
            , onClick (ReviewAt index)
            ]
            [ span
                [ class "grid size-9 shrink-0 place-items-center rounded-lg text-sm font-extrabold text-white"
                , classList [ ( "bg-leaf", isCorrect slot ), ( "bg-cherry", not (isCorrect slot) ) ]
                ]
                [ text (String.fromInt (index + 1)) ]
            , case slot.question.figure of
                Just path ->
                    img [ src path, alt "", class "size-10 shrink-0 object-contain" ] []

                Nothing ->
                    text ""
            , span [ class "min-w-0 flex-1" ]
                [ span [ class "block font-bold leading-snug" ] [ text slot.question.prompt.am ]
                , span [ class "block text-sm leading-snug text-mute" ] [ text slot.question.prompt.en ]
                ]
            , span [ class "shrink-0 text-sm font-bold tabular-nums text-mute" ] [ text (formatDuration slot.seconds) ]
            ]
        ]
