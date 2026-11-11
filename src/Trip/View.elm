module Trip.View exposing (Events, lobbyTile, view)

import Html exposing (Html, button, div, h1, h2, header, main_, p, section, span, text, ul)
import Html.Attributes exposing (class, classList, style, title)
import Html.Events exposing (onClick)
import Icon
import Quiz
import Quizzes
import Trip exposing (Tour(..), Trip)
import Ui exposing (blueBar, blueButton, buttonBase, container, formatDuration, greenButton, percent, plainButton, redButton, shell, tile, topicBar, viewPrompt, viewRoad, viewVerdict)


type alias Events msg =
    { leave : msg
    , depart : msg
    , redrive : msg
    , resume : msg
    , onward : msg
    , pick : Int -> msg
    }


view : Events msg -> Tour -> Html msg
view on tour =
    case tour of
        Rolling trip ->
            viewTrip on trip

        Stopped trip ->
            viewStop on trip

        Arrived tally ->
            viewArrival on tally


lobbyTile : Events msg -> Maybe Tour -> Html msg
lobbyTile on tour =
    let
        whiteButton =
            buttonBase ++ "border-edge bg-white text-plate hover:bg-snow"

        ghostButton =
            buttonBase ++ "border-white bg-plate text-white hover:bg-plate-dark"

        underway trip =
            ( List.length trip.tally.learned
            , String.fromInt (List.length trip.tally.learned)
                ++ " of "
                ++ String.fromInt Trip.total
                ++ " learned, "
                ++ String.fromInt (List.length trip.waiting)
                ++ " coming back"
            , [ button [ class whiteButton, onClick on.resume ] [ text "Keep driving" ] ]
            )

        ( learned, status, buttons ) =
            case tour of
                Nothing ->
                    ( 0
                    , "Not started"
                    , [ button [ class whiteButton, onClick on.depart ] [ text "Set off" ] ]
                    )

                Just (Rolling trip) ->
                    underway trip

                Just (Stopped trip) ->
                    underway trip

                Just (Arrived tally) ->
                    ( List.length tally.learned
                    , "Arrived after " ++ String.fromInt tally.answers ++ " answers"
                    , [ button [ class whiteButton, onClick on.resume ] [ text "See the trip" ]
                      , button [ class ghostButton, onClick on.depart ] [ text "Drive again" ]
                      ]
                    )
    in
    section [ class "mt-8 rounded-2xl border-2 border-b-4 border-plate-dark bg-plate p-5 text-white" ]
        [ h2 [ class "text-2xl font-black leading-tight" ] [ text "ረጅም ጉዞ" ]
        , p [ class "font-bold" ] [ text "The long drive, Addis Ababa to Dire Dawa" ]
        , p [ class "mt-2 max-w-2xl" ]
            [ text
                ("All "
                    ++ String.fromInt Trip.total
                    ++ " questions in shuffled order. One you miss comes back until you get it right twice. Stop whenever you like and pick up where you left off."
                )
            ]
        , div [ class "mt-4 h-3 w-full overflow-hidden rounded-full bg-white/25" ]
            [ div [ class "h-full rounded-full bg-sun", style "width" (String.fromInt (percent learned Trip.total) ++ "%") ] [] ]
        , p [ class "mt-1.5 text-sm font-bold" ] [ text status ]
        , div [ class "mt-4 flex flex-wrap gap-2" ] buttons
        ]


