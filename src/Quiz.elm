module Quiz exposing (Answer(..), Question, Quiz, Text, Topic(..), correctIndex, options, questions, topicLabel, topicTitle, topics)


type alias Text =
    { am : String
    , en : String
    }


type alias Quiz =
    { id : String
    , title : Text
    , minutes : Int
    , first : Question
    , rest : List Question
    }


type alias Question =
    { topic : Topic
    , prompt : Text
    , figure : Maybe String
    , answer : Answer
    , explanation : String
    }


{-| Options keep the book's order because some of them refer to others by letter.
-}
type Answer
    = TrueFalse Bool
    | Choice { before : List Text, correct : Text, after : List Text }


type Topic
    = RoadSigns
    | RoadMarkings
    | TrafficRules
    | TrafficLights
    | Parking
    | Speed
    | SafeDriving
    | Vehicle
    | DriverBehavior
    | FirstAid
    | FireSafety


questions : Quiz -> List Question
questions quiz =
    quiz.first :: quiz.rest


options : Question -> List Text
options question =
    case question.answer of
        TrueFalse _ ->
            [ { am = "እውነት", en = "True" }, { am = "ሀሰት", en = "False" } ]

        Choice choice ->
            choice.before ++ choice.correct :: choice.after


correctIndex : Question -> Int
correctIndex question =
    case question.answer of
        TrueFalse True ->
            0

        TrueFalse False ->
            1

        Choice choice ->
            List.length choice.before


topics : List Topic
topics =
    [ RoadSigns
    , RoadMarkings
    , TrafficRules
    , TrafficLights
    , Parking
    , Speed
    , SafeDriving
    , Vehicle
    , DriverBehavior
    , FirstAid
    , FireSafety
    ]


topicLabel : Topic -> String
topicLabel topic =
    (topicTitle topic).en


topicTitle : Topic -> Text
topicTitle topic =
    case topic of
        RoadSigns ->
            { am = "የመንገድ ምልክቶች", en = "Road signs" }

        RoadMarkings ->
            { am = "የመንገድ መስመሮች", en = "Road markings" }

        TrafficRules ->
            { am = "የትራፊክ ህጎች", en = "Traffic rules" }

        TrafficLights ->
            { am = "የትራፊክ መብራት", en = "Traffic lights" }

        Parking ->
            { am = "ተሽከርካሪ ማቆም", en = "Parking" }

        Speed ->
            { am = "የፍጥነት ወሰን", en = "Speed" }

        SafeDriving ->
            { am = "በጥንቃቄ ማሽከርከር", en = "Safe driving" }

        Vehicle ->
            { am = "ተሽከርካሪ", en = "Vehicle" }

        DriverBehavior ->
            { am = "የአሽከርካሪ ባህሪ", en = "Driver behaviour" }

        FirstAid ->
            { am = "የመጀመሪያ እርዳታ", en = "First aid" }

        FireSafety ->
            { am = "የእሳት መከላከል", en = "Fire safety" }
