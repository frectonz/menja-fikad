port module Main exposing (main)

import Browser
import Browser.Events
import Html exposing (Html, aside, button, details, div, h1, h2, h3, header, img, li, main_, p, section, span, summary, text, ul)
import Html.Attributes exposing (alt, class, classList, disabled, src, title)
import Html.Events exposing (onClick)
import Html.Keyed
import Icon
import Json.Decode as D
import Json.Encode as E
import Quiz exposing (Question, Quiz, Topic)
import Quizzes
import Random
import Task
import Time
import Trip exposing (Tour(..))
import Trip.View
import Ui exposing (blueBar, blueButton, container, formatDuration, greenButton, percent, plainButton, redButton, shell, thickBar, tile, topicBar, viewPrompt, viewRoad, viewVerdict)
import Zipper exposing (Zipper)


port save : E.Value -> Cmd msg


port playSound : String -> Cmd msg


{-| We are in the lobby looking at every desk, seated at exactly one of them,
or out on the long drive. A seat owns its quiz, so it can never point at a
quiz that does not exist.
-}
type Model
    = Lobby (Maybe Tour) (List Desk)
    | Seated (Maybe Tour) Seat
    | Touring (List Desk) Tour


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
    | Depart
    | Redrive
    | Departed Tour
    | Resume
    | Onward


main : Program D.Value Model Msg
main =
    Browser.element
        { init = \flags -> ( restore flags, Cmd.none )
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


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
        Seated _ seat ->
            case seat.activity of
                Answering sitting _ ->
                    if unansweredCount sitting.slots == 0 then
                        Sub.none

                    else
                        Time.every 1000 Tick

                _ ->
                    Sub.none

        Touring _ (Stopped _) ->
            Browser.Events.onKeyDown keyDecoder

        Touring _ (Rolling trip) ->
            Sub.batch
                [ Browser.Events.onKeyDown keyDecoder
                , if trip.picked == Nothing then
                    Time.every 1000 Tick

                  else
                    Sub.none
                ]

        _ ->
            Sub.none


{-| Keys held with a modifier belong to the browser, like switching tabs.
-}
keyDecoder : D.Decoder Msg
keyDecoder =
    D.map4
        (\meta ctrl alt key ->
            case ( meta || ctrl || alt, String.toInt key ) of
                ( False, Just number ) ->
                    D.succeed (Pick (number - 1))

                ( False, Nothing ) ->
                    if key == "Enter" || key == " " then
                        D.succeed Onward

                    else
                        D.fail "not a shortcut"

                ( True, _ ) ->
                    D.fail "modified"
        )
        (D.field "metaKey" D.bool)
        (D.field "ctrlKey" D.bool)
        (D.field "altKey" D.bool)
        (D.field "key" D.string)
        |> D.andThen identity


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
        , case msg of
            EndNow ->
                Task.perform Ended Time.now

            Depart ->
                Random.generate Departed Trip.depart

            Redrive ->
                case model of
                    Touring _ (Arrived tally) ->
                        Random.generate Departed (Trip.redrive tally)

                    _ ->
                        Cmd.none

            _ ->
                Cmd.none
        ]
    )


soundFor : Model -> Model -> Maybe String
soundFor before after =
    case ( before, after ) of
        ( Touring _ (Rolling was), Touring _ (Rolling now) ) ->
            if now.tally.answers > was.tally.answers then
                Just
                    (if now.tally.streak > 0 then
                        "correct"

                     else
                        "wrong"
                    )

            else
                Nothing

        ( Touring _ (Rolling _), Touring _ (Stopped _) ) ->
            Just "town"

        ( Touring _ (Rolling _), Touring _ (Arrived _) ) ->
            Just "passed"

        ( Seated _ was, Seated _ now ) ->
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
        ( Open index intent, Lobby tour all ) ->
            open tour index intent all

        ( Leave, Seated tour _ ) ->
            Lobby tour (desks model)

        ( Leave, Touring all tour ) ->
            Lobby (Just tour) all

        ( Resume, Lobby (Just tour) all ) ->
            Touring all tour

        ( Departed tour, _ ) ->
            Touring (desks model) tour

        ( Pick option, Touring all (Rolling trip) ) ->
            Touring all (Rolling (Trip.answer option trip))

        ( Onward, Touring all (Rolling trip) ) ->
            Touring all (Trip.advance trip)

        ( Onward, Touring all (Stopped trip) ) ->
            Touring all (Rolling trip)

        ( Tick _, Touring all (Rolling trip) ) ->
            Touring all (Rolling (Trip.tick trip))

        ( Retry, Seated tour seat ) ->
            case seat.activity of
                Answering _ _ ->
                    model

                Summary record ->
                    retry tour record seat

                Review record ->
                    retry tour record seat

        ( _, Seated tour seat ) ->
            Seated tour { seat | activity = stepActivity msg seat.quiz seat.activity }

        _ ->
            model


