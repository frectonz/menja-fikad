module Ui exposing (blueBar, blueButton, buttonBase, container, formatDuration, greenButton, percent, plainButton, redButton, shell, thickBar, tile, topicBar, viewPrompt, viewRoad, viewVerdict)

import Html exposing (Html, button, div, h2, header, img, li, p, section, span, text)
import Html.Attributes exposing (alt, class, classList, disabled, src, style, title)
import Html.Events exposing (onClick)
import Icon
import Quiz exposing (Question, Text, Topic)


shell : String -> List (Html msg) -> Html msg
shell extra children =
    div [ class ("flex min-h-dvh flex-col bg-ground text-ink " ++ extra) ] children


blueBar : msg -> List (Html msg) -> Html msg
blueBar leave extras =
    header [ class "sticky top-0 z-10 bg-plate text-white" ]
        [ div [ class (container ++ " flex items-center justify-between gap-4 py-2.5") ]
            (button
                [ class "cursor-pointer whitespace-nowrap rounded-lg border-2 border-white px-3 py-0.5 text-xl font-black hover:bg-white hover:text-plate"
                , onClick leave
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


percent : Int -> Int -> Int
percent part total =
    if total == 0 then
        0

    else
        part * 100 // total


formatDuration : Int -> String
formatDuration seconds =
    if seconds >= 3600 then
        String.fromInt (seconds // 3600) ++ "h " ++ String.fromInt (modBy 60 (seconds // 60)) ++ "m"

    else if seconds >= 60 then
        String.fromInt (seconds // 60) ++ "m " ++ String.fromInt (modBy 60 seconds) ++ "s"

    else
        String.fromInt seconds ++ "s"


viewRoad : List ( Int, String ) -> Int -> Maybe Int -> Html msg
viewRoad towns you clockAt =
    div [ class "relative h-5 bg-road" ]
        [ div [ class "absolute inset-y-0 left-0 bg-white/25", style "width" (String.fromInt you ++ "%") ] []
        , div [ class "road-dashes absolute inset-0" ] []
        , div []
            (List.map
                (\( at, name ) ->
                    div
                        [ class "absolute top-1/2 size-2.5 -translate-x-1/2 -translate-y-1/2 rotate-45 bg-sun"
                        , style "left" (String.fromInt at ++ "%")
                        , title name
                        ]
                        []
                )
                towns
            )
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


viewPrompt : (Int -> msg) -> String -> Question -> Maybe Int -> Bool -> Html msg
viewPrompt pick label question picked revealed =
    let
        answers =
            div [ class "grid content-start gap-2" ]
                (List.indexedMap (viewOption pick question picked revealed) (Quiz.options question))
    in
    section [ class "rounded-2xl border-2 border-edge bg-white p-4 sm:p-6 lg:min-h-0 lg:overflow-y-auto" ]
        [ div []
            [ p [ class "flex flex-wrap items-center gap-x-4 gap-y-1 text-sm font-bold text-mute" ]
                [ text label
                , span [ class "inline-flex items-center gap-1.5" ] [ Icon.topic question.topic "size-4", text (Quiz.topicLabel question.topic) ]
                ]
            , h2 [ class "mt-2 text-2xl font-extrabold leading-snug" ] [ text question.prompt.am ]
            , p [ class "mt-1 text-mute" ] [ text question.prompt.en ]
            , case question.figure of
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


viewOption : (Int -> msg) -> Question -> Maybe Int -> Bool -> Int -> Text -> Html msg
viewOption pick question picked revealed index option =
    let
        isAnswer =
            revealed && index == Quiz.correctIndex question

        isWrongPick =
            revealed && picked == Just index && not isAnswer

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
        , onClick (pick index)
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


viewVerdict : Question -> Maybe Int -> String -> List (Html msg) -> Html msg
viewVerdict question picked note buttons =
    let
        correct =
            picked == Just (Quiz.correctIndex question)
    in
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

                         else if picked == Nothing then
                            "Not answered. The answer is " ++ optionKey (Quiz.correctIndex question)

                         else
                            "ስህተት! The answer is " ++ optionKey (Quiz.correctIndex question)
                        )
                    ]
                , p [ class "mt-0.5 max-w-prose text-sm font-semibold leading-snug sm:text-base" ] [ text question.explanation ]
                , if note == "" then
                    text ""

                  else
                    p [ class "mt-1 text-sm font-extrabold" ] [ text note ]
                ]
            , div [ class "flex shrink-0 gap-2" ] buttons
            ]
        ]


topicBar : String -> Topic -> Int -> Int -> Html msg
topicBar color topic right count =
    li []
        [ p [ class "flex justify-between font-bold" ]
            [ span [ class "flex items-center gap-2" ] [ Icon.topic topic "size-5 text-plate", text (Quiz.topicLabel topic) ]
            , span [ class "tabular-nums text-mute" ] [ text (String.fromInt right ++ " of " ++ String.fromInt count) ]
            ]
        , div [ class "mt-1" ]
            [ thickBar color (percent right count) ]
        ]
