module Icon exposing (check, checkCircle, chevronDown, clock, cross, target, topic, trophy)

import Html exposing (Html)
import Quiz exposing (Topic(..))
import Svg exposing (Svg, circle, path, rect, svg)
import Svg.Attributes as A


icon : List (Svg msg) -> String -> Html msg
icon shapes classes =
    svg
        [ A.viewBox "0 0 24 24"
        , A.class ("shrink-0 " ++ classes)
        , A.fill "none"
        , A.stroke "currentColor"
        , A.strokeWidth "2.25"
        , A.strokeLinecap "round"
        , A.strokeLinejoin "round"
        ]
        shapes


line : String -> Svg msg
line d =
    path [ A.d d ] []


ring : Float -> Float -> Float -> Svg msg
ring x y r =
    circle [ A.cx (String.fromFloat x), A.cy (String.fromFloat y), A.r (String.fromFloat r) ] []


dot : Float -> Float -> Float -> Svg msg
dot x y r =
    circle [ A.cx (String.fromFloat x), A.cy (String.fromFloat y), A.r (String.fromFloat r), A.fill "currentColor", A.stroke "none" ] []


box : Float -> Float -> Float -> Float -> Float -> Svg msg
box x y w h radius =
    rect
        [ A.x (String.fromFloat x)
        , A.y (String.fromFloat y)
        , A.width (String.fromFloat w)
        , A.height (String.fromFloat h)
        , A.rx (String.fromFloat radius)
        ]
        []


check : String -> Html msg
check =
    icon [ line "M4.5 12.5l5 5L19.5 7" ]


cross : String -> Html msg
cross =
    icon [ line "M6 6l12 12M18 6L6 18" ]


chevronDown : String -> Html msg
chevronDown =
    icon [ line "M6 9l6 6 6-6" ]


clock : String -> Html msg
clock =
    icon [ ring 12 12 9, line "M12 7v5l3.5 2" ]


target : String -> Html msg
target =
    icon [ ring 12 12 9, ring 12 12 5, dot 12 12 1.5 ]


checkCircle : String -> Html msg
checkCircle =
    icon [ ring 12 12 9, line "M8 12.5l3 3 5-6" ]


trophy : String -> Html msg
trophy =
    icon
        [ line "M8 4h8v5a4 4 0 0 1-8 0z"
        , line "M8 5.5H5A3 3 0 0 0 8 9M16 5.5h3A3 3 0 0 1 16 9"
        , line "M12 13v4M8 20h8M10 17h4"
        ]


topic : Topic -> String -> Html msg
topic which =
    icon <|
        case which of
            RoadSigns ->
                [ line "M12 3.5L21.5 20h-19z", line "M12 10v4", dot 12 17 1.1 ]

            RoadMarkings ->
                [ line "M8.5 3L4 21M15.5 3L20 21", line "M12 4v3M12 10.5v3M12 17v3" ]

            TrafficRules ->
                [ box 5 3 14 18 2, line "M9 3v18M12.5 8h3M12.5 12h3" ]

            TrafficLights ->
                [ box 8 2 8 20 3, dot 12 7 1.5, dot 12 12 1.5, dot 12 17 1.5 ]

            Parking ->
                [ box 3 3 18 18 3, line "M9.5 17V7H13a3 3 0 0 1 0 6H9.5" ]

            Speed ->
                [ line "M4 18a8 8 0 1 1 16 0", line "M12 18l4-6.5" ]

            SafeDriving ->
                [ line "M12 3l8 3v6c0 5-3.5 8-8 9-4.5-1-8-4-8-9V6z", line "M9 12l2.2 2.2L15 10" ]

            Vehicle ->
                [ line "M3 13l2-5a2 2 0 0 1 1.9-1.4h10.2A2 2 0 0 1 19 8l2 5v5H3z", line "M3 13h18", dot 7.5 15.6 1.1, dot 16.5 15.6 1.1 ]

            DriverBehavior ->
                [ ring 12 8 4, line "M4 21a8 8 0 0 1 16 0" ]

            FirstAid ->
                [ box 3 6 18 15 2, line "M9 6V3.5h6V6", line "M12 10v7M8.5 13.5h7" ]

            Safety ->
                [ line "M8.5 3h7L21 8.5v7L15.5 21h-7L3 15.5v-7z", line "M12 8v5", dot 12 16.5 1.1 ]
