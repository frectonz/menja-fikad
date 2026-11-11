module Trip exposing (Card, Tally, Tour(..), Trip, advance, answer, comeback, decoder, depart, encode, gear, lastStop, nextStop, redrive, stops, tick, total)

import Array exposing (Array)
import Json.Decode as D
import Json.Encode as E
import Quiz exposing (Question, Text)
import Quizzes
import Random


{-| A trip always has a question on the table; once nothing is left to ask
there is only the tally. A stop holds the trip that carries on after it.
-}
type Tour
    = Rolling Trip
    | Stopped Trip
    | Arrived Tally


type alias Trip =
    { card : Card
    , picked : Maybe Int
    , fresh : List Card
    , waiting : List Waiting
    , tally : Tally
    }


{-| `wins` counts right answers since the last miss.
-}
type alias Card =
    { id : Int
    , question : Question
    , misses : Int
    , wins : Int
    }


type alias Waiting =
    { card : Card
    , due : Int
    }


type alias Tally =
    { learned : List Card
    , answers : Int
    , streak : Int
    , best : Int
    , seconds : Int
    }


deck : Array Question
deck =
    Array.fromList (List.concatMap Quiz.questions Quizzes.all)


total : Int
total =
    Array.length deck


depart : Random.Generator Tour
depart =
    setOff [] (List.indexedMap (\id question -> Card id question 0 0) (Array.toList deck))


{-| A new trip over only the questions that were missed on the one just
finished; the rest stay learned.
-}
redrive : Tally -> Random.Generator Tour
redrive tally =
    let
        ( clean, missed ) =
            List.partition (\card -> card.misses == 0) tally.learned
    in
    setOff clean (List.map (\card -> { card | misses = 0, wins = 0 }) missed)


setOff : List Card -> List Card -> Random.Generator Tour
setOff learned cards =
    let
        tally =
            { learned = learned, answers = 0, streak = 0, best = 0, seconds = 0 }

        start order =
            case List.map Tuple.second (List.sortBy Tuple.first order) of
                card :: fresh ->
                    Rolling { card = card, picked = Nothing, fresh = fresh, waiting = [], tally = tally }

                [] ->
                    Arrived tally
    in
    Random.list (List.length cards) (Random.float 0 1)
        |> Random.map (\keys -> start (List.map2 Tuple.pair keys cards))


answer : Int -> Trip -> Trip
answer option trip =
    if trip.picked /= Nothing || option < 0 || option >= List.length (Quiz.options trip.card.question) then
        trip

    else
        let
            card =
                trip.card

            tally =
                trip.tally

            streak =
                if option == Quiz.correctIndex card.question then
                    tally.streak + 1

                else
                    0
        in
        { trip
            | picked = Just option
            , card =
                if streak > 0 then
                    { card | wins = card.wins + 1 }

                else
                    { card | misses = card.misses + 1, wins = 0 }
            , tally = { tally | answers = tally.answers + 1, streak = streak, best = max tally.best streak }
        }


{-| How many other questions go by before an answered card is asked again.
A missed card has to be answered right twice, the second time after a longer
gap, before it counts as learned.
-}
comeback : Card -> Maybe Int
comeback card =
    if card.misses == 0 || card.wins >= 2 then
        Nothing

    else if card.wins == 1 then
        Just 12

    else
        Just 4


advance : Trip -> Tour
advance trip =
    case roll trip of
        Rolling next ->
            if List.length next.tally.learned > List.length trip.tally.learned && List.any (\( at, _ ) -> at == List.length next.tally.learned) stops then
                Stopped next

            else
                Rolling next

        other ->
            other


roll : Trip -> Tour
roll trip =
    if trip.picked == Nothing then
        Rolling trip

    else
        let
            aged =
                List.map (\waiting -> { waiting | due = waiting.due - 1 }) trip.waiting
                    |> List.sortBy .due

            returning =
                case comeback trip.card of
                    Just gap ->
                        [ { card = trip.card, due = gap } ]

                    Nothing ->
                        []

            old =
                trip.tally

            tally =
                if List.isEmpty returning then
                    { old | learned = trip.card :: old.learned }

                else
                    old

            ask card fresh waiting =
                Rolling { card = card, picked = Nothing, fresh = fresh, waiting = waiting, tally = tally }
        in
        case ( aged, trip.fresh ) of
            ( soonest :: later, next :: fresh ) ->
                if soonest.due <= 0 then
                    ask soonest.card trip.fresh (later ++ returning)

                else
                    ask next fresh (aged ++ returning)

            ( soonest :: later, [] ) ->
                ask soonest.card [] (later ++ returning)

            ( [], next :: fresh ) ->
                ask next fresh returning

            ( [], [] ) ->
                case returning of
                    again :: _ ->
                        ask again.card [] []

                    [] ->
                        Arrived tally