viewTrip : Events msg -> Trip -> Html msg
viewTrip on trip =
    let
        learned =
            List.length trip.tally.learned

        gear =
            Trip.gear trip.tally.streak

        label =
            if trip.picked /= Nothing then
                ""

            else if trip.card.misses == 0 then
                "New"

            else if trip.card.wins > 0 then
                "One more time to be sure"

            else if trip.card.misses == 1 then
                "Back again, you missed it once"

            else
                "Back again, you missed it " ++ String.fromInt trip.card.misses ++ " times"

        note =
            case ( Trip.comeback trip.card, trip.card.misses ) of
                ( Nothing, 0 ) ->
                    ""

                ( Nothing, _ ) ->
                    "Learned. This one is off your list."

                ( Just _, _ ) ->
                    if trip.card.wins > 0 then
                        "It comes back once more, a little later, to be sure."

                    else
                        "It comes back in a few questions."
    in
    shell "lg:h-dvh"
        [ header [ class "sticky top-0 z-10" ]
            [ div [ class "bg-plate text-white" ]
                [ div [ class (container ++ " flex items-center gap-4 py-2") ]
                    [ button
                        [ class "cursor-pointer rounded-lg border-2 border-white p-1.5 hover:bg-white hover:text-plate"
                        , onClick on.leave
                        , title "Pull over, your progress is kept"
                        ]
                        [ Icon.cross "size-5" ]
                    , p [ class "min-w-0 flex-1 leading-tight" ]
                        [ span [ class "block truncate font-extrabold" ] [ text "ረጅም ጉዞ The long drive" ]
                        , span [ class "block text-sm font-semibold" ]
                            [ text (String.fromInt learned ++ " of " ++ String.fromInt Trip.total ++ " learned") ]
                        ]
                    , p [ class "shrink-0 text-right leading-none", classList [ ( "text-sun", gear >= 4 ) ] ]
                        [ span [ class "block text-xl font-black tabular-nums" ] [ text (String.fromInt trip.tally.streak ++ " in a row") ]
                        , span [ class "mt-1 block text-xs font-bold" ] [ text ("Gear " ++ String.fromInt gear) ]
                        ]
                    ]
                ]
            , viewTripRoad learned
            ]
        , main_ [ class (container ++ " flex flex-1 flex-col gap-3 py-4 lg:min-h-0") ]
            [ div [ class "flex flex-wrap items-center justify-between gap-x-4 gap-y-1 text-sm font-bold text-mute" ]
                [ case Trip.nextStop learned of
                    Just ( away, town ) ->
                        span [] [ text ("Next stop " ++ town.am ++ " " ++ town.en ++ ", " ++ String.fromInt away ++ " to go") ]

                    Nothing ->
                        text ""
                , span [ class "tabular-nums" ]
                    [ text (String.fromInt (List.length trip.waiting) ++ " coming back, " ++ formatDuration trip.tally.seconds ++ " on the road") ]
                ]
            , viewPrompt on.pick label trip.card.question trip.picked (trip.picked /= Nothing)
            ]
        , if trip.picked /= Nothing then
            viewVerdict trip.card.question
                trip.picked
                note
                [ button
                    [ class
                        (if trip.picked == Just (Quiz.correctIndex trip.card.question) then
                            greenButton

                         else
                            redButton
                        )
                    , onClick on.onward
                    ]
                    [ text "Continue" ]
                ]

          else
            div [ class "sticky bottom-0 border-t-2 border-edge bg-white" ]
                [ p [ class (container ++ " py-3 text-center font-bold text-mute") ]
                    [ text "Choose an answer"
                    , span [ class "hidden lg:inline" ] [ text ", or press its number and then Enter" ]
                    ]
                ]
        ]


viewTripRoad : Int -> Html msg
viewTripRoad learned =
    viewRoad (List.map (\( at, town ) -> ( percent at Trip.total, town.en )) Trip.stops) (percent learned Trip.total) Nothing


viewStop : Events msg -> Trip -> Html msg
viewStop on trip =
    let
        learned =
            List.length trip.tally.learned

        town =
            Trip.lastStop learned
    in
    viewStatus on
        { extra = text ""
        , tally = trip.tally
        , heading = "እንኳን ወደ " ++ town.am ++ " በደህና መጡ!"
        , story =
            "Welcome to "
                ++ town.en
                ++ ". You have learned "
                ++ String.fromInt learned
                ++ " of "
                ++ String.fromInt Trip.total
                ++ " questions and "
                ++ String.fromInt (List.length trip.waiting)
                ++ " are waiting to come back."
                ++ (case Trip.nextStop learned of
                        Just ( away, next ) ->
                            " " ++ next.en ++ " is " ++ String.fromInt away ++ " questions down the road."

                        Nothing ->
                            ""
                   )
        , buttons =
            [ button [ class blueButton, onClick on.onward ] [ text "Drive on" ]
            , button [ class plainButton, onClick on.leave ] [ text "Take a break" ]
            ]
        }


