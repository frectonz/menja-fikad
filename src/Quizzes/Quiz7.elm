module Quizzes.Quiz7 exposing (quiz)

import Quiz exposing (Answer(..), Quiz, Topic(..))


quiz : Quiz
quiz =
    { id = "quiz-7"
    , title = { am = "ፈተና 7", en = "Quiz 7" }
    , minutes = 115
    , first =
        { topic = TrafficLights
        , prompt = { am = "ቀይ መብራት በተደጋጋሚ እየበራ የሚጠፋ ከሆን", en = "If a red light keeps flashing on and off" }
        , figure = Nothing
        , answer =
            Choice
                { before =
                    [ { am = "በፍጥነት ማለፍ", en = "Pass quickly" }
                    , { am = "ለእግረኛ ማለፍ ክልክል መሆኑ", en = "Pedestrians are not allowed to cross" }
                    , { am = "የማቆሚያ መስመር ሳያልፍ ሌላ መብራት መጠበቅ", en = "Wait for the next light without crossing the stop line" }
                    ]
                , correct = { am = "ቆሞ ግራ እና ቀኝ ተመልክቶ በዝግታ ማለፍ", en = "Stop, look left and right, then pass slowly" }
                , after =
                    []
                }
        , explanation = "A flashing red light works like a stop sign: you must come to a full stop, check that the way is clear, and then proceed carefully."
        }
    , rest =
        [ { topic = Parking
          , prompt = { am = "በመስቀለኛ መንገድ እና በድርጅት ወይም በተቋማት መግቢያ እና መውጫ በር ላይ ማቆም የማይቻለው", en = "Within what distance of an intersection or a business/institution entrance and exit is parking prohibited?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ከ50 ሜ በላይ", en = "Beyond 50 m" }
                        ]
                    , correct = { am = "ከ12 ሜ በታች", en = "Within 12 m" }
                    , after =
                        [ { am = "ከ12 ሜ በላይ", en = "Beyond 12 m" }
                        , { am = "13 ሜ በላይ", en = "Beyond 13 m" }
                        ]
                    }
          , explanation = "Vehicles parked closer than 12 m to an intersection or a gateway block sight lines and the path of vehicles turning in and out."
          }
        , { topic = Parking
          , prompt = { am = "ተሽከርካሪን ከከተማ ክልል ውጭ በብልሽት ምክንያት ቢበዛ ለምን ያክል ሰዓት ማቆም ይቻላል", en = "Outside a city, for at most how many hours may a broken-down vehicle be left stopped?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "24 ሰዓት", en = "24 hours" }
                        ]
                    , correct = { am = "48 ሰዓት", en = "48 hours" }
                    , after =
                        [ { am = "72 ሰዓት", en = "72 hours" }
                        , { am = "96 ሰዓት", en = "96 hours" }
                        ]
                    }
          , explanation = "A broken-down vehicle on an open road is a hazard, so the owner is given at most 48 hours to repair or remove it."
          }
        , { topic = TrafficRules
          , prompt = { am = "ወደ መስቀለኛ መንገድ የተጠጋ አሽከርካሪ አቅጣጫ መቀየር እና መቅደም የሚችልበት ርቀት", en = "When approaching an intersection, at what distance may a driver still change direction and overtake?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "25 ሜ በታች", en = "Under 25 m" }
                        ]
                    , correct = { am = "50 ሜ በላይ", en = "More than 50 m" }
                    , after =
                        [ { am = "15 ሜ በላይ", en = "More than 15 m" }
                        , { am = "25 ሜ በላይ", en = "More than 25 m" }
                        ]
                    }
          , explanation = "Within the last 50 m before an intersection drivers must already be in their lane and not overtake, so lane changes and overtaking are only allowed farther out than that."
          }
        , { topic = Speed
          , prompt = { am = "በከተማ ክልል ውስጥ የከባድ ተሽከርካሪ ትልቁ የፍጥነት ወሰን", en = "Maximum speed limit for a heavy vehicle in a city" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "25 ኪ.ሜ", en = "25 km/h" }
                        , { am = "50 ኪ.ሜ", en = "50 km/h" }
                        ]
                    , correct = { am = "30 ኪ.ሜ", en = "30 km/h" }
                    , after =
                        [ { am = "40 ኪ.ሜ", en = "40 km/h" }
                        ]
                    }
          , explanation = "Heavy vehicles take much longer to stop and do more damage in a crash, so in urban areas they are limited to 30 km/h."
          }
        , { topic = Speed
          , prompt = { am = "ከከተማ ክልል ውጪ በአንደኛ ደረጃ አውራጎዳና ውስጥ የከባድ ተሽከርካሪ ትልቁ የፍጥነት ወሰን", en = "Maximum speed limit for a heavy vehicle on a first-class highway outside a city" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "25 ኪ.ሜ", en = "25 km/h" }
                        , { am = "50 ኪ.ሜ", en = "50 km/h" }
                        , { am = "30 ኪ.ሜ", en = "30 km/h" }
                        ]
                    , correct = { am = "70 ኪ.ሜ", en = "70 km/h" }
                    , after =
                        []
                    }
          , explanation = "First-class highways are the best-built roads, so heavy vehicles may go up to 70 km/h there, still below lighter vehicles because of their braking distance."
          }
        , { topic = Speed
          , prompt = { am = "በከተማ ክልል ውስጥ የአውቶሞቢል ተሽከርካሪ ትልቁ የፍጥነት ወሰን", en = "Maximum speed limit for an automobile in a city" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "100 ኪ.ሜ", en = "100 km/h" }
                        , { am = "50 ኪ.ሜ", en = "50 km/h" }
                        ]
                    , correct = { am = "60 ኪ.ሜ", en = "60 km/h" }
                    , after =
                        [ { am = "70 ኪ.ሜ", en = "70 km/h" }
                        ]
                    }
          , explanation = "Cities have pedestrians, junctions and dense traffic, so even light automobiles are capped at 60 km/h."
          }
        , { topic = Speed
          , prompt = { am = "በከተማ ክልል ውስጥ የመለስተኛ ተሽከርካሪ ትልቁ የፍጥነት ወሰን", en = "Maximum speed limit for a medium vehicle in a city" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "40 ኪ.ሜ", en = "40 km/h" }
                    , after =
                        [ { am = "50 ኪ.ሜ", en = "50 km/h" }
                        , { am = "60 ኪ.ሜ", en = "60 km/h" }
                        , { am = "70 ኪ.ሜ", en = "70 km/h" }
                        ]
                    }
          , explanation = "Medium vehicles are heavier and slower to stop than cars, so their urban limit is lower, at 40 km/h."
          }
        , { topic = Speed
          , prompt = { am = "ከከተማ ክልል ውጪ በሁለተኛ ደረጃ አውራጎዳና ውስጥ የከባድ ተሽከርካሪ ትልቁ የፍጥነት ወሰን", en = "Maximum speed limit for a heavy vehicle on a second-class highway outside a city" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "25 ኪ.ሜ", en = "25 km/h" }
                        ]
                    , correct = { am = "50 ኪ.ሜ", en = "50 km/h" }
                    , after =
                        [ { am = "30 ኪ.ሜ", en = "30 km/h" }
                        , { am = "70 ኪ.ሜ", en = "70 km/h" }
                        ]
                    }
          , explanation = "Second-class roads are narrower and less smooth than first-class ones, so the heavy-vehicle limit drops from 70 to 50 km/h."
          }
        , { topic = Speed
          , prompt = { am = "ከከተማ ክልል ውጪ በሶስተኛ ደረጃ አውራጎዳና ውስጥ የከባድ ተሽከርካሪ ትልቁ የፍጥነት ወሰን", en = "Maximum speed limit for a heavy vehicle on a third-class highway outside a city" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "25 ኪ.ሜ", en = "25 km/h" }
                        ]
                    , correct = { am = "40 ኪ.ሜ", en = "40 km/h" }
                    , after =
                        [ { am = "80 ኪ.ሜ", en = "80 km/h" }
                        , { am = "70 ኪ.ሜ", en = "70 km/h" }
                        ]
                    }
          , explanation = "Third-class roads are the lowest standard, so heavy vehicles are held to 40 km/h on them."
          }
        , { topic = Speed
          , prompt = { am = "ከከተማ ክልል ውጪ በሁለተኛ ደረጃ አውራጎዳና ውስጥ የመለስተኛ ተሽከርካሪ ትልቁ የፍጥነት ወሰን", en = "Maximum speed limit for a medium vehicle on a second-class highway outside a city" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "25 ኪ.ሜ", en = "25 km/h" }
                        , { am = "50 ኪ.ሜ", en = "50 km/h" }
                        ]
                    , correct = { am = "60 ኪ.ሜ", en = "60 km/h" }
                    , after =
                        [ { am = "70 ኪ.ሜ", en = "70 km/h" }
                        ]
                    }
          , explanation = "On second-class roads medium vehicles may travel at up to 60 km/h, between the limits for heavy vehicles and cars."
          }
        , { topic = Speed
          , prompt = { am = "ከከተማ ክልል ውጪ በሶስተኛ ደረጃ አውራጎዳና ውስጥ የመለስተኛ ተሽከርካሪ ትልቁ የፍጥነት ወሰን", en = "Maximum speed limit for a medium vehicle on a third-class highway outside a city" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "25 ኪ.ሜ", en = "25 km/h" }
                        ]
                    , correct = { am = "50 ኪ.ሜ", en = "50 km/h" }
                    , after =
                        [ { am = "60 ኪ.ሜ", en = "60 km/h" }
                        , { am = "70 ኪ.ሜ", en = "70 km/h" }
                        ]
                    }
          , explanation = "Third-class roads are lower standard, so the medium-vehicle limit is reduced to 50 km/h."
          }
        , { topic = Speed
          , prompt = { am = "ከከተማ ክልል ውጪ በሶስተኛ ደረጃ አውራጎዳና ውስጥ የአውቶሞቢል ተሽከርካሪ ትልቁ የፍጥነት ወሰን", en = "Maximum speed limit for an automobile on a third-class highway outside a city" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "25 ኪ.ሜ", en = "25 km/h" }
                        , { am = "50 ኪ.ሜ", en = "50 km/h" }
                        ]
                    , correct = { am = "60 ኪ.ሜ", en = "60 km/h" }
                    , after =
                        [ { am = "70 ኪ.ሜ", en = "70 km/h" }
                        ]
                    }
          , explanation = "Even light cars are limited to 60 km/h on third-class roads because of their lower construction standard."
          }
        , { topic = Speed
          , prompt = { am = "ከከተማ ክልል ውጪ በሁለተኛ ደረጃ አውራጎዳና ውስጥ የአውቶሞቢል ተሽከርካሪ ትልቁ የፍጥነት ወሰን", en = "Maximum speed limit for an automobile on a second-class highway outside a city" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "25 ኪ.ሜ", en = "25 km/h" }
                        , { am = "50 ኪ.ሜ", en = "50 km/h" }
                        , { am = "60 ኪ.ሜ", en = "60 km/h" }
                        ]
                    , correct = { am = "70 ኪ.ሜ", en = "70 km/h" }
                    , after =
                        []
                    }
          , explanation = "On second-class highways automobiles may go up to 70 km/h, below the 100 km/h allowed on first-class roads."
          }
        , { topic = TrafficRules
          , prompt = { am = "የግል አውቶሞቢል ተሽከርካሪ ጠቅላላ ክብደቱ", en = "The gross weight of a private automobile" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "2500 ኪ.ግ በታች", en = "Under 2500 kg" }
                        , { am = "3000 ኪ.ግ በታች", en = "Under 3000 kg" }
                        ]
                    , correct = { am = "3500 ኪ.ግ በታች", en = "Under 3500 kg" }
                    , after =
                        [ { am = "4000 ኪ.ግ በታች", en = "Under 4000 kg" }
                        ]
                    }
          , explanation = "Vehicles are classed by gross weight for licensing and speed limits, and a private automobile is one weighing under 3500 kg."
          }
        , { topic = TrafficRules
          , prompt = { am = "የመለስተኛ ተሽከርካሪ ጠቅላላ ክብደቱ", en = "The gross weight of a medium vehicle" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "2500 ኪ.ግ - 3000 ኪ.ግ", en = "2500 kg – 3000 kg" }
                        , { am = "2500 ኪ.ግ - 3500 ኪ.ግ", en = "2500 kg – 3500 kg" }
                        ]
                    , correct = { am = "3500 ኪ.ግ - 7500 ኪ.ግ", en = "3500 kg – 7500 kg" }
                    , after =
                        [ { am = "5500 ኪ.ግ - 8000 ኪ.ግ", en = "5500 kg – 8000 kg" }
                        ]
                    }
          , explanation = "Medium vehicles sit between automobiles (under 3500 kg) and heavy trucks (over 7500 kg), so their range is 3500–7500 kg."
          }
        , { topic = TrafficRules
          , prompt = { am = "የከባድ ካሚዮን ተሽከርካሪ ጠቅላላ ክብደቱ", en = "The gross weight of a heavy truck" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "2500 ኪ.ግ - 3000 ኪ.ግ", en = "2500 kg – 3000 kg" }
                        , { am = "2500 ኪ.ግ - 3500 ኪ.ግ", en = "2500 kg – 3500 kg" }
                        , { am = "5500 ኪ.ግ - 8000 ኪ.ግ", en = "5500 kg – 8000 kg" }
                        ]
                    , correct = { am = "7500 ኪ.ግ በላይ", en = "Over 7500 kg" }
                    , after =
                        []
                    }
          , explanation = "Anything heavier than the medium class's 7500 kg upper limit counts as a heavy truck."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ ጠቅላላ ክብደቱን፣ርዝመት ፣ሞዴል ፣ጉልበት ፣የሞተር ሲሲ ፣የሚጠቀመው ነዳጅ ፣ የማርሽ ሁኔታ እና የመሳሰሉትን የሚያካትተው ማንዋል ምን ይባላል", en = "What is the manual that lists a vehicle's gross weight, length, model, power, engine cc, fuel type, gearbox and similar details called?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኦነርስ ማንዋል", en = "Owner's manual" }
                        ]
                    , correct = { am = "እስፔሲፊኬሽን ማንዋል", en = "Specification manual" }
                    , after =
                        [ { am = "ወቅታዊ የጥገና ማንዋል", en = "Periodic maintenance manual" }
                        , { am = "የጥገና ቅደም ተከተል ማንዋል", en = "Repair procedure manual" }
                        ]
                    }
          , explanation = "Technical data such as weight, dimensions, engine size and fuel type are the vehicle's specifications, collected in the specification manual."
          }
        , { topic = Vehicle
          , prompt = { am = "የደህንነት ቀበቶ ፣የሬዲዮታ አጠቃቀም ፣የኤሲ አጠቃቀም ፣ወንበር የማስተካከል የሚያካትተው ማንዋል ምን ይባላል", en = "What is the manual that covers the seat belt, using the radio, using the AC and adjusting the seat called?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ኦነርስ ማንዋል", en = "Owner's manual" }
                    , after =
                        [ { am = "እስፔሲፊኬሽን ማንዋል", en = "Specification manual" }
                        , { am = "ወቅታዊ የጥገና ማንዋል", en = "Periodic maintenance manual" }
                        , { am = "የጥገና ቅደም ተከተል ማንዋል", en = "Repair procedure manual" }
                        ]
                    }
          , explanation = "The owner's manual explains to the driver how to operate the vehicle's everyday features such as belts, seats, radio and air conditioning."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪውን የሞተር ዘይት የነዳጅ ማጣሪያ የአየር ማጣሪያ እና የመሳሰሉትን የመቀየሪያ ጊዜ የሚያስረዳው ማንዋል", en = "The manual that explains when to change the engine oil, fuel filter, air filter and similar items" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኦነርስ ማንዋል", en = "Owner's manual" }
                        , { am = "እስፔሲፊኬሽን ማንዋል", en = "Specification manual" }
                        ]
                    , correct = { am = "ወቅታዊ የጥገና ማንዋል", en = "Periodic maintenance manual" }
                    , after =
                        [ { am = "የጥገና ቅደም ተከተል ማንዋል", en = "Repair procedure manual" }
                        ]
                    }
          , explanation = "Oil and filter changes are scheduled service items, so their intervals are given in the periodic maintenance manual."
          }
        , { topic = Vehicle
          , prompt = { am = "በጥገና ወቅት ለጥገና ሰራተኞች በብቃት ስራቸውን በቅደም ተከተል ለማከናወን የሚረዳ ማንዋል", en = "The manual that helps mechanics carry out repair work efficiently in the right order" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኦነርስ ማንዋል", en = "Owner's manual" }
                        , { am = "እስፔሲፊኬሽን ማንዋል", en = "Specification manual" }
                        , { am = "ወቅታዊ የጥገና ማንዋል", en = "Periodic maintenance manual" }
                        ]
                    , correct = { am = "የጥገና ቅደም ተከተል ማንዋል", en = "Repair procedure manual" }
                    , after =
                        []
                    }
          , explanation = "The repair procedure manual is written for technicians and lays out step-by-step sequences for dismantling and repairing parts."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሞተር የመጣውን ክብ ዙር ወደ አንግል ዙር የሚቀይር የተሽከርካሪ ክፍል", en = "The vehicle part that turns the rotation coming from the engine through an angle" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሞተሪኖ", en = "Starter motor" }
                        , { am = "ካምቢዮ", en = "Gearbox" }
                        , { am = "ፕሮፒለር ሻፍት", en = "Propeller shaft" }
                        ]
                    , correct = { am = "ዲፈረንሻል", en = "Differential" }
                    , after =
                        []
                    }
          , explanation = "The differential's bevel gears turn the propeller shaft's rotation through 90 degrees so it can drive the axle shafts to the wheels."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ጤንነቱ የተጠበቀ አሽከርካሪ መገለጫው", en = "What characterises a driver who is in good health?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ማስተዋል አይችልም", en = "Cannot perceive properly" }
                        , { am = "የመወሰን ችሎታው ይቀንሳል", en = "Decision-making ability is reduced" }
                        , { am = "ለማሽከርከር ዝግጁነት ይጎድለዋል", en = "Lacks readiness to drive" }
                        ]
                    , correct = { am = "መልስ የለውም", en = "None of the above" }
                    , after =
                        []
                    }
          , explanation = "All the listed options describe an unwell or impaired driver; a healthy driver perceives, decides and is ready to drive normally."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪ ወደ ኋላ ሲመለስ የሚበራ መብራት ምልክት አይነት ምንድነው ነው", en = "What colour is the light that comes on when a vehicle reverses?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቀይ", en = "Red" }
                        ]
                    , correct = { am = "ነጭ", en = "White" }
                    , after =
                        [ { am = "ቢጫ", en = "Yellow" }
                        , { am = "አረንጓዴ", en = "Green" }
                        ]
                    }
          , explanation = "Reversing lights are white so they light the area behind the car and warn others that it is backing up."
          }
        , { topic = RoadSigns
          , prompt = { am = "ከአለም አቀፍ የመንገድ ላይ ምልክቶች ውስጥ መረጃ ሰጪ ያልሆነው", en = "Which of these is not something international informative signs do?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አቅጣጫ ጠቋሚ መረጃ ይሰጣል", en = "Give direction information" }
                        ]
                    , correct = { am = "የነዳጅ መጠን መረጃ ይሰጣል", en = "Give fuel level information" }
                    , after =
                        [ { am = "በቅርብ እርቀት የሚገኝ ቦታ የሚጠቁም መረጃ ይሰጣል", en = "Point out nearby places" }
                        , { am = "የርቀት ጠቋሚ መረጃ ይሰጣል", en = "Give distance information" }
                        ]
                    }
          , explanation = "Informative road signs tell drivers about directions, distances and nearby services; a vehicle's fuel level is shown by its own gauge, not by road signs."
          }
        , { topic = Safety
          , prompt = { am = "የመኪና የጐንና የኋላ መመልከቻ ስፖኪዮዎች ጠቀሜታ ያልሆነው", en = "Which is not a purpose of a car's side and rear-view mirrors?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ከኋላ ያለውን የትራፊክ እንቅስቃሴ ለመቆጣጠር", en = "To monitor traffic behind" }
                        , { am = "ከግራ ያሉትን ተሽከርካሪዎች እንቅስቃሴ ለመቆጣጠር", en = "To monitor vehicles on the left" }
                        ]
                    , correct = { am = "ከፊት ያሉትን ተሽከርካሪዎች እንቅስቃሴ ለመቆጣጠር", en = "To monitor vehicles in front" }
                    , after =
                        [ { am = "ከቀኝ ያሉትን ተሽከርካሪዎች እንቅስቃሴ ለመቆጣጠር", en = "To monitor vehicles on the right" }
                        ]
                    }
          , explanation = "Mirrors show what is behind and beside the car; traffic in front is seen directly through the windscreen."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/no-parking-p.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ለረጅም ሰዓት ማቆም የሚከለከል ሲሆን ሹፌሩ ሳይወርድ ሰው መጫንም ሆነ ማውረድ ይችላል", en = "Parking for a long time is prohibited, but you may pick up or drop off passengers without the driver getting out" }
                    , after =
                        [ { am = "መጫንም ሆነ ማውረድ ክልክል ነው", en = "Both loading and unloading are prohibited" }
                        , { am = "መኪና ማቆሚያ ቦታ መሆኑን ያመለክታል", en = "It marks a parking area" }
                        , { am = "ተሽከርካሪው የተበላሸ ስለሆነ ተጠንቅቀህ አሽከርክር", en = "Broken-down vehicle; drive carefully" }
                        ]
                    }
          , explanation = "A no-parking sign bans leaving the vehicle parked, but a brief stop to let passengers on or off with the driver staying at the wheel is still allowed."
          }
        , { topic = Vehicle
          , prompt = { am = "እያሽከረከርን ከቆይታ በኋላ ይህ ምልክት ቢበራ ትርጉም ምንድነው", en = "If this light comes on after driving for a while, what does it mean?" }
          , figure = Just "/signs/warning-coolant-temperature.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የተሽከርካሪው ፍሬን መበላሸትን ያሳያል", en = "The brakes are faulty" }
                        ]
                    , correct = { am = "የተሽከርካሪው የሞተር ሙቀት ከመጠን በላይ መሆኑን ያሳያል", en = "The engine is overheating" }
                    , after =
                        [ { am = "የተሽከርካሪው ሞተር ዘይት መፍሰሱን ያሳያል", en = "Engine oil is leaking" }
                        , { am = "የተሽከርካሪው ነዳጅ መፍሰሱን ያሳያል", en = "Fuel is leaking" }
                        ]
                    }
          , explanation = "The thermometer-in-liquid symbol is the coolant temperature warning; when it lights up red the engine is running too hot."
          }
        , { topic = RoadMarkings
          , prompt = { am = "በምስሉ ላይ የሚታየው ተሽከርካሪ ቀስቱ እንደሚያመለክተው ዞሮ ወደ ኋላ መመለስ ይችላል", en = "The vehicle in the picture may make a U-turn as the arrow shows." }
          , figure = Just "/signs/u-turn-solid-line-side.svg"
          , answer = TrueFalse False
          , explanation = "The car is on the side next to the solid line, and a solid line may not be crossed, so it cannot turn back across it."
          }
        , { topic = RoadMarkings
          , prompt = { am = "በምስሉ ላይ የሚታየው ተሽከርካሪ ቀስቱ እንደሚያመለክተው ዞሮ ወደ ኋላ መመለስ ይችላል", en = "The vehicle in the picture may make a U-turn as the arrow shows." }
          , figure = Just "/signs/u-turn-dashed-line-side.svg"
          , answer = TrueFalse True
          , explanation = "Where a dashed line runs beside a solid one, traffic on the dashed side may cross, so the van can turn back."
          }
        , { topic = Vehicle
          , prompt = { am = "ከነዳጅ ማጠራቀሚያ ጋን ቤንዚን ስቦ ወደ ካርብሬቶር የሚያደርስ", en = "The part that draws petrol from the fuel tank and delivers it to the carburettor" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሎት ቫልቭ", en = "Float valve" }
                        , { am = "ትሮትል ቫልቭ", en = "Throttle valve" }
                        ]
                    , correct = { am = "ፊውል ፓምፕ", en = "Fuel pump" }
                    , after =
                        [ { am = "ፊውል ፊልተር", en = "Fuel filter" }
                        ]
                    }
          , explanation = "The fuel pump creates the suction and pressure that move petrol from the tank up to the carburettor; the filter only cleans it on the way."
          }
        , { topic = Vehicle
          , prompt = { am = "ለፍሬን መደረግ ያለበት ጥንቃቄ", en = "Care that should be taken of the brakes" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በፍሬን ዘይት መያዣ ቋት ውስጥ በቂ ዘይት መኖሩን ዘወትር ማየት", en = "Regularly check there is enough fluid in the brake fluid reservoir" }
                        , { am = "የፍሬን ሸራን በተወሰነ ጊዜ ሰርቪስ ማስደረግ", en = "Have the brake linings serviced at set intervals" }
                        , { am = "አሁንም አሁንም ደጋግሞ ፍሬን ያለመያዝ", en = "Avoid braking over and over unnecessarily" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Brakes stay effective only with enough fluid, serviced linings and no overheating from constant braking, so all three are needed."
          }
        , { topic = Safety
          , prompt = { am = "ለአንድ አሽከርካሪ መያዝ ያለበት ጠቃሚ መረጃ", en = "Useful information a driver should carry" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የፖሊስ ጣቢያ ስልክ ቁጥር", en = "Police station phone number" }
                        , { am = "አንቡላንስ አገልግሎት ሰጪ ስልክ ቁጥር", en = "Ambulance service phone number" }
                        , { am = "የሆስፒታሎች ስልክ ቁጥር", en = "Hospital phone numbers" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "After a crash or breakdown, quick contact with police, ambulance and hospitals can save lives, so a driver should have all these numbers to hand."
          }
        , { topic = Vehicle
          , prompt = { am = "ውኃ ከራዲያተር ወደ ሞተር የሚገባው በታችኛው ሆዝ (ቱቦ) ነው", en = "Coolant flows from the radiator into the engine through the lower hose." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Hot coolant leaves the engine through the upper hose, cools as it falls through the radiator, and the water pump draws it back into the engine through the lower hose."
          }
        , { topic = Safety
          , prompt = { am = "በአደጋ ጊዜ ከመሪውና ከዳሽ ቦርድ ውስጥ በአየር የተሞላ ከረጢት በመውጣትና አሽከርካሪውን አቅፎ በመያዝ ከተሽከርካሪው አካል ጋር እንዳይጋጭ የሚረዳ", en = "In a crash, an air-filled bag comes out of the steering wheel and dashboard and holds the driver so they don't hit the vehicle body. This is the" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ኤር ባግ", en = "Airbag" }
                    , after =
                        [ { am = "የደህንነት ቀበቶ", en = "Seat belt" }
                        , { am = "ሴፍቲ ቤልት", en = "Safety belt" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "An airbag inflates in a fraction of a second during a collision, cushioning the occupant so their head and chest don't strike the wheel or dashboard."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/max-width-3m.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ከ3 ደቂቃ በላይ በአካባቢው ለማቆም የተከለከለ", en = "Stopping here for more than 3 minutes is prohibited" }
                        , { am = "በመዘግየት ለማቆም የተከለከለ", en = "Stopping with delay is prohibited" }
                        , { am = "ለጭነት ተሽከርካሪ ለረጅም ጊዜ ለማቆም የተከለከለ", en = "Long-term parking of trucks is prohibited" }
                        ]
                    , correct = { am = "ስፋት በሜትር በምልክቱ ላይ ከተመለከተው በላይ ለሆነ ተሽከርካሪ ማለፍ የተከለከለ", en = "Vehicles wider than the width in metres shown on the sign may not pass" }
                    , after =
                        []
                    }
          , explanation = "Horizontal arrows pointing at a measurement on a red-ringed disc set a maximum width; vehicles wider than 3 m would not fit through the restricted section."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/max-axle-load-8000kg.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የአክስሉ ጭነት በምልክቱ ላይ ከተመለከተው ጭነት በላይ ለሆነ ተሽከርካሪ ማለፍ የተፈቀደ", en = "Vehicles with an axle load above the load shown may pass" }
                        ]
                    , correct = { am = "የአክስሉ ጭነት በምልክቱ ላይ ከተመለከተው ጭነት በላይ ለሆነ ተሽከርካሪ ማለፍ የተከለከለ", en = "Vehicles with an axle load above the load shown may not pass" }
                    , after =
                        [ { am = "ለጭነት ተሽከርካሪ ለረጅም ጊዜ ለማቆም የተከለከለ", en = "Long-term parking of trucks is prohibited" }
                        , { am = "ስፋቱ በሜትር በምልክቱ ላይ ከተመለከተው በላይ ለሆነ ተሽከርካሪ ማለፍ የተከለከለ", en = "Vehicles wider than the width in metres shown may not pass" }
                        ]
                    }
          , explanation = "The axle symbol with a weight limits how much load any single axle may carry, protecting weak roads and bridges from damage by overloaded axles."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/max-height-3m.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ከ3 ደቂቃ በላይ በአካባቢው ለማቆም የተከለከለ", en = "Stopping here for more than 3 minutes is prohibited" }
                        , { am = "በመዘግየት ለማቆም የተከለከለ", en = "Stopping with delay is prohibited" }
                        , { am = "ለጭነት ተሽከርካሪ ለረጅም ጊዜ ለማቆም የተከለከለ", en = "Long-term parking of trucks is prohibited" }
                        ]
                    , correct = { am = "ጠቅላላ ከፍታው በምልክቱ ላይ ከተመለከተው በላይ ለሆነ ተሽከርካሪ ማለፍ የተከለከለ ነው", en = "Vehicles taller than the total height shown on the sign may not pass" }
                    , after =
                        []
                    }
          , explanation = "Vertical arrows pointing at a measurement set a maximum height, usually before a low bridge or tunnel that taller vehicles would strike."
          }
        , { topic = Vehicle
          , prompt = { am = "በካምቢዮ ውስጥ ትልቁ ጥርስ ትንሹ ጥርስ ሲነዳ ፍጥነት ይገኛል", en = "In the gearbox, speed is gained when a large gear drives a small gear." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "When a larger gear turns a smaller one, the small gear spins faster, so output speed rises while torque falls."
          }
        , { topic = Vehicle
          , prompt = { am = "በካምቢዮ ውስጥ ትንሹ ጥርስ ትልቁ ጥርስ ሲነዳ ጉልበት ይገኛል", en = "In the gearbox, power (torque) is gained when a small gear drives a large gear." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A small gear driving a large one turns it more slowly but with greater torque, which is why low gears give pulling power."
          }
        , { topic = Vehicle
          , prompt = { am = "በካምቢዮ ውስጥ ሶስት ጥርሶች ሲነዳዱ የአቅጣጫ ለውጥ ይገኛል", en = "In the gearbox, a change of direction is obtained when three gears drive each other." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Two meshing gears turn in opposite directions; adding a third (idler) gear reverses the rotation again, which is how reverse gear works."
          }
        , { topic = Vehicle
          , prompt = { am = "ባብዛኛው የከባድ ተሽከርካሪ ፍሬን የሚሰራው በነፋስ ነው", en = "Heavy vehicle brakes mostly work by air." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Trucks and buses use compressed-air brakes because air can deliver the large braking force they need and a small leak does not cause total failure."
          }
        , { topic = Vehicle
          , prompt = { am = "ፌውል ፓምፕ ወደ ካርቡሬተር የሚገባውን ነዳጅ የሚያጣራ የተሽከርካሪ ክፍል ነው", en = "The fuel pump is the part that filters the fuel going to the carburetor." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The fuel pump moves fuel from the tank to the carburetor; cleaning it is the job of the fuel filter."
          }
        , { topic = Vehicle
          , prompt = { am = "በሞተር ውስጥ ዘይት የሚሰራጭበት መንገድ", en = "How oil is distributed inside the engine" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በክራንክ ሻፍት ርጭት", en = "By crankshaft splash" }
                        , { am = "በፌውል ፓምፕ", en = "By the fuel pump" }
                        , { am = "አይል ፓምፕ", en = "Oil pump" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "Engine oil reaches moving parts both by being splashed up by the spinning crankshaft and by being pushed under pressure by the oil pump; the fuel pump only moves fuel."
          }
        , { topic = Vehicle
          , prompt = { am = "ወደ ሞተር ውስጥ የሚገባን አየር የሚያጣራ የተሽከርካሪ ክፍል", en = "The vehicle part that filters the air entering the engine" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ዴብራተር", en = "Debrater (air filter)" }
                        , { am = "በፌውል ፓምፕ", en = "By the fuel pump" }
                        , { am = "ኤር ክሊነር", en = "Air cleaner" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "\"Debrater\" and \"air cleaner\" are two names for the same air filter, which stops dust from entering and wearing the cylinders."
          }
        , { topic = Vehicle
          , prompt = { am = "በአይል ፓን ውስጥ በመሆን ዘይትን የሚያጣራ የተሽከርካሪ ክፍል", en = "The vehicle part inside the oil pan that filters the oil" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ዴብራተር", en = "Debrater (air filter)" }
                        , { am = "በፌውል ፓምፕ", en = "By the fuel pump" }
                        , { am = "ኤር ክሊነር", en = "Air cleaner" }
                        ]
                    , correct = { am = "ስትሬነር", en = "Strainer" }
                    , after =
                        []
                    }
          , explanation = "The oil strainer sits at the pump pickup in the oil pan and screens out large particles before the oil is pumped through the engine."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ ትይንት መቆጣጠሪያ ያልሆነው", en = "Which is not a visibility control of the vehicle?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የግንባር መብራት", en = "Headlight" }
                        , { am = "የዝናብ መጥረጊያ", en = "Windscreen wiper" }
                        , { am = "የውስጥ መብራት", en = "Interior light" }
                        ]
                    , correct = { am = "ካምቢዮ", en = "Gearbox" }
                    , after =
                        []
                    }
          , explanation = "Lights and wipers help the driver see; the gearbox transmits engine power and has nothing to do with visibility."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ የመገናኛ መሳሪያ ያልሆነው", en = "Which is not a vehicle communication device?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሬቻ", en = "Turn signal" }
                        , { am = "የግንባር መብራት", en = "Headlight" }
                        , { am = "ጡሩምባ", en = "Horn" }
                        ]
                    , correct = { am = "የውስጥ መስታወት", en = "Interior mirror" }
                    , after =
                        []
                    }
          , explanation = "Signals, headlights and the horn send messages to other road users; the interior mirror only helps the driver see behind."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ አቅጣጫ መቆጣጠሪያ የሆነው", en = "Which is the vehicle's direction control?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የእጅ ፍሬን", en = "Handbrake" }
                        , { am = "የግንባር መብራት", en = "Headlight" }
                        ]
                    , correct = { am = "መሪ", en = "Steering wheel" }
                    , after =
                        [ { am = "ነዳጅ መስጫ ፔዳል", en = "Accelerator pedal" }
                        ]
                    }
          , explanation = "The steering wheel turns the front wheels and so controls which way the vehicle goes."
          }
        , { topic = Vehicle
          , prompt = { am = "ፐሮፐለር ሻፍት በወጣ ገባ መንገድ እንዳይጣመም ወይም እንዳይሰበር የሚያደርግ የተሽከርካሪ ክፍል", en = "The part that keeps the propeller shaft from bending or breaking on uneven roads" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ዩኒቨርሳል ጆይንት", en = "Universal joint" }
                    , after =
                        [ { am = "አሞርዝራተር", en = "Shock absorber" }
                        , { am = "ፒኒየን ጊር", en = "Pinion gear" }
                        , { am = "ክራውን ጊር", en = "Crown gear" }
                        ]
                    }
          , explanation = "Universal joints let the propeller shaft flex at an angle as the axle moves up and down, so it transmits power without bending."
          }
        , { topic = RoadSigns
          , prompt = { am = "የለመንገዱን ሁኔታ አስቀድሞ የሚገልጽ አለም አቀፍ የመንገድ ዳር ምልክት", en = "The international road sign that tells you about road conditions ahead" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሚያስገድዱ", en = "Mandatory" }
                        , { am = "የሚከለክሉ", en = "Prohibitory" }
                        ]
                    , correct = { am = "የሚያስጠነቅቁ", en = "Warning" }
                    , after =
                        [ { am = "ቅድሚያ የሚሰጡ", en = "Priority" }
                        ]
                    }
          , explanation = "Warning signs (red-bordered triangles) alert drivers in advance to hazards and conditions ahead, such as bends, slopes or narrowings."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ክፍሎች ውስጥ በቤንዚን እና በናፍጣ ሞተር ላይ በጋራ የማይካተተው የቱ ነው", en = "Which of these parts is not common to both petrol and diesel engines?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የአየር ማጣሪያ", en = "Air filter" }
                        , { am = "የነዳጅ ማጣሪያ", en = "Fuel filter" }
                        ]
                    , correct = { am = "ካርቡሬተር", en = "Carburetor" }
                    , after =
                        [ { am = "የነዳጅ ማጠራቀሚያ ጋን", en = "Fuel tank" }
                        ]
                    }
          , explanation = "A carburetor mixes air and petrol before ignition by spark; diesel engines inject fuel directly into compressed hot air, so they have no carburetor."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት የሞተር ክፍሎች ውስጥ አስገቢ እና አስወጪ ቫልቮችን ፣ቫልቭ ስፕሪንጎችን ፣ ብላንቼሪ ፣ካንዴላ ወይም ኖዝሎች የሚታሰርበት", en = "Which engine part holds the intake and exhaust valves, valve springs, rocker gear, and spark plugs or injector nozzles?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቴስታታ", en = "Testata" }
                        , { am = "ሲሊንደር በሎክ", en = "Cylinder block" }
                        , { am = "ሲሊንደር ሄድ", en = "Cylinder head" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "\"Testata\" is the Italian-derived workshop name for the cylinder head, the cover on top of the block where the valves, springs, rockers and plugs or injectors are mounted."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪን የኤሌክትሪክ መስመር እና ክፍሎችን በተለያዩ ምክንያቶች ሊፈጠሩ ከሚችሉ ጉዳቶች እራሱን በማቃጠል የሚታደግ", en = "What protects the vehicle's electrical wiring and components from damage by burning out itself?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሪሌይ", en = "Relay" }
                        ]
                    , correct = { am = "ፊውዝ", en = "Fuse" }
                    , after =
                        [ { am = "ፊላሽር", en = "Flasher" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "A fuse contains a thin wire that melts when current gets too high, breaking the circuit before wiring or components overheat."
          }
        , { topic = Safety
          , prompt = { am = "ተሽከርካሪን በብልሽት ምክንያት መቆሙን ለመጠቆም የሚያገለግል አንፀባራቂ ምልክት ምን አይነት ነው", en = "What shape is the reflective sign used to show that a vehicle has stopped because of a breakdown?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ሶስት ማእዘን", en = "Triangle" }
                    , after =
                        [ { am = "አራት ማእዘን", en = "Rectangle" }
                        , { am = "አምስት ማእዘን", en = "Pentagon" }
                        , { am = "ክብ ቅርፅ ያለው", en = "Circular" }
                        ]
                    }
          , explanation = "The breakdown warning is a red reflective triangle placed behind (and in front of) the stopped vehicle so approaching drivers see it in time."
          }
        , { topic = Vehicle
          , prompt = { am = "በራዲያተር ክዳን ላይ የሚገኝ ቫልቭ", en = "The valve found on the radiator cap" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቫኪዩም ቫልቭ", en = "Vacuum valve" }
                        , { am = "ፕሬዠር ቫልቭ", en = "Pressure valve" }
                        , { am = "ኢንቴክ ቫልቭ", en = "Intake valve" }
                        ]
                    , correct = { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                    , after =
                        []
                    }
          , explanation = "The radiator cap has a pressure valve that releases excess pressure to the overflow tank and a vacuum valve that lets coolant back in as the engine cools."
          }
        , { topic = Vehicle
          , prompt = { am = "የአስገቢ እና አስወጪ ቫልቭ ስፕሪንጎች ቫልቮችን ለመክፈት ያገለግላሉ", en = "Intake and exhaust valve springs are used to open the valves." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The camshaft pushes the valves open; the valve springs pull them closed again and keep them sealed."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ የሞተር ማቀዝቀዣ ክፍል የሆነው", en = "Which of the following is part of the engine cooling system?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፋን ወይም ቬንትሌተር", en = "Fan or ventilator" }
                        , { am = "የውኃ ፓምፕ", en = "Water pump" }
                        , { am = "ቴርሞስታት", en = "Thermostat" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "The fan cools the radiator, the water pump circulates coolant and the thermostat controls coolant flow, so all three belong to the cooling system."
          }
        , { topic = Vehicle
          , prompt = { am = "ፍሬናታ አድርጎ ቀረ ማለት የእግር ፍሬንም ሆነ የእጅ ፍሬን ሳይያዝ ፍሬን ይዞ ሲቀር ነው", en = "\"Brake drag\" means the brakes stay applied even when neither the foot brake nor the handbrake is being used." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "When brake shoes or pads fail to release, they keep rubbing even with the pedal and lever off, which overheats the brakes and slows the vehicle."
          }
        , { topic = Vehicle
          , prompt = { am = "የእጅ ፍሬን የማቆሚያ ፍሬን በመባል ይታወቃል", en = "The handbrake is also known as the parking brake." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The handbrake mechanically locks the wheels to hold a stationary vehicle in place, which is why it is called the parking brake."
          }
        , { topic = Vehicle
          , prompt = { am = "የዚህ የዳሽ ቦርድ ምልክት በርቶ መቅረት ትርጉም ምንድነው", en = "What does it mean if this dashboard light stays on?" }
          , figure = Just "/signs/warning-door-open.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የተሽከርካሪው ስፖኪ ያለመስተካከል ያመለክታል", en = "Shows the vehicle's spokes are out of alignment" }
                        ]
                    , correct = { am = "የተሽከርካሪው በር በአግባቡ ያለመዘጋቱን ያሳያል", en = "Shows a door is not properly closed" }
                    , after =
                        [ { am = "ከተሽከርካሪው የጭነት ልክ በላይ እንደ ተጫነ ያሳያል", en = "Shows the vehicle is loaded beyond its capacity" }
                        , { am = "በተሽከርካሪው የጭነት ልክ እንደ ተጫነ ያሳያል", en = "Shows the vehicle is loaded to its capacity" }
                        ]
                    }
          , explanation = "The car outline with open doors lights up when a door switch detects that a door is not fully latched, warning you before you drive off."
          }
        , { topic = Vehicle
          , prompt = { am = "የዚህ የዳሽ ቦርድ ምልክት በርቶ መቅረት ትርጉም ምንድነው", en = "What does it mean if this dashboard light stays on?" }
          , figure = Just "/signs/warning-airbag.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የተሽከርካሪው ስፖኪ ያለመስተካከል ያመለክታል", en = "Shows the vehicle's spokes are out of alignment" }
                        , { am = "የተሽከርካሪው በር በአግባቡ ያለመዘጋቱን ያሳያል", en = "Shows a door is not properly closed" }
                        , { am = "ከተሽከርካሪው የጭነት ልክ በላይ እንደ ተጫነ ያሳያል", en = "Shows the vehicle is loaded beyond its capacity" }
                        ]
                    , correct = { am = "የተሽከርካሪው ኤርባግ የማይሰራ መሆኑን", en = "That the vehicle's airbag is not working" }
                    , after =
                        []
                    }
          , explanation = "If the airbag (SRS) light stays on after start-up, the system has detected a fault and the airbags may not deploy in a crash."
          }
        , { topic = Vehicle
          , prompt = { am = "በቀኝ በኩል ያለው ባሊስትራ ቢሰበር መሪው የሚጎትተው ወዴት ነው", en = "If the right-side leaf spring breaks, which way does the steering pull?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ወደ ግራ", en = "To the left" }
                        ]
                    , correct = { am = "ወደ ቀኝ", en = "To the right" }
                    , after =
                        [ { am = "ወደ ፊት", en = "Forward" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "A broken spring lets that side of the vehicle sag, so the weight shifts toward it and the steering pulls to the broken (right) side."
          }
        , { topic = Vehicle
          , prompt = { am = "በወጣ ገባ መንገድ ምክናየት በዲፍሬንሻል እና በካምቢዮ መካከል የሚፈጠረውን ርቀት በመጠበቅ ፐሮፐለር ሻፍት እንዳይሰበር የሚያደርግ ክፍል", en = "The part that absorbs the changing distance between the differential and gearbox on uneven roads so the propeller shaft doesn't break" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ዩኒቨርሳል ጆይንት", en = "Universal joint" }
                        , { am = "አሞርዝራተር", en = "Shock absorber" }
                        , { am = "ፒኒየን ጊር", en = "Pinion gear" }
                        ]
                    , correct = { am = "ስሊፕ ጆይንት", en = "Slip joint" }
                    , after =
                        []
                    }
          , explanation = "The slip joint lets the propeller shaft lengthen and shorten as the axle moves up and down; the universal joint handles changes in angle, not length."
          }
        , { topic = Vehicle
          , prompt = { am = "በሞተር ውስጥ የአየር መጠን በዝቶ የነዳጅ መጠን ሲያንስ የሚፈጠረው የጪስ አይነት ምን አይነት ነው", en = "What kind of exhaust smoke is produced when there is too much air and too little fuel in the engine?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ነጭ ጪስ", en = "White smoke" }
                    , after =
                        [ { am = "ጥቁር ጪስ", en = "Black smoke" }
                        , { am = "ሰማያዊ ጪስ", en = "Blue smoke" }
                        , { am = "መልስ የለም", en = "None of the above" }
                        ]
                    }
          , explanation = "In this exam's scheme a lean (air-rich) mixture is linked to white smoke, a rich (fuel-rich) mixture to black smoke, and burning oil to blue smoke."
          }
        , { topic = Vehicle
          , prompt = { am = "በሞተር ውስጥ የነዳጅ መጠን በዝቶ የአየር መጠን ሲያንስ የሚፈጠረው የጪስ አይነት ምን አይነት ነው", en = "What kind of exhaust smoke is produced when there is too much fuel and too little air in the engine?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ነጭ ጪስ", en = "White smoke" }
                        ]
                    , correct = { am = "ጥቁር ጪስ", en = "Black smoke" }
                    , after =
                        [ { am = "ሰማያዊ ጪስ", en = "Blue smoke" }
                        , { am = "መልስ የለም", en = "None of the above" }
                        ]
                    }
          , explanation = "With too little air the fuel cannot burn completely, and the unburnt carbon leaves the exhaust as black soot."
          }
        , { topic = Vehicle
          , prompt = { am = "ፋሻ ተበልቶ ዘይት ሲቀጣጠል የሚፈጠረው የጪስ አይነት ምን አይነት ነው", en = "What kind of smoke is produced when worn piston rings let oil burn?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ነጭ ጪስ", en = "White smoke" }
                        , { am = "ጥቁር ጪስ", en = "Black smoke" }
                        ]
                    , correct = { am = "ሰማያዊ ጪስ", en = "Blue smoke" }
                    , after =
                        [ { am = "መልስ የለም", en = "None of the above" }
                        ]
                    }
          , explanation = "Worn rings let engine oil slip into the combustion chamber, and burning oil gives the exhaust a bluish smoke."
          }
        , { topic = Vehicle
          , prompt = { am = "4WD ማለት ምን ማለት ነው", en = "What does 4WD mean?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ተሽከርካሪው የፊት እግር የሚነዳ ሲሆን", en = "When the vehicle's front wheels are driven" }
                        , { am = "ተሽከርካሪው የኋላ እግር የሚነዳ ሲሆን", en = "When the vehicle's rear wheels are driven" }
                        , { am = "አውቶማቲክ ካምቢዮ", en = "Automatic gearbox" }
                        ]
                    , correct = { am = "ተሽከርካሪው አራቱም እግር የሚነዳ ሲሆን", en = "When all four wheels of the vehicle are driven" }
                    , after =
                        []
                    }
          , explanation = "4WD (four-wheel drive) sends engine power to all four wheels, giving more traction on loose or slippery ground."
          }
        , { topic = Vehicle
          , prompt = { am = "2WD ማለት ምን ማለት ነው", en = "What does 2WD mean?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ተሽከርካሪው በፊት እግር የሚነዳ ሲሆን", en = "When the vehicle is driven by the front wheels" }
                        , { am = "ተሽከርካሪው በኋላ እግር የሚነዳ ሲሆን", en = "When the vehicle is driven by the rear wheels" }
                        ]
                    , correct = { am = "ተሽከርካሪው ሁለቱም እግር የሚነዳ ሲሆን", en = "When two of the vehicle's wheels are driven" }
                    , after =
                        [ { am = "ተሽከርካሪው በፊት እና በኋላ እግር የሚነዳ ሲሆን", en = "When the vehicle is driven by both front and rear wheels" }
                        ]
                    }
          , explanation = "2WD (two-wheel drive) means engine power goes to only two wheels, either the front pair or the rear pair."
          }
        , { topic = Vehicle
          , prompt = { am = "ለሚያዳልጥ እና አሸዋማ መንገድ ስንጓዝ የሬዲዮታ ማርሽ ዘንግ መሆን ያለበት", en = "When driving on slippery and sandy roads, the transfer-case (reduction) lever should be in" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "H2", en = "H2" }
                        ]
                    , correct = { am = "H4", en = "H4" }
                    , after =
                        [ { am = "L4", en = "L4" }
                        , { am = "መልስ የለም", en = "None of the above" }
                        ]
                    }
          , explanation = "H4 drives all four wheels in the normal high range, giving extra grip on slippery or sandy surfaces while still allowing normal speeds."
          }
        , { topic = Vehicle
          , prompt = { am = "በማያስቸግር መንገድ ስንጓዝ የሬዲዮታ ማርሽ ዘንግ መሆን ያለበት", en = "When driving on an easy (normal) road, the transfer-case (reduction) lever should be in" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "H2", en = "H2" }
                    , after =
                        [ { am = "H4", en = "H4" }
                        , { am = "L4", en = "L4" }
                        , { am = "መልስ የለም", en = "None of the above" }
                        ]
                    }
          , explanation = "On good roads H2 (two-wheel drive, high range) is enough and saves fuel and wear on the drivetrain and tyres."
          }
        , { topic = Vehicle
          , prompt = { am = "የሬዲዮታ ማርሽ ዘንግ ከአንዱ ወደ አንዱ ስንቀይር ተሽከርካሪው", en = "When moving the transfer-case (reduction) lever from one position to another, the vehicle" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በዝግታ እየተጓዘ መሆን ይኖርበታል", en = "Must be moving slowly" }
                        ]
                    , correct = { am = "ሙሉ በሙሉ መቆም ይኖርበታል", en = "Must be completely stopped" }
                    , after =
                        [ { am = "በፍጥነት እየተጓዘ መሆን ይኖርበታል", en = "Must be moving fast" }
                        , { am = "መልስ የለም", en = "None of the above" }
                        ]
                    }
          , explanation = "Shifting the transfer case while moving can grind or break its gears, so the vehicle should be fully stopped before changing range."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ የነዳጅ ፍጆታን ከፍ ከሚያደርጉ ምክንያቶች", en = "Causes of increased fuel consumption" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የጎማ ነፋስ መጠን ማነስ", en = "Low tyre pressure" }
                        , { am = "ያለአግባብ ከባድ ማርሽ መጠቀም", en = "Using a low (heavy) gear unnecessarily" }
                        , { am = "ከተሽከርካሪው የጭነት አቅም በላይ መጫን", en = "Loading beyond the vehicle's capacity" }
                        ]
                    , correct = { am = "ሁሉም", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Soft tyres add rolling resistance, low gears keep the engine at high revs, and overloading makes the engine work harder, so each one burns more fuel."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/children-playground.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ወደፊት የህፃናት መጫወቻ ቦታ አለ", en = "Children's playground ahead" }
                    , after =
                        [ { am = "መንገዱ ባላንሱን የሳተ ስለሆነ ተጠንቅቀህ አሽከርክር", en = "The road is unbalanced, drive carefully" }
                        , { am = "የምድር ሚዛን ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Weighbridge ahead, drive carefully" }
                        , { am = "ማንኛውም ተሽከርካሪ በሞተር፣ በእንስሳት ፣በእጅ የሚገፋትን ጭምር ማለፍ የተከለከለ", en = "All vehicles, whether motorised, animal-drawn or hand-pushed, are prohibited" }
                        ]
                    }
          , explanation = "The seesaw symbol on a warning triangle warns of a children's play area nearby, where children may run into the road without looking."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/give-way-ahead.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለተላላፊ ቅድሚያ በመስጠት ተጠንቅቀህ አሽከርክር", en = "Give way to other traffic and drive carefully" }
                        ]
                    , correct = { am = "ቅድሚያ ስጥ የሚል ምልክት ወደፊት አለ", en = "Give-way sign ahead" }
                    , after =
                        [ { am = "ወደ አደባባይ ስለተቃረብክ ተጠንቅቀህ አሽከርክር", en = "You are approaching a roundabout, drive carefully" }
                        , { am = "ቁም የሚል ምልክት ወደፊት አለ", en = "Stop sign ahead" }
                        ]
                    }
          , explanation = "A warning triangle showing an arrow leading to a small inverted triangle tells you a give-way sign is coming up, so prepare to yield."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/stop-ahead.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለተላላፊ ቅድሚያ በመስጠት ተጠንቅቀህ አሽከርክር", en = "Give way to other traffic and drive carefully" }
                        , { am = "ቅድሚያ ስጥ የሚል ምልክት ወደፊት አለ", en = "Give-way sign ahead" }
                        , { am = "ወደ አደባባይ ስለተቃረብክ ተጠንቅቀህ አሽከርክር", en = "You are approaching a roundabout, drive carefully" }
                        ]
                    , correct = { am = "ቁም የሚል ምልክት ወደፊት አለ", en = "Stop sign ahead" }
                    , after =
                        []
                    }
          , explanation = "This warning triangle tells you a stop sign is ahead, so be ready to come to a full stop at the junction."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/disabled-persons.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለተላላፊ ቅድሚያ በመስጠት ተጠንቅቀህ አሽከርክር", en = "Give way to passing traffic and drive carefully" }
                        , { am = "ቅድሚያ ስጥ የሚል ምልክት ወደፊት አለ", en = "A give-way sign is ahead" }
                        ]
                    , correct = { am = "አካል ጉዳተኞች ስለሚያጋጥሙህ ተጠንቅቀህ አሽከርክር", en = "Drive carefully, you may meet people with disabilities" }
                    , after =
                        [ { am = "ቁም የሚል ምልክት ወደፊት አለ", en = "A stop sign is ahead" }
                        ]
                    }
          , explanation = "A triangular warning sign with a wheelchair warns that disabled people may be crossing or using the road ahead, so slow down and be ready to stop."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/road-narrows-right.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "መንገዱ በስተቀኝ በኩል እየጠበበ ስለሚሄድ ተጠንቅቀህ አሽከርክር", en = "The road narrows on the right, drive carefully" }
                    , after =
                        [ { am = "ቅድሚያ ስጥ የሚል ምልክት ወደፊት አለ", en = "A give-way sign is ahead" }
                        , { am = "መንገዱ በስተግራ በኩል እየጠበበ ስለሚሄድ ተጠንቅቀህ አሽከርክር", en = "The road narrows on the left, drive carefully" }
                        , { am = "ቁም የሚል ምልክት ወደፊት አለ", en = "A stop sign is ahead" }
                        ]
                    }
          , explanation = "The side whose line bends inward is the side where the carriageway gets narrower; here it is the right edge, so traffic must merge left carefully."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/cycle-route.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለብስክሌት ማለፍ የተከለከለ", en = "No entry for bicycles" }
                        ]
                    , correct = { am = "ለብስክሌት ማለፍ የተፈቀደ", en = "Route for bicycles" }
                    , after =
                        [ { am = "ለብስክሌት ማቆም የተከለከለ", en = "No parking for bicycles" }
                        , { am = "ለብስክሌት ማቆም የተፈቀደ", en = "Bicycle parking allowed" }
                        ]
                    }
          , explanation = "Blue circles are mandatory signs; a white bicycle on blue marks a path or lane reserved for cyclists."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/no-cycling.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ለብስክሌት ማለፍ የተከለከለ", en = "No entry for bicycles" }
                    , after =
                        [ { am = "ለብስክሌት ማለፍ ተከለከለ የተፈቀደ", en = "Bicycles permitted" }
                        , { am = "ለብስክሌት ማቆም የተከለከለ", en = "No parking for bicycles" }
                        , { am = "ለብስክሌት ማቆም የተፈቀደ", en = "Bicycle parking allowed" }
                        ]
                    }
          , explanation = "A red-ringed circle is a prohibition sign; with a bicycle inside it means bicycles may not enter or use that road."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/no-horn.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "የጥሩምባ ድምጽ ማሰማት የተከለከለበት", en = "Sounding the horn is prohibited" }
                    , after =
                        [ { am = "የጥሩምባ ድምጽ ማሰማት የተፈቀደ", en = "Sounding the horn is allowed" }
                        , { am = "የሙዚቃ ትምህርትቤት ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Drive carefully, a music school is ahead" }
                        , { am = "መልስ የለም", en = "None of the above" }
                        ]
                    }
          , explanation = "A horn crossed out by a red slash forbids using the horn, typically near hospitals, schools and other quiet zones."
          }
        , { topic = Safety
          , prompt = { am = "የተሽከርካሪ የአደጋ ጊዜ (ሃዛርድ) መብራት የምንጠቀመው", en = "When do we use a vehicle's hazard lights?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በአደጋ ጊዜ", en = "In an emergency" }
                        , { am = "በጭጋጋማ ጊዜ", en = "In fog" }
                        , { am = "ዝናባማ ጊዜ", en = "In rain" }
                        ]
                    , correct = { am = "ሁሉም", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Hazard lights warn other road users that your vehicle is a danger or hard to see, which applies in emergencies and in poor visibility such as fog or heavy rain."
          }
        , { topic = Vehicle
          , prompt = { am = "የፍሬን መብራት ጥቅም", en = "The purpose of the brake lights" }
          , figure = Just "/signs/hand-signal-arm-down-brake-lamps.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለመቆም ወይም መቆማችንን ያሳያል", en = "Shows we are stopping or have stopped" }
                        , { am = "በጭጋጋማ ጊዜ", en = "In fog" }
                        , { am = "ፍጥነት መቀነሳችንን ያሳያል", en = "Shows we are slowing down" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "Brake lights come on whenever the brake pedal is pressed, telling following drivers that you are slowing down or stopping."
          }
        , { topic = TrafficRules
          , prompt = { am = "የቀኝ ፍሬቻ መብራት ጥቅም", en = "The purpose of the right indicator" }
          , figure = Just "/signs/hand-signal-arm-up-right-lamp.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ጠርዝ ይዞ ለመቆም", en = "To pull over and stop at the kerb" }
                        , { am = "ወደ ቀኝ ለመታጠፍ", en = "To turn right" }
                        , { am = "ወደ ዝቅተኛ ፍጥነት ለመግባት", en = "To move into the slow lane" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "In right-hand traffic the right indicator signals any move to the right: turning right, moving into the slower right lane, or pulling over to the kerb to stop."
          }
        , { topic = TrafficRules
          , prompt = { am = "የግራ ፍሬቻ መብራት ጥቅም", en = "The purpose of the left indicator" }
          , figure = Just "/signs/hand-signal-arm-out-left-lamp.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ወደ ከፍተኛ ፍጥነት ለመግባት", en = "To move into the fast lane" }
                        , { am = "ከቆሙበት ለመነሳት", en = "To pull away from a stop" }
                        , { am = "ከፊት ያለን መኪና ቀድሞ ለመሄድ", en = "To overtake the car in front" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "The left indicator signals any move to the left into traffic: pulling out from the kerb, moving into the faster lane, or overtaking."
          }
        , { topic = Safety
          , prompt = { am = "በምሽት ወቅት ከፊት ተርፎ የሚወጣን ጭነት መኖሩን ለማመልከት የሚደረገው ቀይ ጨርቅ መንጠልጠል ነው", en = "At night, a load sticking out at the front is marked by hanging a red cloth." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A red cloth only works in daylight; at night a projecting load must be marked with a light or reflector so other drivers can actually see it."
          }
        , { topic = Vehicle
          , prompt = { am = "ቾክ ቫልቭ መጠቀም ጡንት በተለይ በቅዝቃዜ ወቅት የቤንዚን ሞተር ቶሎ እንዲነሳ ይረዳል", en = "Using the choke valve helps a petrol engine start quickly, especially in cold weather." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The choke restricts incoming air so a richer fuel mixture reaches the cylinders, which a cold petrol engine needs to fire."
          }
        , { topic = Vehicle
          , prompt = { am = "ነዳጅ እና አየር ወደ ስሊንደር የሚያስገባ የተሽከርካሪ ክፍል", en = "The part that lets fuel and air into the cylinder" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኤግዞስት ቫልቭ (አስወጪ ቫልቮላ)", en = "Exhaust valve" }
                        , { am = "ሮከር አርም", en = "Rocker arm" }
                        , { am = "ዲስትሪቢዩትር", en = "Distributor" }
                        ]
                    , correct = { am = "ኢንቴክ ቫልቭ (አስገቢ ቫልቮላ)", en = "Intake valve" }
                    , after =
                        []
                    }
          , explanation = "The intake valve opens on the intake stroke to admit the air-fuel mixture into the cylinder; the exhaust valve does the opposite job."
          }
        , { topic = Vehicle
          , prompt = { am = "የተቃጠለውን ነዳጅ እና አየር ጪስ ከስሊንደር የሚያስወጣ የተሽከርካሪ ክፍል", en = "The part that lets burnt fuel-air exhaust out of the cylinder" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ኤግዞስት ቫልቭ (አስወጪ ቫልቮላ)", en = "Exhaust valve" }
                    , after =
                        [ { am = "ሮከር አርም", en = "Rocker arm" }
                        , { am = "ዲስትሪቢዩትር", en = "Distributor" }
                        , { am = "ኢንቴክ ቫልቭ (አስገቢ ቫልቮላ)", en = "Intake valve" }
                        ]
                    }
          , explanation = "The exhaust valve opens on the exhaust stroke so the rising piston can push burnt gases out of the cylinder into the exhaust system."
          }
        , { topic = Vehicle
          , prompt = { am = "ፍላይ ዊል (ቮላኖ) የሚገጠመው ክራንክ ሻፍት ላይ ነው", en = "The flywheel is mounted on the crankshaft." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The flywheel is bolted to the rear end of the crankshaft, smoothing its rotation and providing the surface the clutch engages against."
          }
        , { topic = Vehicle
          , prompt = { am = "ግሎው ፕላግ መጠቀም ጡንት በተለይ በቅዝቃዜ ወቅት የናፍጣ ሞተር ቶሎ እንዲነሳ ይረዳል", en = "Using glow plugs helps a diesel engine start quickly, especially in cold weather." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Diesel engines ignite fuel by compression heat alone; glow plugs pre-heat the cylinder and air so ignition happens even when the engine is cold."
          }
        , { topic = SafeDriving
          , prompt = { am = "የተሽከርካሪው የጭነት ክብደት ሲጨምር ሰበቃ ይጨምራል", en = "As a vehicle's load weight increases, friction increases." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Friction grows with the force pressing the surfaces together, so more weight on the tyres means more friction with the road."
          }
        , { topic = Vehicle
          , prompt = { am = "በሞተር ውስጥ ዘይት የሚዘዋወርበት ክፍል ኦይል ጋለሪ ይባላል", en = "The passage in the engine through which oil circulates is called the oil gallery." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Oil galleries are drilled passages in the block and head that carry pressurised oil from the pump to the bearings and moving parts."
          }
        , { topic = Vehicle
          , prompt = { am = "አውቶማቲክ ማርሽ ያላቸው ተሽከርካሪዎች ማርሽ ለመቀየር ፍርሲዮኑን በደምብ መርገጥ ያስፈልጋል", en = "Automatic vehicles need the clutch pressed fully to change gear." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Automatic cars have no clutch pedal at all; the transmission changes gears by itself."
          }
        , { topic = Vehicle
          , prompt = { am = "አንድ ባትሪ ከተሽከርካሪ ለማውረድ በቅድሚያ የሚፈታው የባትሪው ፖዘቲቭ ተርሚናል ነው", en = "When removing a battery from a vehicle, the positive terminal is disconnected first." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The negative (earth) terminal comes off first, so a spanner touching the body while loosening the positive cannot cause a short circuit."
          }
        , { topic = Vehicle
          , prompt = { am = "የፒስተንን የቀጥታ እንቅስቃሴ ወደ ክብ ዙር የሚቀይር የሞተር አካል ክራንክ ሻፍት (ኮሎ) በመባል ይታወቃል", en = "The engine part that converts the piston's straight-line motion into rotation is called the crankshaft." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The connecting rods push on the crankshaft's offset throws, turning the pistons' up-and-down motion into rotation."
          }
        , { topic = Vehicle
          , prompt = { am = "በአውቶማቲክ ካምቢዮ ተሽከርካሪ የማርሹ ዘንግ በ P ፊደል አቅጣጫ ከሆን", en = "In an automatic car, if the gear lever is at P, it is" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ተሽከርካሪውን ወደ ፊት ለማንቀሳቀስ", en = "To move the vehicle forward" }
                        , { am = "ተሽከርካሪውን ወደ ኃላ ለማንቀሳቀስ", en = "To move the vehicle backward" }
                        ]
                    , correct = { am = "ተሽከርካሪውን ለማቆም", en = "To park the vehicle" }
                    , after =
                        [ { am = "ጉልበት ለመጨመር", en = "To increase pulling power" }
                        ]
                    }
          , explanation = "P (Park) mechanically locks the transmission so the parked vehicle cannot roll."
          }
        , { topic = Vehicle
          , prompt = { am = "በአውቶማቲክ ካምቢዮ ተሽከርካሪ የማርሹ ዘንግ በ D ፊደል አቅጣጫ ከሆን", en = "In an automatic car, if the gear lever is at D, it is" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ተሽከርካሪውን ወደ ፊት ለማንቀሳቀስ", en = "To move the vehicle forward" }
                    , after =
                        [ { am = "ተሽከርካሪውን ወደ ኃላ ለማንቀሳቀስ", en = "To move the vehicle backward" }
                        , { am = "ተሽከርካሪውን ለማቆም", en = "To park the vehicle" }
                        , { am = "ጉልበት ለመጨመር", en = "To increase pulling power" }
                        ]
                    }
          , explanation = "D (Drive) is the normal forward position, in which the gearbox shifts through the forward gears automatically."
          }
        , { topic = Vehicle
          , prompt = { am = "በአውቶማቲክ ካምቢዮ ተሽከርካሪ የማርሹ ዘንግ በ R ፊደል አቅጣጫ ከሆን", en = "In an automatic car, if the gear lever is at R, it is" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ተሽከርካሪውን ወደ ፊት ለማንቀሳቀስ", en = "To move the vehicle forward" }
                        ]
                    , correct = { am = "ተሽከርካሪውን ወደ ኃላ ለማንቀሳቀስ", en = "To move the vehicle backward" }
                    , after =
                        [ { am = "ተሽከርካሪውን ለማቆም", en = "To park the vehicle" }
                        , { am = "ጉልበት ለመጨመር", en = "To increase pulling power" }
                        ]
                    }
          , explanation = "R (Reverse) engages the reverse gear so the vehicle moves backward."
          }
        , { topic = Vehicle
          , prompt = { am = "በአውቶማቲክ ካምቢዮ ተሽከርካሪ የማርሹ ዘንግ በ L ፊደል አቅጣጫ ከሆን", en = "In an automatic car, if the gear lever is at L, it is" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ተሽከርካሪውን ወደ ፊት ለማንቀሳቀስ", en = "To move the vehicle forward" }
                        , { am = "ተሽከርካሪውን ወደ ኃላ ለማንቀሳቀስ", en = "To move the vehicle backward" }
                        , { am = "ተሽከርካሪውን ለማቆም", en = "To park the vehicle" }
                        ]
                    , correct = { am = "ጉልበት ለመጨመር", en = "To increase pulling power" }
                    , after =
                        []
                    }
          , explanation = "L (Low) holds the gearbox in low gears, giving more pulling power and engine braking for steep hills or heavy loads."
          }
        , { topic = Vehicle
          , prompt = { am = "በአውቶማቲክ ካምቢዮ ተሽከርካሪ የማርሹ ዘንግ በ N ፊደል አቅጣጫ ከሆን", en = "In an automatic car, if the gear lever is at N, it is" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ተሽከርካሪውን ሞተር ለማስነሳት", en = "To start the engine" }
                    , after =
                        [ { am = "ተሽከርካሪውን ወደ ኃላ ለማንቀሳቀስ", en = "To move the vehicle backward" }
                        , { am = "ተሽከርካሪውን ለማቆም", en = "To park the vehicle" }
                        , { am = "ጉልበት ለመጨመር", en = "To increase pulling power" }
                        ]
                    }
          , explanation = "N (Neutral) disconnects the engine from the wheels, so, like P, it is a position in which the engine can be started safely."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/traffic-queue.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለተለላፊ ቅድሚያ ስጥ", en = "Give way to passing traffic" }
                        , { am = "ለአውቶሞቢል ቅድሚያ ስጥ", en = "Give way to cars" }
                        , { am = "ወደ አደባባይ ስለተቃረብከ ተጠንቅቀህ አሽከርክር", en = "Drive carefully, you are approaching a roundabout" }
                        ]
                    , correct = { am = "የትራፊክ መጨናነቅ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Drive carefully, there is traffic congestion ahead" }
                    , after =
                        []
                    }
          , explanation = "Queued cars on a warning triangle mean traffic ahead is likely to be slow or stationary, so be ready to stop."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/end-of-paved-road.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የአስፋልት መንገድ መጀመሪያ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, a paved road begins" }
                        ]
                    , correct = { am = "የአስፋልት መንገድ መጨረሻ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, the paved road ends" }
                    , after =
                        [ { am = "ወደ አደባባይ ስለተቃረብከ ተጠንቅቀህ አሽከርክር", en = "Drive carefully, you are approaching a roundabout" }
                        , { am = "ወደ ወንዝ ዳር የሚወስድ መንገድ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, the road leads to a riverbank" }
                        ]
                    }
          , explanation = "The near (bottom) part is asphalt and the far (top) part is gravel, so the paved surface ends ahead and grip will drop."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/start-of-paved-road.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "የአስፋልት መንገድ መጀመሪያ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, a paved road begins" }
                    , after =
                        [ { am = "የአስፋልት መንገድ መጨረሻ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, the paved road ends" }
                        , { am = "ወደ አደባባይ ስለተቃረብከ ተጠንቅቀህ አሽከርክር", en = "Drive carefully, you are approaching a roundabout" }
                        , { am = "ወደ ወንዝ ዳር የሚወስድ መንገድ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, the road leads to a riverbank" }
                        ]
                    }
          , explanation = "The near (bottom) part is gravel and the far (top) part is asphalt, so a paved road starts ahead."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/level-crossing-posts.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የአስፋልት መንገድ መጀመሪያ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, a paved road begins" }
                        , { am = "የአስፋልት መንገድ መጨረሻ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, the paved road ends" }
                        ]
                    , correct = { am = "በተደጋጋሚ የባቡር ሐዲድ ማቋረጫ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, there are repeated railway crossings" }
                    , after =
                        [ { am = "ወደ ወንዝ ዳር የሚወስድ መንገድ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, the road leads to a riverbank" }
                        ]
                    }
          , explanation = "Red-and-white striped countdown posts are placed on the approach to railway crossings; seen repeatedly they warn of several crossings in succession."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/st-andrews-cross.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "የባቡር ሐዲድ ማቋረጫ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, there is a railway crossing" }
                    , after =
                        [ { am = "የአስፋልት መንገድ መጨረሻ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, the paved road ends" }
                        , { am = "በተደጋጋሚ የባቡር ሐዲድ ማቋረጫ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, there are repeated railway crossings" }
                        , { am = "ወደ ወንዝ ዳር የሚወስድ መንገድ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, the road leads to a riverbank" }
                        ]
                    }
          , explanation = "The X-shaped cross stands right at a railway level crossing, usually one without barriers, so stop and look both ways for trains."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/side-road-crosses-railway.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የባቡር ሐዲድ ማቋረጫ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, there is a railway crossing" }
                        , { am = "የአስፋልት መንገድ መጨረሻ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, the paved road ends" }
                        , { am = "በተደጋጋሚ የባቡር ሐዲድ ማቋረጫ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, there are repeated railway crossings" }
                        ]
                    , correct = { am = "በጐን በኩል ከተገናኘው መንገድ ትይዩ የባቡር ሀዲድ ማቋረጫ መንገድ ስለሚያጋጥምህ ተጠንቀቅ", en = "Be careful, a railway runs parallel to the road and crosses the side road" }
                    , after =
                        []
                    }
          , explanation = "The track drawn beside the main road means anyone turning into the side road will immediately cross the railway, so check for trains before turning."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/built-up-area.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ወደ ግቢው መግባት የተከለከለ", en = "No entry into the compound" }
                        ]
                    , correct = { am = "የከተማ ክልል", en = "Built-up (urban) area" }
                    , after =
                        [ { am = "ወደ ግቢው መግባት የተፈቀደ", en = "Entry into the compound allowed" }
                        , { am = "የከተማ ክልል ወሰን መጨረሻ", en = "End of built-up area" }
                        ]
                    }
          , explanation = "The house symbol marks the start of a built-up area, where lower urban speed limits and town rules apply."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/end-built-up-area.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ወደ ግቢው መግባት የተከለከለ", en = "No entry into the compound" }
                        , { am = "የከተማ ክልል", en = "Built-up (urban) area" }
                        , { am = "ወደ ግቢው መግባት የተፈቀደ", en = "Entry into the compound allowed" }
                        ]
                    , correct = { am = "የከተማ ክልል ወሰን መጨረሻ", en = "End of built-up area" }
                    , after =
                        []
                    }
          , explanation = "A black diagonal bar cancels a previous restriction; here it marks the end of the urban area and its town speed limits."
          }
        , { topic = Vehicle
          , prompt = { am = "በወቅታዊ ጥገና ጊዜ የሚታዩ የሚጠገኑና የሚለወጡ ክፍሎች", en = "Items checked, repaired or replaced during periodic maintenance" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በአጠቃላይ መገናኛ ቦታዎችን አፅድቶ ግሪስ መድረግ", en = "Cleaning and greasing all joints" }
                        , { am = "የሞተር እና ካምቢዮ ዘይት አይቶ መቀየር", en = "Checking and changing engine and gearbox oil" }
                        , { am = "የዴፈረንሻል ዘይት አይቶ መቀየር", en = "Checking and changing differential oil" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Periodic maintenance is done before anything breaks and covers lubrication of joints and checking or changing all the oils, which extends the vehicle's life."
          }
        , { topic = SafeDriving
          , prompt = { am = "ከፊት ለፊት የሚመጣ ተሽከርካሪ ረጅም የግንባር መብራት ቢያበራ በተቃራኒው ያለ የተሽከርካሪ ማብራት ያለበት", en = "If an oncoming vehicle has its high beams on, the driver facing it should switch on" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "አጭር የግንባር መብራት", en = "Low beam" }
                    , after =
                        [ { am = "ረጅም የግንባር መብራት", en = "High beam" }
                        , { am = "ሃዛርድ", en = "Hazard lights" }
                        , { am = "ሁሉም መልስ ነው", en = "All of the above" }
                        ]
                    }
          , explanation = "Answering with your own high beams would blind both drivers; keep to low beam and look toward the road edge until the vehicle passes."
          }
        , { topic = Vehicle
          , prompt = { am = "አሽከርካሪዎች ተሽከርካሪዎቻቸውን በወቅቱ ሰርቪስ በማስደረግ ከብልሽት የመከላከል ጥገና እንዲከናወን የማድረግ ኃላፊነት አለባቸው", en = "Drivers are responsible for having their vehicles serviced on time so preventive maintenance is done." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Regular servicing catches wear before it becomes a breakdown, and keeping the vehicle roadworthy is the driver's duty."
          }
        , { topic = Vehicle
          , prompt = { am = "አንድ ተሽከርካሪ በጉዞ ላይ እያለ ሞተሩ ቢጠፋ አንደ ምክንያት የሚጠቀሰው የነዳጅ ማጣሪያው በቆሻሻ መደፈን ሊሆን አይችልም", en = "If an engine cuts out while driving, a clogged fuel filter cannot be one of the causes." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A clogged fuel filter starves the engine of fuel, which can make it lose power and stall while driving."
          }
        , { topic = Safety
          , prompt = { am = "ነዳጅ ማደያ ውስጥ ነዳጅ ሲሞላ ሞባይል ስልክ ወይም ሌሎች ኤሌክትሮኒክስ ነክ መሣሪያዎችን በአካባቢው መጠቀም ችግር የለውም", en = "Using a mobile phone or other electronic devices nearby while refuelling at a fuel station is fine." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Fuel vapour around the pumps is highly flammable, and a spark from an electronic device can ignite it."
          }
        , { topic = Parking
          , prompt = { am = "የመንገዱን የቀኝ ጠርዝ አስጠግተው ከቆሙ ተሽከርካሪዎች ጐን በተደራራቢነት ማቆም አይቻልም", en = "You may not double-park beside vehicles already parked along the right edge of the road." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Double parking blocks a traffic lane and traps the parked cars, so stopping alongside vehicles parked at the kerb is prohibited."
          }
        ]
    }
