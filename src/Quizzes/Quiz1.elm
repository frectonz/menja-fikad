module Quizzes.Quiz1 exposing (quiz)

import Quiz exposing (Answer(..), Quiz, Topic(..))


quiz : Quiz
quiz =
    { id = "quiz-1"
    , title = { am = "ፈተና 1", en = "Quiz 1" }
    , minutes = 100
    , first =
        { topic = RoadSigns
        , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
        , figure = Just "/signs/speed-limit-50.svg"
        , answer =
            Choice
                { before =
                    [ { am = "በሰዓት ከ50 ኪ.ሜ በታች ማሽከርከር የተከለከለ ነው", en = "Driving below 50 km/h is prohibited" }
                    ]
                , correct = { am = "በሰዓት ከ50 ኪ.ሜ በላይ ማሽከርከር የተከለከለ ነው", en = "Driving above 50 km/h is prohibited" }
                , after =
                    [ { am = "ምልክቱ ከሚያሳየው ክብደት በላይ ጭኖ ማሽከርከር የተከለከለ ነው", en = "Carrying more than the weight shown is prohibited" }
                    , { am = "ሁሉም", en = "All" }
                    , { am = "«ሀ» እና «መ» መልስ ናቸው", en = "ሀ and መ are correct" }
                    ]
                }
        , explanation = "A number inside a red ring is a maximum speed limit. You may not drive faster than 50 km/h here."
        }
    , rest =
        [ { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/domestic-animals.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የዱር እንስሳት መገኛ መንገድ ስለሆነ በጥንቃቄ አሽከርክር", en = "Wild animal area, drive carefully" }
                        , { am = "በእንስሳት ጀርባ ለሚጓዝ ተሽከርካሪ የተከለከለ ነው", en = "Prohibited for animal-ridden transport" }
                        , { am = "ለእንስሳት ማለፍ የተከለከለ ነው", en = "Animals are prohibited" }
                        , { am = "ለእንስሳት የተፈቀደ", en = "Permitted for animals" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                    , after = []
                    }
          , explanation = "A red triangle with a cow warns of domestic animals on the road. None of the options says that (the first one talks about wild animals), so \"answer not given\" is correct."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/keep-left.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ወደግራ ማለፍ የተከለከለ ነው", en = "Passing on the left is prohibited" }
                        , { am = "ወደግራ ብቻ ታጠፍ", en = "Turn left only" }
                        ]
                    , correct = { am = "ግራህን ይዘህ እለፍ", en = "Keep left and pass" }
                    , after =
                        [ { am = "ወደቀኝና ወደግራ የሚያስኬድ መንገድ", en = "Road leading right and left" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Blue circles are mandatory signs. The arrow pointing down and to the left orders you to pass the obstacle on its left side."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/give-way.svg"
          , answer =
                Choice
                    { before = []
                    , correct = { am = "በመገናኛ መንገድ ላይ ለተላላፊ ቅድሚያ ስጥ", en = "Give way to traffic at the junction" }
                    , after =
                        [ { am = "ቅድሚያ አለህ", en = "You have priority" }
                        , { am = "ማለፍ የተከለከለ ነው", en = "Passing prohibited" }
                        , { am = "ቆመህ ቅድሚያ ስጥ", en = "Stop and give way" }
                        , { am = "«ሀ» እና «መ» መልስ ናቸው", en = "ሀ and መ are correct" }
                        ]
                    }
          , explanation = "The inverted triangle means give way. Slow down and let traffic on the road you are joining go first. A compulsory stop is shown by the octagonal STOP sign instead."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/minimum-distance-70m.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "መቅደም የተፈቀደ ስለሆነ ተጠንቅቀህ አሽከርክር", en = "Overtaking allowed, drive carefully" }
                        , { am = "ስፋቱ ከተጠቀሰው በላይ ለሆነ ተሽከርካሪ ማለፍ የተከለከለ ነው", en = "Vehicles wider than stated are prohibited" }
                        , { am = "ተከታትሎ ማሽከርከር የተከለከለ ነው", en = "Driving one after another is prohibited" }
                        ]
                    , correct = { am = "ከተጠቀሰው ሜትር ባነሰ ርቀት ተከትሎ ማሽከርከር የተከለከለ ነው", en = "Following closer than the stated distance is prohibited" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "This sign sets a minimum following distance. You may not follow the vehicle ahead any closer than the distance shown (70 m)."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/pedestrian-crossing.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ብዙ ሰዎች የሚበዙበት አካባቢ ስለሆነ ተጠንቅቀህ አሽከርክር", en = "Crowded area, drive carefully" }
                        , { am = "ለእግረኞች ማለፍ የተከለከለ ነው", en = "Pedestrians prohibited" }
                        ]
                    , correct = { am = "የእግረኛ ማቋረጫ መስመር ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Pedestrian crossing ahead, drive carefully" }
                    , after =
                        [ { am = "ለተማሪዎች ብቻ", en = "Students only" }
                        , { am = "«ሀ» እና «መ» መልስ ናቸው", en = "ሀ and መ are correct" }
                        ]
                    }
          , explanation = "A red triangle is a warning. The figure walking on stripes warns that a pedestrian crossing is ahead."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/no-straight-ahead.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ከፊት ለፊት ቅድሚያ ስጥ", en = "Give way ahead" }
                        , { am = "ወደፊት ለፊት ብቻ እለፍ", en = "Straight ahead only" }
                        ]
                    , correct = { am = "ወደፊት ለፊት አቅጣጫ ማለፍ የተከለከለ ነው", en = "Going straight ahead is prohibited" }
                    , after =
                        [ { am = "ወደፊት መንገድ አለ", en = "There is a road ahead" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "A red ring with a slash through an arrow prohibits that movement. Here the arrow points up, so driving straight ahead is prohibited."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/roundabout.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ወደ አደባባይ በፍጥነት አሽከርክር", en = "Drive fast into the roundabout" }
                        ]
                    , correct = { am = "ወደ አደባባይ እየተጠጋህ ስለሆነ ተጠንቅቀህ አሽከርክር", en = "Approaching a roundabout, drive carefully" }
                    , after =
                        [ { am = "በአደባባይ ውስጥ ማሽከርከር የተከለከለ ነው", en = "Driving in the roundabout is prohibited" }
                        , { am = "በስተቀኝ ለገባ ቅድሚያ በመስጠት ተጠንቅቀህ አሽከርክር", en = "Give way to vehicles entering from the right" }
                        , { am = "ከ «ሐ» በስተቀር ሁሉም መልስ ናቸው", en = "All except ሐ" }
                        ]
                    }
          , explanation = "The circulating arrows in a warning triangle tell you a roundabout is ahead. Slow down and be ready to give way."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/no-u-turn.svg"
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ወደቀኝ ዞሮ መመለስ የተከለከለ ነው", en = "U-turn to the right is prohibited" }
                    , after =
                        [ { am = "ወደግራ ዞሮ መመለስ የተከለከለ ነው", en = "U-turn to the left is prohibited" }
                        , { am = "ወደቀኝ ብቻ ሂድ", en = "Go right only" }
                        , { am = "ወደቀኝ መታጠፍ ክልክል ነው", en = "Turning right is prohibited" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "The slashed U-shaped arrow prohibits turning back. The arrow bends round to the right, so it is the U-turn to the right that is prohibited."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/two-way-traffic.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ባለ አንድ አቅጣጫ መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "One-way road ahead, drive carefully" }
                        ]
                    , correct = { am = "ባለ አንድ አቅጣጫ የነበረው መንገድ ለጊዜው ወደሁለት አቅጣጫ ስለተቀየረ ተጠንቅቀህ አሽከርክር", en = "One-way road temporarily becomes two-way, drive carefully" }
                    , after =
                        [ { am = "ቀስቱ በሚያመለክተው አቅጣጫ ተጠንቅቀህ አሽከርክር", en = "Drive carefully in the arrows' direction" }
                        , { am = "ከፊት ለፊት ለሚመጣ ተሽከርካሪ ቅድሚያ ሳይሰጡ ማሽከርከር አይፈቀድም", en = "You must give way to oncoming traffic" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "Two opposing arrows warn of two-way traffic, used where a one-way road becomes two-way so drivers expect oncoming vehicles."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/straight-or-right.svg"
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ወደፊት ወይም ወደቀኝ ብቻ እለፍ", en = "Straight ahead or right only" }
                    , after =
                        [ { am = "ወደቀኝ እና ወደግራ ብቻ እለፍ", en = "Right and left only" }
                        , { am = "ወደፊትና ወደቀኝ ማለፍ የተከለከለ ነው", en = "Straight and right are prohibited" }
                        , { am = "ወደፊት ብቻ እለፍ", en = "Straight ahead only" }
                        , { am = "ሁሉም መልስ ናቸው", en = "All are correct" }
                        ]
                    }
          , explanation = "Blue circles are mandatory. You may only go straight ahead or right, the directions the arrows show."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/end-minimum-speed-30.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "በሰዓት የተሰጠ ዝቅተኛ የፍጥነት ገደብ", en = "Minimum speed limit" }
                        , { am = "በመንገዱ በሰዓት ከ30 ኪ.ሜ. በታች አሽከርክር", en = "Drive below 30 km/h" }
                        , { am = "ለመንገዱ የተፈቀደ ከፍተኛ የፍጥነት ወሰን", en = "Maximum speed limit for the road" }
                        ]
                    , correct = { am = "በሰዓት የተሰጠ ዝቅተኛ የፍጥነት ወሰን መጨረሻ ትዕዛዝ", en = "End of minimum speed limit" }
                    , after =
                        [ { am = "«ሐ» እና «መ» መልስ ናቸው", en = "ሐ and መ are correct" }
                        ]
                    }
          , explanation = "A number on a blue circle is a minimum speed. The red slash cancels it, so this marks the end of the 30 km/h minimum speed."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/road-narrows-left.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "አደገኛ መንገድ ስለሆነ በጥንቃቄ አሽከርክር", en = "Dangerous road, drive carefully" }
                        , { am = "በስተቀኝ እየጠበበ የሚሄድ መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Road narrows on the right ahead" }
                        , { am = "በሁለቱም አቅጣጫ እየጠበበ የሚሄድ መንገድ", en = "Road narrows on both sides" }
                        , { am = "መሻለኪያ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Passing place ahead" }
                        ]
                    , correct = { am = "በስተግራ እየጠበበ የሚሄድ መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Road narrows on the left ahead" }
                    , after = []
                    }
          , explanation = "The drawing shows the left edge of the road moving inward, so the road narrows on the left side ahead."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/no-parking.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለተሽከርካሪ ማለፍ የተከለከለ ነው", en = "Vehicles prohibited" }
                        , { am = "ለረዥም ጊዜ ማቆም የተከለከለ ነው", en = "Long-term parking prohibited" }
                        , { am = "ለማቆም የተፈቀደ", en = "Parking permitted" }
                        ]
                    , correct = { am = "ለአጭር ጊዜ ማቆም አይፈቀድም", en = "Stopping even briefly is not allowed" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "According to the answer key, this red-ring sign with a diagonal bar means stopping is not allowed, even for a short time."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/no-heavy-vehicles.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ጭነት መጫን የተከለከለ ነው", en = "Loading cargo prohibited" }
                        ]
                    , correct = { am = "ለከባድ ተሽከርካሪዎች ማለፍ የተከለከለ ነው", en = "Heavy vehicles prohibited" }
                    , after =
                        [ { am = "ለከባድ ተሽከርካሪዎች ብቻ ማለፍ ይቻላል", en = "Heavy vehicles only" }
                        , { am = "ለከባድ ተሽከርካሪዎች ማቆም የተከለከለ ነው", en = "Heavy vehicle parking prohibited" }
                        , { am = "«ለ» እና «መ» መልስ ናቸው", en = "ለ and መ are correct" }
                        ]
                    }
          , explanation = "A vehicle pictured inside a red ring is banned from the road. The truck means heavy goods vehicles may not pass."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/road-forks.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "መስቀለኛ መንገድ ስለሚያጋጥምህ በጥንቃቄ አሽከርክር", en = "Crossroads ahead, drive carefully" }
                        , { am = "የመገናኛ መንገድ መኖሩን መረጃ ይሰጣል", en = "Informs of a junction" }
                        ]
                    , correct = { am = "ወደግራና ወደቀኝ ብቻ የሚታጠፍ መንገድ መኖሩን ያስጠነቅቃል", en = "Warns of a road splitting left and right only" }
                    , after =
                        [ { am = "ወደግራና ወደቀኝ ማሽከርከር የተከለከለ ነው", en = "Left and right prohibited" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "The Y shape in a red triangle warns that the road ahead splits to the left and to the right, with no way straight on."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/side-road-right.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ወደ መስቀለኛ መንገድ እየተጠጋህ ስለሆነ ተጠንቅቀህ አሽከርክር", en = "Approaching crossroads, drive carefully" }
                        ]
                    , correct = { am = "ወደቀኝና ወደፊት የሚያስኬድ መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Road leading right and straight ahead" }
                    , after =
                        [ { am = "ወደግራና ወደፊት የሚያስኬድ መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Road leading left and straight ahead" }
                        , { am = "ወደ ትራፊክ ማስተላለፊያ መብራት እየተጠጋህ ስለሆነ ተጠንቅቀህ አሽከርክር", en = "Approaching traffic lights" }
                        , { am = "«ሀ» እና «መ» መልስ ናቸው", en = "ሀ and መ are correct" }
                        ]
                    }
          , explanation = "The thick vertical line is your road and the short branch is a side road joining from the right. The road ahead leads straight on and to the right."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/level-crossing-barrier.svg"
          , answer =
                Choice
                    { before = []
                    , correct = { am = "መዝጊያ ያለው የባቡር ሀዲድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Railway crossing with barrier ahead" }
                    , after =
                        [ { am = "ተካፋች ድልድይ ስለሚያጋጥም ተጠንቅቀህ አሽከርክር", en = "Opening bridge ahead" }
                        , { am = "የመንገድ አጥር ጥግ ስለሆነ ተጠንቅቀህ አሽከርክር", en = "Road fence edge" }
                        , { am = "የተከለከለ መንገድ", en = "Prohibited road" }
                        , { am = "«ሀ» እና «መ» መልስ ናቸው", en = "ሀ and መ are correct" }
                        ]
                    }
          , explanation = "The gate symbol warns of a railway level crossing protected by a barrier. Be ready to stop when the barrier is down."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/falling-rocks.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "አደገኛ መንገድ ስለሚያጋጥምህ በጥንቃቄ አሽከርክር", en = "Dangerous road ahead" }
                        , { am = "የሚፈናጠር ጠጠር ስለሚያጋጥምህ በጥንቃቄ አሽከርክር", en = "Loose flying gravel ahead" }
                        ]
                    , correct = { am = "አደገኛ ናዳ ስለሚያጋጥምህ በጥንቃቄ አሽከርክር", en = "Dangerous rockfall ahead" }
                    , after =
                        [ { am = "የሚያንሸራትት መንገድ ስለሚያጋጥምህ በጥንቃቄ አሽከርክር", en = "Slippery road ahead" }
                        , { am = "ሁሉም መልስ ናቸው", en = "All are correct" }
                        ]
                    }
          , explanation = "Rocks tumbling from a slope warn of a danger of falling rocks (landslide) on the road ahead."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/priority-road.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ቅድሚያ ስጥ", en = "Give way" }
                        ]
                    , correct = { am = "ቅድሚያ አለህ", en = "You have priority" }
                    , after =
                        [ { am = "ለተላላፊ ቅድሚያ በመስጠት ተጠንቅቀህ አሽከርክር", en = "Give way to passing traffic" }
                        , { am = "ቆመህ ቅድሚያ ስጥ", en = "Stop and give way" }
                        , { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                        ]
                    }
          , explanation = "The yellow diamond marks a priority road. You have priority over traffic joining from side roads."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትክክለኛ ትእዛዝ የሆነው፤", en = "What is the correct meaning of this sign?" }
          , figure = Just "/signs/steep-descent.svg"
          , answer =
                Choice
                    { before = []
                    , correct = { am = "አደገኛ ቁልቁለት ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Dangerous steep descent ahead" }
                    , after =
                        [ { am = "አደገኛ ዳገት ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Dangerous climb ahead" }
                        , { am = "አደገኛ ኮረብታ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Dangerous hill ahead" }
                        , { am = "አንሸራታች መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Slippery road ahead" }
                        , { am = "«ሀ» እና «መ» መልስ ናቸው", en = "ሀ and መ are correct" }
                        ]
                    }
          , explanation = "The descending wedge with a percentage warns of a dangerous steep downhill. Slow down and select a low gear."
          }
        , { topic = RoadSigns
          , prompt = { am = "የሚቆጣጠሩ የመንገድ ዳር ምልክቶች ዋንኛ ጠቀሜታ ለአሽከርካሪዎች ቅድመ መረጃን በመስጠት እንዲጠነቀቁ ማስቻል ነው።", en = "The main purpose of regulatory signs is to give drivers advance warning so they can take care." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Giving advance warning so drivers take care is the job of warning signs. Regulatory signs give orders. They prohibit, oblige or assign priority."
          }
        , { topic = FirstAid
          , prompt = { am = "በአሲድ የተጎዳ አካል ሲያጋጥም ብዙ ቀዝቃዛ ውሃ የተጎዳው አካል ላይ ማፍሰስ ይመከራል።", en = "For an acid burn, pouring plenty of cold water on the area is recommended." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Flooding an acid burn with plenty of cold water dilutes the chemical and washes it off the skin."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ የቴክኒክ ብቃት ማነስ ለአየር ብክለት መንስኤ ይሆናል።", en = "Poor technical condition of a vehicle causes air pollution." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A poorly maintained vehicle burns fuel incompletely and emits more smoke and harmful gases."
          }
        , { topic = TrafficRules
          , prompt = { am = "ሁለት ተሽከርካሪዎች ከአንድ ዓይነት መስመር ወደመስቀለኛ መንገድ ላይ ሲደርሱ፤ ቅድሚያ የሚያገኘው በቀኝ በኩል ያለው ተሽከርካሪ ነው።", en = "When two vehicles from equal roads reach an intersection, the vehicle on the right has priority." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "At an intersection of equal roads with no signs or signals, the vehicle coming from the right has priority."
          }
        , { topic = TrafficLights
          , prompt = { am = "ቢጫ የትራፊክ ማስተላለፊያ መብራት ብልጭ ጥፍት እያለ ሲበራ የደረሰ አሽከርካሪ ቆሞ ቀጣዩን ትዕዛዝ የመጠበቅ ግዴታ አለበት።", en = "At a flashing yellow light, the driver must stop and wait for the next signal." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A flashing yellow light means proceed with caution. There is no obligation to stop and wait for another signal."
          }
        , { topic = Parking
          , prompt = { am = "መንገዱ ባለ አንድ አቅጣጫ ካልሆነ በስተቀር በስተግራ በኩል ማቆም የተከለከለ ነው።", en = "Parking on the left side is prohibited unless the road is one-way." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "You park on the right, in the direction of travel. Parking on the left is only allowed on a one-way road."
          }
        , { topic = Parking
          , prompt = { am = "የተበላሸን ተሽከርካሪ በከተማ ውስጥ ከ48 ሰዓት በላይ ማቆም የተከለከለ ነው።", en = "A broken-down vehicle may not be left parked in a city for more than 48 hours." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false, so 48 hours is not the limit. The limit it gives for a broken-down large truck in a city is 2 hours."
          }
        , { topic = Parking
          , prompt = { am = "በአንድ ነጠላ መንገድ መንገዱ በነጭ ቀለም በተከፋፈለበት ስፍራ ተሽከርካሪን ማቆም የተከለከለ ነው።", en = "On a single road divided by white painted lines, parking is prohibited." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Where a single carriageway is divided by a painted white line, a parked vehicle forces others across the line, so parking there is prohibited."
          }
        , { topic = Parking
          , prompt = { am = "ከመንገድ ዳር ወይም ጠርዝ ተሽከርካሪን ለማቆም መራቅ ያለብን 40 ሳ.ሜ መሆን አለበት።", en = "When parking, the distance from the roadside or curb must be 40 cm." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "When you park, the vehicle must be close to the kerb or road edge. The distance taught is 40 cm."
          }
        , { topic = Parking
          , prompt = { am = "በእሳት አደጋ መከላከያ መ/ቤት መግቢያና መውጫ በ20ሜ ክልል ተሽከርካሪን ማቆም የተከለከለ ነው።", en = "Parking within 20 m of a fire station's entrance and exit is prohibited." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The no-parking distance around a fire station entrance or exit is 12 m, not 20 m."
          }
        , { topic = RoadSigns
          , prompt = { am = "———— የዓለም አቀፍ የመንገድ ዳር ምልክቶች የመንገዶችን ዘላቂ መሆንና አለመሆን የሚያሳውቁን ናቸው።", en = "———— international road signs tell us whether roads continue or not." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሚያስጠነቅቁ", en = "Warning" }
                        , { am = "የሚቆጣጠሩ", en = "Regulatory" }
                        , { am = "የሚያስገድዱ", en = "Mandatory" }
                        , { am = "መረጃ ሠጪ", en = "Informative" }
                        ]
                    , correct = { am = "አቅጣጫ አመልካች", en = "Direction indicators" }
                    , after = []
                    }
          , explanation = "Direction signs show where roads lead and whether they continue, for example a no-through road."
          }
        , { topic = RoadMarkings
          , prompt = { am = "በመንገድ ትይዩ የሚሰመሩ መስመሮች ግልጋሎት ለተሽከርካሪዎች ብቻ ነው።", en = "Lines painted along the road are for vehicles only." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Lines painted along the road guide and separate vehicles. Pedestrians are served by lines painted across the road, such as crossings."
          }
        , { topic = SafeDriving
          , prompt = { am = "ከሌሎች ተሽከርካሪዎች ባነሰ ፍጥነት ማሽከርከር ለአደጋ መንስኤ ሊሆን ይችላል።", en = "Driving much slower than other vehicles can cause accidents." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A vehicle moving much slower than the traffic around it forces others to brake and overtake, which leads to collisions."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪን ወንበር አስተካክሎ የመቀመጥ ጠቀሜታ፤", en = "The benefit of adjusting the seat properly:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሞተር አጋዥ ክፍሎችን ለመጠቀም ያመቻል", en = "Makes auxiliary engine parts easier to use" }
                        ]
                    , correct = { am = "የመቆጣጠሪያ መሣሪያዎችን ለመጠቀም አመቺ ስለሆነ ነው", en = "Makes the controls easy to use" }
                    , after =
                        [ { am = "የኃይል አስተላላፊ ክፍሎችን ለመጠቀም አመቺ ስለሚሆን ነው", en = "Makes power transmission parts easy to use" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Sitting correctly lets you reach and operate the controls (steering wheel, pedals, gear lever) comfortably and see the road well."
          }
        , { topic = TrafficRules
          , prompt = { am = "በንብረት ላይ የደረሰ አደጋ ሪፖርት መደረግ ያለበት አደጋው በደረሰ 48 ሰዓት ባልሞላ ጊዜ ነው።", en = "A property damage accident must be reported within 48 hours." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false, so 48 hours is not the reporting deadline for a property damage accident."
          }
        , { topic = SafeDriving
          , prompt = { am = "በዝናባማ የአየር ፀባይ የሚያሽከረክር አሽከርካሪ አጭር የግምባር መብራት ማብራት አለበት።", en = "In rainy weather, the driver must turn on dipped headlights." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this statement false."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ዘይትን ትክክለኛ መጠን ለማወቅ የተሽከርካሪ አቋቋም ተፅዕኖ ሊፈጥር አይችልም።", en = "How the vehicle is parked can't affect checking the engine oil level." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Oil must be checked with the vehicle on level ground. On a slope the dipstick gives a wrong reading."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪን ከአቅም በላይ መጫን የመቆጣጠሪያ መሣሪያዎች ላይ ተፅእኖ ይፈጥራል።", en = "Overloading a vehicle affects its controls." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Overloading makes braking distances longer and makes steering and suspension respond poorly."
          }
        , { topic = Vehicle
          , prompt = { am = "የእጅ ፍሬን ሙሉ ለሙሉ ሳይለቁ ማሽከርከር የፍሬሲዮን ሸራ እንዲቃጠል ያደርጋል።", en = "Driving without fully releasing the handbrake burns the brake lining." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "With the handbrake partly on, the linings rub against the drums the whole time, overheat and burn."
          }
        , { topic = Vehicle
          , prompt = { am = "የአየር ማጣሪያ መቆሸሽ ለተሽከርካሪ ጉልበት መቀነስ ምክንያት ሊሆን ይችላል።", en = "A dirty air filter can reduce engine power." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A clogged air filter starves the engine of air, so combustion is poor and power drops."
          }
        , { topic = DriverBehavior
          , prompt = { am = "———— የብስለት፣ የችሎታ፣ የትምህርትና የመነሳሳት የጋራ ድምር ውጤት ነው።", en = "———— is the combined result of maturity, ability, learning and motivation." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ስነ-ባህሪ", en = "Psychology" }
                        , { am = "ባህሪ", en = "Behavior" }
                        , { am = "መነሳሳት", en = "Motivation" }
                        , { am = "ትኩረት", en = "Attention" }
                        ]
                    , correct = { am = "ዝግጁነት", en = "Readiness" }
                    , after = []
                    }
          , explanation = "The handbook defines readiness as the combined result of maturity, ability, education and motivation."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ሞገደኛ አነዳድ በተረበሸ ስሜት ውስጥ ሆኖ የማሽከርከር ውጤት ነው ተብሎ ይታመናል።", en = "Aggressive driving is believed to come from driving while emotionally upset." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Aggressive driving is linked to driving while angry, stressed or otherwise emotionally disturbed."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ውጤታማ የመግባቢያ ክህሎት ለማዳበር ከሚያስችሉ ዘዴዎች ውስጥ አንዱ መደራደር ነው።", en = "Negotiation is one way to develop effective communication skills." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Negotiating, giving and taking with other road users, is one of the techniques for communicating effectively."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ለመንገድ ተጠቃሚዎች ሚዛናዊ ለመሆን መጣር፤", en = "Striving to be fair and balanced toward other road users is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ስሜታዊ ጥንቃቄ ነው", en = "Emotional caution" }
                        , { am = "ስሜታዊ ኃላፊነት ነው", en = "Emotional responsibility" }
                        , { am = "ክህሎታዊ ጥንቃቄ ነው", en = "Skill-based caution" }
                        , { am = "ስሜታዊ ብቃትን ያሳያል", en = "Shows emotional competence" }
                        ]
                    , correct = { am = "አእምሯዊ ጥንቃቄ ነው", en = "Mental caution" }
                    , after = []
                    }
          , explanation = "The handbook classes trying to be fair and balanced toward other road users as mental caution."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ሞገደኛ አሽከርካሪ ላለመሆን ከሚደረጉ ጥረቶች ውስጥ የተሽከርካሪ የውስጥ ምቾትን ማሻሻል አንዱ ነው።", en = "Making the vehicle's interior comfortable is one way to avoid becoming an aggressive driver." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A comfortable cabin reduces the stress and irritation that feed aggressive driving."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ስልጠና ባህሪን ለማሻሻልና ለመቀየር የሚረዳ ዘዴ ነው።", en = "Training is a method that helps improve and change behavior." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Training is one of the recognised ways to improve and change behaviour."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ጥቃቅን የማሽከርከር ስህተቶችን ለመቀየር ከሚያስችሉ ዘዴዎች ውስጥ የማይካተተው፤", en = "Which is NOT a way to correct minor driving mistakes?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በእየለቱ የማሽከርከር ስህተት ላለመፈፀም መሞከር", en = "Trying not to make mistakes each day" }
                        ]
                    , correct = { am = "ስህተት እየሰራን አደጋ ባለማድረሳችን ብቻ ትክክለኛና በቂ ነው ብሎ ማሰብ", en = "Thinking we're fine just because our mistakes haven't caused an accident" }
                    , after =
                        [ { am = "ስህተቶች ተጠራቅመው ወደአደጋ እንዳያመሩን መጠንቀቅ ነው", en = "Making sure mistakes don't build up into an accident" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Believing your mistakes are fine because they haven't caused an accident yet lets small errors pile up. The other two are proper ways to correct them."
          }
        , { topic = FirstAid
          , prompt = { am = "የመጀመሪያ ህክምና ዕርዳታ መስጫ ሳጥን ውስጥ የማይካተተው፤", en = "Which is NOT included in a first aid kit?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ጥጥ", en = "Cotton" }
                        , { am = "ምላጭና መቀስ", en = "Razor blade and scissors" }
                        , { am = "የውሃ ኩባያ", en = "Water cup" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                    , after = []
                    }
          , explanation = "Cotton, a razor blade and scissors, and a water cup all belong in the first aid kit, so none of the listed items is the exception."
          }
        , { topic = TrafficRules
          , prompt = { am = "አንድ አሽከርካሪ ወደ ባቡር ሀዲድ ማቋረጫ መስመር በ6ሜ. ክልል ውስጥ ከደረሰ ማርሹን በፍጥነት በመቀየር ማለፍ አለበት።", en = "Within 6 m of a railway crossing, the driver should quickly change gear and cross." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Never change gear on a railway crossing. Select a low gear before the tracks and cross without shifting, so the vehicle can't stall on the rails."
          }
        , { topic = FirstAid
          , prompt = { am = "ከሚከተሉት ውስጥ ድንገተኛ አደጋ በሚያጋጥምበት ጊዜ መደረግ የሌለበት፤", en = "Which should NOT be done at a sudden accident?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አደጋው የደረሰበት ሰው በደንብ ይተነፍስ እንደሆነ ማረጋገጥ", en = "Check the victim is breathing properly" }
                        , { am = "ሌሎች ሰዎች አደጋው ከደረሰበት አካባቢ እንዲርቁ ማድረግ", en = "Keep bystanders away" }
                        ]
                    , correct = { am = "አደጋው የደረሰበትን ሰው በፍጥነት ማንሳትና ማንቀሳቀስ", en = "Quickly lift and move the victim" }
                    , after =
                        [ { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Moving an injured person hastily can make spinal or internal injuries worse. Checking their breathing and keeping bystanders back are the right things to do."
          }
        , { topic = SafeDriving
          , prompt = { am = "ከጎን ወይም ከኋላ አደጋ ሊያደርስ የሚችል ተሽከርካሪ በሚያጋጥምበት ወቅት ፍጥነት በመጨመር ከአደጋ ማምለጥ ይመከራል።", en = "When a vehicle threatens you from the side or behind, speeding up to escape is recommended." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "When a vehicle is about to hit you from the side or from behind, accelerating out of its path can avoid the collision."
          }
        , { topic = RoadSigns
          , prompt = { am = "ዓለም አቀፍ የመንገድ ዳር ምልክቶች በ ———— ዋና ዓብይ ክፍሎች ይከፈላሉ።", en = "International road signs are divided into ———— main categories." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "2", en = "2" }
                        , { am = "5", en = "5" }
                        , { am = "4", en = "4" }
                        ]
                    , correct = { am = "3", en = "3" }
                    , after =
                        [ { am = "6", en = "6" }
                        ]
                    }
          , explanation = "The handbook divides international road signs into three main classes."
          }
        , { topic = RoadSigns
          , prompt = { am = "ስለ ቅድሚያ የሚያሰጡ ምልክቶች እውነት ያልሆነው፤", en = "What is NOT true about priority signs?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ከሁሉም ምልክቶች የተውጣጡ ናቸው", en = "They're drawn from all sign types" }
                        , { am = "በቅርፅ ይለያያሉ", en = "They differ in shape" }
                        , { am = "በቀለም የተለያዩ ናቸው", en = "They differ in color" }
                        ]
                    , correct = { am = "ተመሳሳይ መደብ አላቸው", en = "They share a common standard look" }
                    , after =
                        [ { am = "ሁሉም መልስ ናቸው", en = "All are correct" }
                        ]
                    }
          , explanation = "Priority signs are taken from different sign classes, so they differ in shape and colour. They do not share one common look."
          }
        , { topic = RoadSigns
          , prompt = { am = "የሚቆጣጠሩ የመንገድ ዳር ምልክቶች፤", en = "Regulatory road signs:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሁለት ንዑስ ክፍል አላቸው", en = "Have two subcategories" }
                        , { am = "ቅርጻቸው ሦስት መዓዘን ሆኖ ዙሪያቸው ቀይ ነው", en = "Are triangles with red borders" }
                        ]
                    , correct = { am = "ሶስት ንዑስ ክፍል አላቸው", en = "Have three subcategories" }
                    , after =
                        [ { am = "ቅርጻቸው ክብ ሆኖ ዙሪያቸው ሰማያዊ ነው", en = "Are circles with blue borders" }
                        , { am = "ሁሉም መልስ ናቸው", en = "All are correct" }
                        ]
                    }
          , explanation = "Regulatory signs have three subgroups. Triangles with red borders are warning signs, and regulatory circles have red, not blue, borders."
          }
        , { topic = RoadMarkings
          , prompt = { am = "ባለ ሁለት አቅጣጫ መንገድ ባልተቆራረጠ ወይም በድፍን መስመር ሲከፈል፤", en = "When a two-way road is divided by a solid line:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "መስመርን ረግጦ ዞሮ መመለስ ይፈቀዳል", en = "Crossing it for a U-turn is allowed" }
                        , { am = "መስመርን ረግጦ መታጠፍ ብቻ ይፈቀዳል", en = "Crossing it only to turn is allowed" }
                        , { am = "መስመርን ረግጦ መቅደም ብቻ ይፈቀዳል", en = "Crossing it only to overtake is allowed" }
                        , { am = "በመጡበት መስመር ዞሮ መመለስ ብቻ ይፈቀዳል", en = "Only turning back within your own lane is allowed" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                    , after = []
                    }
          , explanation = "A solid centre line may not be crossed or straddled, whether to overtake, turn or turn back, so none of the options is right."
          }
        , { topic = RoadMarkings
          , prompt = { am = "ዓለም አቀፍ የመንገድ ላይ መስመሮች በአገልግሎታቸው በ ———— ይከፈላሉ።", en = "International road markings are divided by function into ————." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "5", en = "5" }
                        , { am = "4", en = "4" }
                        , { am = "3", en = "3" }
                        ]
                    , correct = { am = "2", en = "2" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "By function, road markings fall into two groups."
          }
        , { topic = RoadMarkings
          , prompt = { am = "ያልተቆራረጠ ወይም ድፍን መስመር የሚሰመርበት አካባቢ፤", en = "Where are solid lines painted?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የትራፊክ መጨናነቅ የሚበዛበት ነው", en = "Where traffic congestion is heavy" }
                    , after =
                        [ { am = "ግልፅና ምቹ በሆኑ አካባቢዎች ነው", en = "In clear, easy areas" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        , { am = "ለእግረኞች የሚያገለግል አደገኛ ቦታ ላይ ነው", en = "At dangerous places used by pedestrians" }
                        , { am = "ሁሉም መልስ ናቸው", en = "All are correct" }
                        ]
                    }
          , explanation = "Solid lines are painted where crossing the line would be dangerous, such as places with heavy traffic, not on clear and easy stretches."
          }
        , { topic = TrafficLights
          , prompt = { am = "———— የትራፊክ ማስተላለፊያ መብራት ሲበራ ለመቆም የምንዘጋጅበት ነው።", en = "When the ———— light is on, we prepare to stop." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቀይና ቢጫ", en = "Red and yellow" }
                        , { am = "ቀይ", en = "Red" }
                        , { am = "አረንጓዴ", en = "Green" }
                        ]
                    , correct = { am = "ቢጫ", en = "Yellow" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Yellow on its own comes after green and tells you to prepare to stop."
          }
        , { topic = TrafficLights
          , prompt = { am = "ስለትራፊክ ማስተላለፊያ መብራት የአበራር ስርዓት ቅደም ተከተል ትክክል የሆነው፤", en = "The correct traffic light sequence is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ቀይ፣ ቀይና ቢጫ፣ አረንጓዴ፣ ቢጫ", en = "Red; red + yellow; green; yellow" }
                    , after =
                        [ { am = "ቀይና ቢጫ፣ አረንጓዴ፣ ቀይ", en = "Red + yellow; green; red" }
                        , { am = "ቀይ፣ ቢጫ፣ አረንጓዴ", en = "Red; yellow; green" }
                        , { am = "ቀይ፣ አረንጓዴ፣ ቢጫ", en = "Red; green; yellow" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "The cycle is red, then red with yellow, then green, then yellow, and back to red."
          }
        , { topic = TrafficLights
          , prompt = { am = "ቀይ የትራፊክ ማስተላለፊያ መብራት ሲበራ ቆይቶ ከቢጫው ጋር በአንድነት ለአጭር ጊዜ ሲበራ፤", en = "When red has been on and then lights together with yellow briefly:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለመቆም እንዘጋጃለን", en = "We prepare to stop" }
                        , { am = "እለፍ የሚል ትዕዛዝ ነው", en = "It means go" }
                        ]
                    , correct = { am = "ለመሄድ እንዘጋጃለን", en = "We prepare to go" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Red and yellow together mean get ready to go. You may not move until the light turns green."
          }
        , { topic = TrafficRules
          , prompt = { am = "አንድ አሽከርካሪ ከአነስተኛ መንገድ ወደአውራ ጎዳና ከመግባቱ በፊት፤", en = "Before entering a main road from a minor road, a driver:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቆም የእለፍ ምልክት ይጠብቃል", en = "Waits for a stop/go signal" }
                        , { am = "በፍጥነት መንገዱን ይለቃል", en = "Crosses quickly" }
                        ]
                    , correct = { am = "ቆም ግራና ቀኝ ተመልክቶ ያልፋል", en = "Stops, looks left and right, then proceeds" }
                    , after =
                        [ { am = "ቆም መመልከት አይጠበቅበትም", en = "Doesn't need to stop and look" }
                        , { am = "ቅድሚያ አለው", en = "Has priority" }
                        ]
                    }
          , explanation = "A driver joining a main road from a minor road must stop, look left and right, give way and only then proceed."
          }
        , { topic = TrafficRules
          , prompt = { am = "የግራ መሪ የሆነ ተሽከርካሪ ላይ ወደግራ ለመታጠፍ የሚሰጥ የእጅ ምልክት፤", en = "Hand signal for a left turn in a left-hand-drive vehicle:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የግራ እጅን በማውጣት ቀጥ በማድረግ ወደጎን መዘርጋት", en = "Left arm straight out to the side" }
                    , after =
                        [ { am = "የቀኝ እጅን በማውጣት ቀጥ በማድረግ ወደጎን መዘርጋት", en = "Right arm straight out to the side" }
                        , { am = "የግራ እጅን በማውጣት ወደላይ መዘርጋት", en = "Left arm raised up" }
                        , { am = "የቀኝ እጅን በማውጣት ወደላይ መዘርጋት", en = "Right arm raised up" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "In a left-hand-drive vehicle the driver sits on the left, so the left arm held straight out of the window signals a left turn."
          }
        , { topic = Safety
          , prompt = { am = "ተቀጣጣይ ነገሮችን በማሸሽ እሳትን የማጥፋት ዘዴ ———— ይባላል።", en = "Putting out a fire by removing flammable material is called ————." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ማቀዝቀዝ", en = "Cooling" }
                        ]
                    , correct = { am = "ማስራብ", en = "Starving" }
                    , after =
                        [ { am = "ማፈን", en = "Smothering" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Fire needs fuel, heat and oxygen. Taking away the fuel is called starving the fire. Cooling removes heat and smothering cuts off oxygen."
          }
        , { topic = Speed
          , prompt = { am = "በሀገራችን ከፍተኛው የፍጥነት ወሰን በሰዓት ———— ኪ.ሜ ነው።", en = "Our country's highest speed limit is ———— km/h." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "80", en = "80" }
                        , { am = "90", en = "90" }
                        , { am = "60", en = "60" }
                        , { am = "120", en = "120" }
                        ]
                    , correct = { am = "100", en = "100" }
                    , after = []
                    }
          , explanation = "The highest speed limit given in the handbook is 100 km/h."
          }
        , { topic = Safety
          , prompt = { am = "በሞተር ላይ የሚነሳ እሳት ለማጥፋት የሚያገለግለው፤", en = "To put out an engine fire, use:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ውሃ መጠቀም", en = "Water" }
                        , { am = "ማፈን", en = "Smothering" }
                        , { am = "ማስራብ", en = "Starving" }
                        , { am = "ደራይ ፓውደር", en = "Dry powder" }
                        ]
                    , correct = { am = "«ለ» እና «መ» መልስ ናቸው", en = "ለ and መ are correct" }
                    , after = []
                    }
          , explanation = "Never use water on an engine fire, where fuel and electricity are involved. Smother it or use a dry powder extinguisher."
          }
        , { topic = Parking
          , prompt = { am = "ወደባቡር ሀዲድ ማቋረጫ መስመር እየተጠጋን በሄድን ቁጥር በ ———— ሜትር ክልል ማቆም የተከለከለ ነው።", en = "Approaching a railway crossing, parking within ———— m is prohibited." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "6", en = "6" }
                        , { am = "15", en = "15" }
                        , { am = "30", en = "30" }
                        ]
                    , correct = { am = "20", en = "20" }
                    , after =
                        [ { am = "12", en = "12" }
                        ]
                    }
          , explanation = "Parking is prohibited within 20 m of a railway crossing."
          }
        , { topic = Speed
          , prompt = { am = "እስከ 30 ሰው የሚጭን የንገድ ተሽከርካሪ በከተማ ክልል የሚፈቀድለት ከፍተኛ የፍጥነት ወሰን በሰዓት ———— ኪ.ሜ ነው።", en = "Max city speed for a vehicle carrying up to 30 people is ———— km/h." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "80", en = "80" }
                        ]
                    , correct = { am = "40", en = "40" }
                    , after =
                        [ { am = "90", en = "90" }
                        , { am = "60", en = "60" }
                        , { am = "50", en = "50" }
                        ]
                    }
          , explanation = "The handbook gives 40 km/h as the limit inside city boundaries for this class of vehicle."
          }
        , { topic = Parking
          , prompt = { am = "በ12 ሜ ክልል ማቆም የሚከለከለው፤", en = "Parking is prohibited within 12 m of:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ወደመስቀለኛ መንገድ ነው", en = "An intersection" }
                        , { am = "ቁም የሚል ምልክት ባለበት ቦታ ነው", en = "A stop sign" }
                        , { am = "በሆስፒታሎች መውጫና መግቢያ ነው", en = "Hospital entrances and exits" }
                        , { am = "ወደ እሳት አደጋ መከላከያ መስሪያ ቤት መውጫና መግቢያ ነው", en = "Fire station entrances and exits" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after = []
                    }
          , explanation = "The 12 m rule covers all of them. That means intersections, stop signs, and hospital and fire station entrances and exits."
          }
        , { topic = TrafficRules
          , prompt = { am = "እውነት የሆነው፤", en = "Which is true?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ወደመስቀለኛ መንገድ በ20ሜ ክልል ውስጥ መቅደም የተከለከለ ነው", en = "No overtaking within 20 m of an intersection" }
                        , { am = "የመንገድ ላይ መስመሮች ምልክቶችን ተከትለው ያገለግላሉ", en = "Road markings work together with signs" }
                        , { am = "ወደ መስቀለኛ መንገድ በ20ሜ ክልል ውስጥ አቅጣጫ መቀየር ይቻላል", en = "Changing lanes within 20 m of an intersection is allowed" }
                        ]
                    , correct = { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Overtaking is prohibited within 20 m of an intersection, and road markings work together with signs. Changing direction within that distance is not allowed."
          }
        , { topic = TrafficRules
          , prompt = { am = "ለማቆም ወይም ለማስቀደም፤", en = "To stop or let someone overtake, use:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የቀኝ ፍሬቻን ማብራት", en = "Right indicator" }
                    , after =
                        [ { am = "የግራ ፍሬቻን ማብራት", en = "Left indicator" }
                        , { am = "የአደጋ መብራት መጠቀም", en = "Hazard lights" }
                        , { am = "የማስጠንቀቂያ ድምፅ ማሰማት", en = "Horn" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "You move to the right to stop, and the right indicator tells the driver behind that they may pass."
          }
        , { topic = Vehicle
          , prompt = { am = "———— ተሽከርካሪን ለረዥም ጊዜ ለማቆም የሚረዳ የመቆጣጠሪያ መሣሪያ ነው።", en = "———— is the control used to keep a vehicle parked for a long time." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የፍሬን ፔዳል", en = "Brake pedal" }
                        , { am = "ማርሽን ዜሮ ላይ ማድረግ", en = "Gear in neutral" }
                        ]
                    , correct = { am = "የእጅ ፍሬን", en = "Handbrake" }
                    , after =
                        [ { am = "የፍሪሲዮን ፔዳል", en = "Clutch pedal" }
                        , { am = "ከ «መ» በስተቀር ሁሉም መልስ ናቸው", en = "All except መ" }
                        ]
                    }
          , explanation = "The handbrake (parking brake) holds the vehicle mechanically for as long as it is parked."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ የመገናኛ መሣሪያ ያልሆነው፤", en = "Which is NOT a vehicle communication device?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የውስጥ መብራት", en = "Interior light" }
                    , after =
                        [ { am = "የግምባር መብራት አጭር ረጅም", en = "Headlights (low/high)" }
                        , { am = "የፍሬቻ መብራት", en = "Indicator light" }
                        , { am = "የሰሌዳ መብራት", en = "Number plate light" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "Communication devices signal your intentions to other road users. The interior light only serves the people inside."
          }
        , { topic = RoadMarkings
          , prompt = { am = "አንድ ባለሁለት አቅጣጫ መንገድ በተቆራረጠና በድፍን ነጭ መስመር ሲከፈል በተቆራረጠው መስመር በኩል መስመሩን አቋርጦ ወደኋላ ዞሮ መመለስ ይችላል።", en = "When a two-way road is divided by a broken line beside a solid line, a driver on the broken-line side may cross to make a U-turn." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The driver who has the broken line on their side may cross it when it is safe. The driver on the solid side may not."
          }
        , { topic = Parking
          , prompt = { am = "ወደ ጎርፍ መተላለፊያ መስመር ማቆም የሚቻለው ከ ———— ሜትር ክልል ውጪ ነው።", en = "You may park near a flood drainage channel only beyond ———— m." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "5", en = "5" }
                    , after =
                        [ { am = "15", en = "15" }
                        , { am = "10", en = "10" }
                        , { am = "12", en = "12" }
                        , { am = "6", en = "6" }
                        ]
                    }
          , explanation = "Parking is only allowed more than 5 m away from a flood drainage channel."
          }
        , { topic = Vehicle
          , prompt = { am = "የምናሽከረክረው ተሽከርካሪ በምን ሁኔታ ላይ እንደሚገኝ የሚያሳውቁን መሣሪያዎች ———— በመባል ይታወቃሉ።", en = "Devices that show the vehicle's condition are called ————." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የአደጋ ጊዜ መከላከያ መሣሪያዎች", en = "Emergency safety devices" }
                        , { am = "የትዕይንት መቆጣጠሪያ መሣሪያዎች", en = "Visibility control devices" }
                        , { am = "መቆጣጠሪያ መሣሪያዎች", en = "Control devices" }
                        , { am = "የመገናኛ መሣሪያዎች", en = "Communication devices" }
                        ]
                    , correct = { am = "ጠቋሚ መሣሪያዎች", en = "Indicator devices (gauges)" }
                    , after = []
                    }
          , explanation = "Gauges and warning lights such as the speedometer, fuel, temperature and oil pressure gauges are the indicator devices."
          }
        , { topic = Parking
          , prompt = { am = "በከተማ ክልል ትልልቅ ካሚዮኖችን በብልሽት ወቅት ከ ———— ሰዓት በላይ ማቆም የተከለከለ ነው።", en = "In a city, a broken-down large truck may not be parked for more than ———— hours." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "2", en = "2" }
                    , after =
                        [ { am = "4", en = "4" }
                        , { am = "6", en = "6" }
                        , { am = "12", en = "12" }
                        , { am = "48", en = "48" }
                        ]
                    }
          , explanation = "A broken-down large truck may not stay parked inside a city for more than 2 hours."
          }
        , { topic = RoadSigns
          , prompt = { am = "ከፊት አደገኛ ወይም ጠመዝማዛ መንገድ መኖሩን የሚገልፅ ምልክት ከ ———— የመንገድ ዳር ምልክት ውስጥ ይካተታል።", en = "A sign showing a dangerous or winding road ahead belongs to ———— signs." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አቅጣጫ ጠቋሚ", en = "Direction" }
                        ]
                    , correct = { am = "የሚያስጠነቅቅ", en = "Warning" }
                    , after =
                        [ { am = "መረጃ ሠጪ", en = "Informative" }
                        , { am = "የሚያስገድዱ", en = "Mandatory" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Warning signs give advance notice of hazards ahead, such as dangerous or winding roads."
          }
        , { topic = Parking
          , prompt = { am = "ወደአውቶብስ ፌርማታ ከፊትና ከኋላ በ ———— ሜትር ውስጥ ማቆም የተከለከለ ነው።", en = "Parking within ———— m in front of or behind a bus stop is prohibited." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "20", en = "20" }
                        ]
                    , correct = { am = "15", en = "15" }
                    , after =
                        [ { am = "10", en = "10" }
                        , { am = "5", en = "5" }
                        , { am = "12", en = "12" }
                        ]
                    }
          , explanation = "Parking is prohibited within 15 m before and after a bus stop."
          }
        , { topic = RoadMarkings
          , prompt = { am = "ዓለም አቀፍ የመንገድ ላይ መስመሮች የመንገድ ዳር ምልክቶችን ተከትለው ያገለግላሉ።", en = "Road markings work together with road signs." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Road markings reinforce and complete the message of the roadside signs."
          }
        , { topic = Parking
          , prompt = { am = "ከሁለቱም አቅጣጫ ማየት በማይቻልበት በ ———— ሜትር ክልል ማቆም የተከለከለ ነው።", en = "Where you can't see in both directions, parking within ———— m is prohibited." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "30", en = "30" }
                        , { am = "40", en = "40" }
                        , { am = "12", en = "12" }
                        , { am = "15", en = "15" }
                        ]
                    , correct = { am = "50", en = "50" }
                    , after = []
                    }
          , explanation = "Where you cannot see in both directions, such as bends and hill crests, parking is prohibited within 50 m."
          }
        , { topic = Vehicle
          , prompt = { am = "———— ተሽከርካሪ በማይነሳበት ወቅት ለተለያዩ የኤሌክትሪክ ክፍሎች የኃይል ምንጭ በመሆን ያገለግላል።", en = "When the engine isn't running, ———— powers the electrical parts." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አልተርኔተር /ዲናሞ/", en = "Alternator" }
                        , { am = "ፊውዝ", en = "Fuse" }
                        , { am = "ካንዴላ /ስፓርክ ፕለግ/", en = "Spark plug" }
                        ]
                    , correct = { am = "ባትሪ", en = "Battery" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The battery stores electrical energy and supplies it while the engine is off. The alternator only produces power when the engine runs."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የሞገደኛ አሽከርካሪ ፈርጅ ከሆነው «ግድየለሽነትና የመንገድ ላይ ፀብ» ውስጥ የሚካተተው፤", en = "Which falls under the aggressive driver type 'recklessness and road rage'?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "በአልኮል መጠጥ ተመርዞ ማሽከርከር", en = "Driving drunk" }
                    , after =
                        [ { am = "በበቀል ስሜት ፍሬን መያዝ", en = "Braking out of revenge" }
                        , { am = "ያላግባብ ረድፍን መቀያየር", en = "Changing lanes improperly" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                        ]
                    }
          , explanation = "In the handbook's classification, drunk driving belongs to \"recklessness and road rage\". The other two examples belong to different categories."
          }
        , { topic = Vehicle
          , prompt = { am = "———— ፒስተንና ቤላን የሚያገናኝ ክፍል ነው።", en = "———— connects the piston and the connecting rod." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፉሻ", en = "Bushing" }
                        , { am = "ክራንክ ሻፍት /ኮሎ/", en = "Crankshaft" }
                        ]
                    , correct = { am = "ፒስተን ፒን", en = "Piston pin" }
                    , after =
                        [ { am = "ካምሻፍት", en = "Camshaft" }
                        , { am = "ቫልቭ", en = "Valve" }
                        ]
                    }
          , explanation = "The piston pin (gudgeon pin) joins the piston to the small end of the connecting rod."
          }
        , { topic = Vehicle
          , prompt = { am = "———— ከባትሪ የሚያገኘውን አነስተኛ ኃይል አባዝቶ ለዲስትሪቢውተር የሚያስተላልፍ ክፍል ነው።", en = "———— boosts the battery's low voltage and sends it to the distributor." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኮንታክት ፖይንት /ፑንቲና/", en = "Contact points" }
                        , { am = "ዲናሞ", en = "Dynamo" }
                        ]
                    , correct = { am = "ኢግንሺን ኮይል /ቦቢና/", en = "Ignition coil" }
                    , after =
                        [ { am = "ሬጉሌተር", en = "Regulator" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The ignition coil steps the battery's low voltage up to the high voltage that the distributor sends to the spark plugs."
          }
        , { topic = Vehicle
          , prompt = { am = "የእጅ ፍሬን መስራቱን ለመፈተሽ በቁልቁለት ላይ ማርሽን አንደኛ ማርሽ ላይ በማድረግ መሆን አለበት።", en = "To test the handbrake, put the vehicle in first gear on a downhill." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false. Leaving the vehicle in gear would help hold it and hide a weak handbrake."
          }
        , { topic = Vehicle
          , prompt = { am = "የፍሪሲዮን ሸራ ከታቡር ጋር ተጣብቆ መቅረት ፍሬንን ይቀልፋል።", en = "A brake lining that stays stuck to the drum locks the brake." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "If the lining stays stuck to the drum, the wheel cannot turn freely and the brake stays locked on."
          }
        , { topic = SafeDriving
          , prompt = { am = "በቁልቁለት መንገድ ላይ ከባድ ማርሽ የምንጠቀመው፤", en = "We use a low gear downhill:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "በተደጋጋሚ ፍሬን ላለመጠቀም ነው", en = "To avoid braking repeatedly" }
                    , after =
                        [ { am = "በፍጥነት ለመጓዝ ስለሚረዳ ነው", en = "Because it helps us go fast" }
                        , { am = "ሞተር እንዳይሞቅ ነው", en = "To keep the engine from overheating" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "A low gear makes the engine hold the vehicle back, so you don't have to brake over and over and overheat the brakes."
          }
        , { topic = Vehicle
          , prompt = { am = "አንድ ተሽከርካሪ ከ ———— መሠረታዊ ክፍሎች የተዋቀረ ነው።", en = "A vehicle is made up of ———— basic parts." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "7", en = "7" }
                        , { am = "3", en = "3" }
                        , { am = "4", en = "4" }
                        , { am = "2", en = "2" }
                        ]
                    , correct = { am = "5", en = "5" }
                    , after = []
                    }
          , explanation = "The handbook divides a vehicle into five basic parts."
          }
        , { topic = Vehicle
          , prompt = { am = "በፍሬን ጫማ እና በታምቡር መካከል ያለው ርቀት አነስተኛ ከሆነ የፍሬን ፔዳል ሲረገጥ ተሽከርካሪው በፍጥነት ይቆማል።", en = "If the gap between brake shoe and drum is small, the vehicle stops quickly when you brake." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "With a small gap, the shoes touch the drum almost as soon as you press the pedal, so the vehicle stops quickly."
          }
        , { topic = Speed
          , prompt = { am = "የፍጥነት ወሰን ደንብ ሲወሰን የአየር ሁኔታን ከግምት ውስጥ የከተተ ነው።", en = "Speed limit rules were set with weather conditions in mind." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The speed limit rules take weather into account. In rain, fog or poor visibility you must drive slower."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የሰዎችንና የእንስሳትን ባህሪ የሚያጠና ሳይንስ ———— ይባላል።", en = "The science that studies human and animal behavior is called ————." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ባህሪ", en = "Behavior" }
                        ]
                    , correct = { am = "ስነ-ባህሪ", en = "Psychology" }
                    , after =
                        [ { am = "የማሽከርከር ስነ-ባህሪ", en = "Driving psychology" }
                        , { am = "ስነ-ምግባር", en = "Ethics" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Psychology is the science that studies the behaviour of people and animals."
          }
        , { topic = Parking
          , prompt = { am = "ለማየት በማይቻልበት በ50 ሜ. ክልል ለማቆም አደጋን ለመከላከል መጠቀም ያለብን፤", en = "When stopping within 50 m of a place with no visibility, to prevent accidents we must use:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሀዛርድ ላይት /የአደጋ መብራት/", en = "Hazard lights" }
                        , { am = "ፍሬቻ", en = "Indicator" }
                        , { am = "የግምባር መብራት", en = "Headlights" }
                        , { am = "የሰሌዳ መብራት", en = "Number plate light" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after = []
                    }
          , explanation = "According to the answer key, all of the listed lights should be used to make the stopped vehicle visible."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ለባህሪ መለወጥ መንስኤ ከሆኑት ውስጥ የማይካተተው፤", en = "Which is NOT a cause of behavior change?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አካላዊ ሁኔታ", en = "Physical condition" }
                        , { am = "አካባቢያዊ ሁኔታ", en = "Environmental conditions" }
                        , { am = "ሐይለ-ስሜት ውጥረት", en = "Emotional stress" }
                        , { am = "ሰዎች አባባል", en = "What people say" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                    , after = []
                    }
          , explanation = "Physical condition, environment, emotional stress and what people say can all change behaviour, so none of them is the exception."
          }
        , { topic = DriverBehavior
          , prompt = { am = "———— በየሙያው ከተሰማሩት ግለሰቦች ምን እንደሚጠበቅ በግልፅ የሚያመለክቱ ህግጋት ናቸው።", en = "———— are rules that clearly state what is expected of people in a profession." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ስነ-ልቦና", en = "Psychology" }
                        ]
                    , correct = { am = "ስነ-ምግባራዊ ደንቦች", en = "Codes of ethics" }
                    , after =
                        [ { am = "ሙያ", en = "Profession" }
                        , { am = "ስነ-ምግባር", en = "Ethics" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Codes of ethics state clearly what is expected of the people working in a profession."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አሽከርካሪዎች እንደ መርህ መከተል ከሚገባቸው ከንዋኔዎች ውስጥ የማይካተተው፤", en = "Which is NOT a principle drivers should follow?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለትራፊክ ሰላማዊ እንቅስቃሴ ወሳኝ ሚና መጫወት", en = "Play a key role in safe traffic flow" }
                        ]
                    , correct = { am = "በትራፊክ እንቅስቃሴ ውስጥ የራሱን ህይወት ብቻ መጠበቅ", en = "Protect only their own life" }
                    , after =
                        [ { am = "በተሽከርካሪ የቴክኒክ ጉድለት ሊደርስ የሚችልን ጉዳት መቀነስ", en = "Reduce harm from vehicle defects" }
                        , { am = "በአለማወቅ፣ በችልተኝነትና ስነ-ስርዓት በጎደላቸው አሽከርካሪዎችና እግረኞች ለሚደርሱ አደጋዎች ኃላፊነት መውሰድ", en = "Take responsibility for accidents involving careless or untrained drivers and pedestrians" }
                        , { am = "«ለ» እና «መ» መልስ ናቸው", en = "ለ and መ are correct" }
                        ]
                    }
          , explanation = "A driver must protect every road user, not just their own life. The other options are principles a driver should follow."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ሙያዊ ስነ-ምግባራቸውን አክብረው የሚያሽከረክሩ አሽከርካሪዎች፤", en = "Drivers who respect professional ethics:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የተሳፋሪው ደህንነት የራሱ ብቻ ኃላፊነት መሆኑን ይገነዘባሉ", en = "Think passenger safety is only the passenger's own responsibility" }
                        , { am = "ለስህተታቸው መከላከያ ምክንያት ያቀርባሉ", en = "Make excuses for their mistakes" }
                        ]
                    , correct = { am = "ለጉዟቸው ዕቅድ ያወጣሉ፤ ጊዜ ይቆጥባሉ", en = "Plan their trips and save time" }
                    , after =
                        [ { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Ethical drivers plan their trips and manage their time. They also accept responsibility for their passengers and do not make excuses for mistakes."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የአሽከርካሪዎች አላስፈላጊ ባህሪያት ውስጥ የማይካተተው፤", en = "Which is NOT an undesirable driver behavior?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ከሚፈልገው በላይ ራስ ወዳድነት", en = "Excessive selfishness" }
                        , { am = "ልታይ ልታይ ባይነት", en = "Showing off" }
                        , { am = "ኃላፊነትን መዘንጋት", en = "Neglecting responsibility" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                    , after = []
                    }
          , explanation = "Selfishness, showing off and neglecting responsibility are all undesirable, so none of them is the exception."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የአልኮል መጠጥ በማሽከርከር ችሎታ ላይ፤", en = "Alcohol's effect on driving ability:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ውሳኔ የመስጠት ብቃት ላይ ተጽእኖ ያሳድራል", en = "It affects decision-making" }
                    , after =
                        [ { am = "ትኩረት ላይ የሚያሳድረው ተጽእኖ አነስተኛ ነው", en = "Its effect on attention is small" }
                        , { am = "የባህሪ መለወጥን ላያስከትል ይችላል", en = "It may not cause behavior change" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Alcohol impairs judgement and decision-making. It also strongly reduces attention and changes behaviour, so the other statements are false."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ዘይት አንዱ ተግባር የሞተሩን የውስጥ ክፍል ማጽዳት ነው።", en = "One function of engine oil is to clean the engine's internal parts." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Besides lubricating, cooling and sealing, engine oil cleans by carrying deposits away to the filter."
          }
        ]
    }