viewArrival : Events msg -> Trip.Tally -> Html msg
viewArrival on tally =
    let
        missed =
            List.length (List.filter (\card -> card.misses > 0) tally.learned)

        ( headline, label ) =
            if missed == 1 then
                ( "1 question kept coming back", "Drive it again" )

            else
                ( String.fromInt missed ++ " questions kept coming back", "Drive the " ++ String.fromInt missed ++ " again" )
    in
    viewStatus on
        { extra =
            if missed == 0 then
                text ""

            else
                section [ class ("mt-4 flex flex-wrap items-center justify-between gap-4 p-5 " ++ tile) ]
                    [ div []
                        [ h2 [ class "text-xl font-extrabold" ] [ text headline ]
                        , p [ class "font-bold text-mute" ] [ text "Drive just those again, one at a time, until they stick." ]
                        ]
                    , button [ class blueButton, onClick on.redrive ] [ text label ]
                    ]
        , tally = tally
        , heading = "ድሬዳዋ ደርሰዋል!"
        , story = "You have answered every one of the " ++ String.fromInt (List.length tally.learned) ++ " questions correctly."
        , buttons =
            [ button [ class plainButton, onClick on.depart ] [ text "Start over" ]
            , button [ class plainButton, onClick on.leave ] [ text "All quizzes" ]
            ]
        }


viewStatus : Events msg -> { extra : Html msg, tally : Trip.Tally, heading : String, story : String, buttons : List (Html msg) } -> Html msg
viewStatus on { extra, tally, heading, story, buttons } =
    let
        box color textColor label value =
            div [ class ("rounded-2xl p-1 " ++ color) ]
                [ p [ class "py-1 text-center text-xs font-extrabold uppercase tracking-wide text-white" ] [ text label ]
                , p [ class ("rounded-xl bg-white py-3 text-center text-lg font-black tabular-nums sm:text-2xl " ++ textColor) ] [ text value ]
                ]

        topicRow topic =
            topicBar "bg-leaf"
                topic
                (List.length (List.filter (\card -> card.question.topic == topic) tally.learned))
                (List.length (List.filter (\question -> question.topic == topic) (List.concatMap Quiz.questions Quizzes.all)))
    in
    shell ""
        [ blueBar on.leave []
        , viewTripRoad (List.length tally.learned)
        , main_ [ class (container ++ " py-8") ]
            [ div [ class "mx-auto max-w-2xl text-center" ]
                [ div [ class "mx-auto grid size-20 place-items-center rounded-full bg-leaf text-white" ] [ Icon.trophy "size-11" ]
                , h1 [ class "mt-3 text-4xl font-black text-leaf" ] [ text heading ]
                , p [ class "mt-2 text-lg font-semibold text-mute" ]
                    [ text story ]
                , div [ class "mt-6 grid grid-cols-2 gap-3 sm:grid-cols-4" ]
                    [ box "bg-sun" "text-sun-dark" "Learned" (String.fromInt (List.length tally.learned))
                    , box "bg-plate" "text-plate" "Answers" (String.fromInt tally.answers)
                    , box "bg-leaf" "text-leaf-dark" "Best run" (String.fromInt tally.best)
                    , box "bg-road" "text-ink" "Time" (formatDuration tally.seconds)
                    ]
                , div [ class "mt-6 flex flex-wrap justify-center gap-3" ] buttons
                ]
            , section [ class ("mt-10 p-5 " ++ tile) ]
                [ h2 [ class "text-xl font-extrabold" ] [ text "Learned by topic" ]
                , ul [ class "mt-4 grid gap-x-8 gap-y-3 sm:grid-cols-2 lg:grid-cols-3" ] (List.map topicRow Quiz.topics)
                ]
            , extra
            ]
        ]