tick : Trip -> Trip
tick trip =
    let
        tally =
            trip.tally
    in
    { trip | tally = { tally | seconds = tally.seconds + 1 } }


gear : Int -> Int
gear streak =
    1 + min 4 (streak // 4)


stops : List ( Int, Text )
stops =
    let
        towns =
            [ { am = "ቢሾፍቱ", en = "Bishoftu" }
            , { am = "ሞጆ", en = "Mojo" }
            , { am = "አዳማ", en = "Adama" }
            , { am = "መተሐራ", en = "Metehara" }
            , { am = "አዋሽ", en = "Awash" }
            , { am = "ሚኤሶ", en = "Mieso" }
            , { am = "ጭሮ", en = "Chiro" }
            , { am = "ድሬዳዋ", en = "Dire Dawa" }
            ]
    in
    List.indexedMap (\index town -> ( total * (index + 1) // List.length towns, town )) towns


nextStop : Int -> Maybe ( Int, Text )
nextStop learned =
    List.filter (\( at, _ ) -> at > learned) stops
        |> List.head
        |> Maybe.map (Tuple.mapFirst (\at -> at - learned))


lastStop : Int -> Text
lastStop learned =
    List.filter (\( at, _ ) -> at <= learned) stops
        |> List.foldl (\( _, town ) _ -> town) { am = "አዲስ አበባ", en = "Addis Ababa" }


encode : Tour -> E.Value
encode tour =
    let
        card extra { id, misses, wins } =
            E.list E.int ([ id, misses, wins ] ++ extra)

        stats tally =
            [ ( "learned", E.list (card []) tally.learned )
            , ( "answers", E.int tally.answers )
            , ( "streak", E.int tally.streak )
            , ( "best", E.int tally.best )
            , ( "seconds", E.int tally.seconds )
            ]

        rolling stopped trip =
            E.object <|
                [ ( "stopped", E.bool stopped )
                , ( "current"
                  , E.object
                        [ ( "card", card [] trip.card )
                        , ( "picked", Maybe.withDefault E.null (Maybe.map E.int trip.picked) )
                        ]
                  )
                , ( "fresh", E.list (card []) trip.fresh )
                , ( "waiting", E.list (\waiting -> card [ waiting.due ] waiting.card) trip.waiting )
                ]
                    ++ stats trip.tally
    in
    case tour of
        Rolling trip ->
            rolling False trip

        Stopped trip ->
            rolling True trip

        Arrived tally ->
            E.object (( "current", E.null ) :: stats tally)


decoder : D.Decoder Tour
decoder =
    let
        waiting ints =
            case ints of
                id :: misses :: wins :: rest ->
                    Array.get id deck
                        |> Maybe.map (\question -> { card = Card id question misses wins, due = Maybe.withDefault 0 (List.head rest) })

                _ ->
                    Nothing

        waitings =
            D.map (List.filterMap waiting) (D.list (D.list D.int))

        cards =
            D.map (List.map .card) waitings

        current =
            D.map2 Tuple.pair
                (D.field "card" (D.list D.int)
                    |> D.andThen (waiting >> Maybe.map (.card >> D.succeed) >> Maybe.withDefault (D.fail "unknown question"))
                )
                (D.field "picked" (D.nullable D.int))
    in
    D.field "current" (D.nullable current)
        |> D.andThen
            (\now ->
                let
                    tally =
                        D.map5 Tally
                            (D.field "learned" cards)
                            (D.field "answers" D.int)
                            (D.field "streak" D.int)
                            (D.field "best" D.int)
                            (D.field "seconds" D.int)
                in
                case now of
                    Just ( card, picked ) ->
                        D.map4
                            (\fresh waits stats stopped ->
                                if stopped == Just True then
                                    Stopped (Trip card picked fresh waits stats)

                                else
                                    Rolling (Trip card picked fresh waits stats)
                            )
                            (D.field "fresh" cards)
                            (D.field "waiting" waitings)
                            tally
                            (D.maybe (D.field "stopped" D.bool))

                    Nothing ->
                        D.map Arrived tally
            )