retry : Maybe Tour -> Record -> Seat -> Model
retry tour record seat =
    Seated tour { seat | history = record :: seat.history, activity = Answering (newSitting seat.quiz) NotAsked }


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


open : Maybe Tour -> Int -> Intent -> List Desk -> Model
open tour index intent all =
    case ( index >= 0, List.drop index all ) of
        ( True, desk :: after ) ->
            let
                seat history activity =
                    Seated tour
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
                    Lobby tour all

                _ ->
                    seat desk.history (Answering (newSitting desk.quiz) NotAsked)

        _ ->
            Lobby tour all


desks : Model -> List Desk
desks model =
    case model of
        Lobby _ all ->
            all

        Touring all _ ->
            all

        Seated _ seat ->
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


encode : Model -> E.Value
encode model =
    E.object
        [ ( "screen"
          , E.list E.string <|
                case model of
                    Lobby _ _ ->
                        [ "lobby" ]

                    Touring _ _ ->
                        [ "trip" ]

                    Seated _ seat ->
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
        , ( "trip"
          , case model of
                Lobby tour _ ->
                    Maybe.withDefault E.null (Maybe.map Trip.encode tour)

                Seated tour _ ->
                    Maybe.withDefault E.null (Maybe.map Trip.encode tour)

                Touring _ tour ->
                    Trip.encode tour
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

        tour =
            Result.toMaybe (D.decodeValue (D.field "trip" Trip.decoder) flags)

        indexOf id =
            List.indexedMap Tuple.pair all
                |> List.filter (\( _, desk ) -> desk.quiz.id == id)
                |> List.head
                |> Maybe.map Tuple.first
                |> Maybe.withDefault -1
    in
    case D.decodeValue (D.field "screen" (D.list D.string)) flags of
        Ok [ "answering", id ] ->
            open tour (indexOf id) Continue all

        Ok [ "summary", id ] ->
            open tour (indexOf id) ViewLast all

        Ok [ "review", id ] ->
            case open tour (indexOf id) ViewLast all of
                Seated _ seat ->
                    case seat.activity of
                        Summary record ->
                            Seated tour { seat | activity = Review record }

                        _ ->
                            Seated tour seat

                other ->
                    other

        Ok [ "trip" ] ->
            Maybe.withDefault (Lobby Nothing all) (Maybe.map (Touring all) tour)

        _ ->
            Lobby tour all


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


view : Model -> Html Msg
view model =
    case model of
        Lobby tour all ->
            viewLobby tour all

        Touring _ tour ->
            Trip.View.view tripEvents tour

        Seated _ seat ->
            case seat.activity of
                Answering sitting prompt ->
                    viewExam seat.quiz (Taking sitting prompt)

                Review record ->
                    viewExam seat.quiz (Looking record)

                Summary record ->
                    viewSummary seat.quiz record seat.history


tripEvents : Trip.View.Events Msg
tripEvents =
    { leave = Leave, depart = Depart, redrive = Redrive, resume = Resume, onward = Onward, pick = Pick }


viewLobby : Maybe Tour -> List Desk -> Html Msg
viewLobby tour all =
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
        [ blueBar Leave
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
            , Trip.View.lobbyTile tripEvents tour
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
                    viewRoad [] (percent (answeredCount slots) total) (Just (percent sitting.elapsed (quiz.minutes * 60)))

                Looking _ ->
                    viewRoad [] (percent (Zipper.position slots + 1) total) Nothing
            ]
        , main_ [ class (container ++ " grid flex-1 content-start items-start gap-4 py-4 lg:min-h-0 lg:content-stretch lg:grid-cols-[minmax(0,1fr)_19rem] lg:items-stretch") ]
            [ viewQuestion exam slots
            , viewNavigator exam slots
            ]
        , viewFooter exam slots
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
    viewPrompt Pick
        ("Question " ++ String.fromInt (Zipper.position slots + 1) ++ " of " ++ String.fromInt (Zipper.length slots))
        slots.focus.question
        slots.focus.picked
        (isRevealed exam slots.focus)


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
        viewVerdict slot.question slot.picked "" (button [ class plainButton, disabled (index == 0), onClick (Goto (index - 1)) ] [ text "Back" ] :: moveOn)

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
        [ blueBar Leave []
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
    topicBar
        (if passed right count then
            "bg-leaf"

         else
            "bg-cherry"
        )
        topic
        right
        count


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
