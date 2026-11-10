module Zipper exposing (Zipper, create, goTo, length, mapFocus, position, toList)


type alias Zipper a =
    { before : List a
    , focus : a
    , after : List a
    }


create : a -> List a -> Zipper a
create first rest =
    { before = [], focus = first, after = rest }


toList : Zipper a -> List a
toList zipper =
    zipper.before ++ zipper.focus :: zipper.after


position : Zipper a -> Int
position zipper =
    List.length zipper.before


length : Zipper a -> Int
length zipper =
    List.length (toList zipper)


goTo : Int -> Zipper a -> Zipper a
goTo index zipper =
    let
        all =
            toList zipper
    in
    case List.drop (max 0 index) all of
        focus :: after ->
            { before = List.take (max 0 index) all, focus = focus, after = after }

        [] ->
            zipper


mapFocus : (a -> a) -> Zipper a -> Zipper a
mapFocus fn zipper =
    { zipper | focus = fn zipper.focus }
