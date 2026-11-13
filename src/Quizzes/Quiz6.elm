module Quizzes.Quiz6 exposing (quiz)

import Quiz exposing (Answer(..), Quiz, Topic(..))


quiz : Quiz
quiz =
    { id = "quiz-6"
    , title = { am = "ፈተና 6", en = "Quiz 6" }
    , minutes = 115
    , first =
        { topic = Vehicle
        , prompt = { am = "በጣም በሞቀ ሞተር ራድያተር ውስጥ ውሃ ለመሙላት ቢያስፈልግ የተሽከርካሪው ሞተር መጥፋት አለበት።", en = "To add water to the radiator of a very hot engine, the engine must be switched off." }
        , figure = Nothing
        , answer = TrueFalse False
        , explanation = "Keep a hot engine idling while you slowly add water so the coolant circulates; cold water poured into a stopped hot engine can crack the block or head."
        }
    , rest =
        [ { topic = SafeDriving
          , prompt = { am = "ከፊት ያለ አሽከርካሪ ፍሬቻ ካላሳየ አይታጠፍም ብሎ መደምደም ለአደጋ መንስኤ ሊሆን ይችላል", en = "Assuming the driver ahead won't turn just because they haven't signalled can cause an accident." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Drivers often forget to signal, so a defensive driver stays ready for the car ahead to turn without warning."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/double-bend-right-first.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "መጀመሪያ ወደቀኝ ቀጥሎ ወደ ግራ የሚታጠፉ መንገድ መኖሩን የሚያስጠነቅቅ ምልክት", en = "Warns of a road bending first to the right, then to the left" }
                    , after =
                        [ { am = "ከፊትለ ለፊትህ አደገኛ መንገድ ስለ ሚያጋጥምህ ተጠንቅቀህ", en = "Dangerous road straight ahead, take care" }
                        , { am = "በስተ ቀኝ የሚከለከል መንገድ", en = "Road closed to the right" }
                        ]
                    }
          , explanation = "The arrow shows the shape of the road ahead: it curves right first and then back left, so slow down before the bends."
          }
        , { topic = SafeDriving
          , prompt = { am = "የሰከንዶች ሕግ ማለት።", en = "The seconds rule is used for:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ርቀትን ጠብቆ ማሽከርከር", en = "Keeping a safe following distance" }
                        , { am = "የተሽከርካሪው የሚሄደውን ርቀት ለማወቅ", en = "Knowing the distance the vehicle travels" }
                        , { am = "የተሽከርካሪን ዙሪያ ለማየትና ለመቆጣጠር", en = "Watching and controlling the space around the vehicle" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Counting seconds behind the vehicle ahead tells you how much distance you are covering and keeps a safe space cushion around your car."
          }
        , { topic = SafeDriving
          , prompt = { am = "አንድ ከኋላ የሚነዳ አሽከርካሪ ከፊት ካለው ተሽከርካሪ ጋር እንዲጋጭ ምክንያት የሚሆነው የትኛው ነው?", en = "What can cause a following driver to crash into the vehicle in front?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ርቀቱን ያለመጠበቅ", en = "Not keeping a safe distance" }
                        , { am = "ፍጥነቱን ያለመቆጣጠር", en = "Not controlling speed" }
                        , { am = "ከፊት ያለው በዝግታ መሄዱ", en = "The vehicle ahead moving slowly" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Rear-end crashes happen when the gap closes faster than the following driver can react, whether from tailgating, too much speed or a slow car ahead."
          }
        , { topic = TrafficRules
          , prompt = { am = "ማንኛውም አሽከርካሪ ወደ ግራ ዞሮ ለመመለስ የሚፈቀድለት ሥፍራ በየትኛው መንገድ ላይ ነው።", en = "Where is a driver allowed to make a U-turn to the left?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በኮረብታማ ቦታ", en = "On a hilly stretch" }
                        ]
                    , correct = { am = "መንገዱ ግልፅ ሆኖ ሲታየው", en = "Where the road is clearly visible" }
                    , after =
                        [ { am = "በድልድይ ላይ", en = "On a bridge" }
                        , { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                        ]
                    }
          , explanation = "A U-turn crosses all lanes, so do it only where you can see far in both directions. Hills and bridges hide oncoming traffic."
          }
        , { topic = Vehicle
          , prompt = { am = "ከእግር ፍሬን ዋና ዋና ክፍሎች ውስጥ አብዛኛውን ጊዜ ለመቀየር የሚያስገድደው የትኛው ነው?", en = "Which main part of the foot brake most often needs replacing?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "የፍሬን ሸራ", en = "Brake lining" }
                    , after =
                        [ { am = "የፍሬን ድራም", en = "Brake drum" }
                        , { am = "የፍሬን ጫማ", en = "Brake shoe" }
                        , { am = "ሁሉም", en = "All of them" }
                        ]
                    }
          , explanation = "The lining is the friction material that rubs against the drum every time you brake, so it wears out long before the metal parts."
          }
        , { topic = Vehicle
          , prompt = { am = "በተሽከርካሪ ላይ ምቾት እንዲፈጠር የሚያደርገው ክፍል የትኛው?", en = "Which part makes the ride in a vehicle comfortable?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "አሞርዛተር", en = "Shock absorber" }
                    , after =
                        [ { am = "ሽሚያስ", en = "Axle shaft" }
                        , { am = "ትራንስሚሲዮን", en = "Propeller shaft" }
                        , { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Shock absorbers damp the bouncing of the springs over bumps, which keeps the ride smooth and the tyres on the road."
          }
        , { topic = Vehicle
          , prompt = { am = "ከጊር ቦክስ የሚቀበለውን ዙር ጉልበትና ፍጥነት እንዲሁም የኋላ እንቅስቃሴን ተቀብሎ ለዲፈረንሺያል የሚያስተላልፍ የሃይል አስተላላፊ ክፍል", en = "The drivetrain part that takes the rotation, torque, speed and reverse motion from the gearbox and passes it to the differential:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አክስል", en = "Axle" }
                        ]
                    , correct = { am = "ትራንስሚሲዮን ወይም ፕሮፔለር ሻፍት", en = "Transmission or propeller shaft" }
                    , after =
                        [ { am = "ጊር ቦክስ", en = "Gearbox" }
                        , { am = "ዲፈረንሺያል", en = "Differential" }
                        ]
                    }
          , explanation = "The propeller shaft runs from the gearbox output to the differential and carries the drive between them."
          }
        , { topic = Vehicle
          , prompt = { am = "ኢንጂን ወይም ሞተር ከተዋቀረባቸው ዋና ዋና ክፍሎች ውስጥ የማይካተተው የቱ ነው", en = "Which of these is not one of the main parts of the engine?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቴስታታ", en = "Cylinder head" }
                        ]
                    , correct = { am = "ፍሪሲዮን", en = "Clutch" }
                    , after =
                        [ { am = "ክራንክኬዝ", en = "Crankcase" }
                        , { am = "ሲሊንደር ብሎክ", en = "Cylinder block" }
                        ]
                    }
          , explanation = "The head, block and crankcase make up the engine itself. The clutch belongs to the drivetrain and connects the engine to the gearbox."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ ሲሊንደር ብሎክ ውስጥ የማይገኘው የቱ ነው", en = "Which of these is not found inside the cylinder block?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፒስተን", en = "Piston" }
                        , { am = "ክራንክሻፍት", en = "Crankshaft" }
                        , { am = "ቤላ", en = "Connecting rod" }
                        ]
                    , correct = { am = "ሞተሪኖ", en = "Starter motor" }
                    , after =
                        []
                    }
          , explanation = "Pistons, connecting rods and the crankshaft move inside the block. The starter motor is bolted on outside and only engages the flywheel."
          }
        , { topic = TrafficRules
          , prompt = { am = "የመቀመጫ ቀበቶ ሳያስር ያሽከረከረ", en = "A driver who drives without wearing a seat belt:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በጥፋት እርከን 1 የሚመደብ እና 80 ብር ያስቀጣል", en = "Level 1 offence, 80 birr fine" }
                        , { am = "በጥፋት እርከን 2 የሚመደብ እና 100 ብር ያስቀጣል", en = "Level 2 offence, 100 birr fine" }
                        ]
                    , correct = { am = "በጥፋት እርከን 3 የሚመደብ እና 120 ብር ያስቀጣል", en = "Level 3 offence, 120 birr fine" }
                    , after =
                        [ { am = "መልስ የለም", en = "None of the above" }
                        ]
                    }
          , explanation = "The penalty schedule ranks driving without a seat belt as a level 3 offence with a 120 birr fine, reflecting how much a belt reduces injury."
          }
        , { topic = TrafficRules
          , prompt = { am = "ከተፈቀደለት ወንበር በላይ የጫነ", en = "A driver who carries more passengers than the permitted seats:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "በጥፋት እርከን 1 የሚመደብ እና 80 ብር ያስቀጣል", en = "Level 1 offence, 80 birr fine" }
                    , after =
                        [ { am = "በጥፋት እርከን 2 የሚመደብ እና 100 ብር ያስቀጣል", en = "Level 2 offence, 100 birr fine" }
                        , { am = "በጥፋት እርከን 3 የሚመደብ እና 120 ብር ያስቀጣል", en = "Level 3 offence, 120 birr fine" }
                        , { am = "በጥፋት እርከን 5 የሚመደብ እና 160 ብር ያስቀጣል", en = "Level 5 offence, 160 birr fine" }
                        ]
                    }
          , explanation = "The penalty schedule lists carrying passengers beyond the licensed seating as a level 1 offence with an 80 birr fine."
          }
        , { topic = Vehicle
          , prompt = { am = "በሞተር ውስጥ የሚፈጠረውን ሙቀት ለመቀነስና ለማስወገድ የምንጠቀመው በየትኛው ነው?", en = "What do we use to reduce and remove the heat produced in the engine?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በውሃ ማቀዝቀዝ", en = "Water cooling" }
                        , { am = "በአየር ማቀዝዝ", en = "Air cooling" }
                        , { am = "በፍሬን ዘይት", en = "Brake fluid" }
                        ]
                    , correct = { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                    , after =
                        []
                    }
          , explanation = "Engines are cooled either by liquid circulating through a radiator or by air flowing over finned cylinders. Brake fluid plays no part in engine cooling."
          }
        , { topic = Vehicle
          , prompt = { am = "የማለስለሻ ክፍል ጥቅም ያልሆነው?", en = "Which is not a function of the lubrication system?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለማለስለስ ይጠቅማል", en = "Lubricating" }
                        , { am = "ለማቀዝቀዝ ይጠቅማል", en = "Cooling" }
                        , { am = "ለማጽዳት ይጠቅማል", en = "Cleaning" }
                        ]
                    , correct = { am = "ሰበቃን ለመጨመር ይጠቅማል", en = "Increasing friction" }
                    , after =
                        []
                    }
          , explanation = "Oil exists to reduce friction between moving parts, while also carrying away heat and dirt. Increasing friction is the opposite of its job."
          }
        , { topic = Vehicle
          , prompt = { am = "ዘወትር ተሽከርካሪውን ከማስነሳታችን በፊት አሽከርካሪው ማድረግ የሚገባው ጥንቃቄ", en = "Before starting the vehicle each day, the driver should check:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሞተር ዘይት ማየት", en = "The engine oil" }
                        , { am = "የፍሬን ዘይት ማየት", en = "The brake fluid" }
                        , { am = "ውሃ በትክክል መኖሩን ማረጋገጥ", en = "That there is enough coolant water" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "A daily pre-start check covers all the vital fluids: engine oil, brake fluid and coolant. Running low on any of them can cause engine damage or brake failure."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ ተሸካሚ ክፍሎች ሆነው ተሽከርካሪው በወጣ ገባ መንገድ ላይ እንቅስቃሴው ምቾት እንዲኖረው የሚያደርግ የቱ ነው?", en = "Which suspension parts make the vehicle ride comfortably over uneven roads?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ሾክ አብዞርበርና ስፕሪንግ", en = "Shock absorbers and springs" }
                    , after =
                        [ { am = "ቦዲው", en = "The body" }
                        , { am = "ጎማዎች", en = "The tyres" }
                        , { am = "መልስ አልተሰጠውም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Springs absorb bumps and shock absorbers damp the springs' bouncing, together keeping the ride smooth and the tyres on the road."
          }
        , { topic = Vehicle
          , prompt = { am = "የውሃ ፖምፕ ቹንጋ በትክክል ካልተገጠመ የሚያስከትለው ተጽዕኖ በየትኛው አካል ላይ ነው።", en = "If the water pump belt is not fitted correctly, which part is affected?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በውሃ ፖምፕ", en = "The water pump" }
                        , { am = "በጀነሬተር", en = "The generator" }
                        , { am = "በቬንትሌተር ወይም ፋን", en = "The fan" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "The same belt usually drives the water pump, the generator and the cooling fan, so a loose or badly fitted belt affects all three."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ማስነሻ ቁልፍ አገልግሎት የሆነው የቱ ነው", en = "What is the ignition key used for?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሞተር ለማስነሳት ወይም ለማጥፋት", en = "To start or stop the engine" }
                        , { am = "ኤሌክትሪክ ወደ ሌሎች የኤሌክትሪክ ክፍሎች ለማስተላለፍ ወይም ለማቋረጥ", en = "To connect or cut power to the electrical parts" }
                        , { am = "መሪ ለመቆለፍ", en = "To lock the steering" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "The ignition switch starts and stops the engine, switches power to the electrical circuits, and on most cars also locks the steering when the key is removed."
          }
        , { topic = SafeDriving
          , prompt = { am = "የሚንቀሳቀስ ተሽከርካሪ ለማቆም መጀመሪያ የሚከናወን ተግባር የትኛው ነው?", en = "What is the first thing to do when stopping a moving vehicle?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ማርሽ መቀየር", en = "Change gear" }
                        ]
                    , correct = { am = "መስታወት ማየት", en = "Check the mirrors" }
                    , after =
                        [ { am = "ፍሬቻ ማሳየት", en = "Signal" }
                        , { am = "በባለ ሁለት አቅጣጫ መንገድ ላይ መስመር ወደ ቀኝ መለወጥ", en = "Move to the right lane on a two-way road" }
                        ]
                    }
          , explanation = "Mirrors come first: you need to know what is behind and beside you before you signal, move over or slow down."
          }
        , { topic = Parking
          , prompt = { am = "ማንኛውም አሽከርካሪ ለአጭር ወይም ለረዥም ጊዜ ተሽከርካሪን ከሌላ ተሽከርካሪ በተቃራኒ /አንፃር/ ማቆም የሚከለከለው የመንገዱ ስፋት", en = "Stopping or parking alongside another parked vehicle is prohibited when the road width is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ከ20 ሜትር በላይ ካልሆነ", en = "Not more than 20 m" }
                        , { am = "ከ30 ሜትር ክልል በላይ ካልሆነ", en = "Not more than 30 m" }
                        , { am = "ከ50 ሜትር ክልል በላይ ካልሆነ", en = "Not more than 50 m" }
                        ]
                    , correct = { am = "መልስ የለም", en = "None of the above" }
                    , after =
                        []
                    }
          , explanation = "The rule sets the limit at 12 m: double parking is banned unless the road is wider than 12 m, so none of the listed widths is correct."
          }
        , { topic = Speed
          , prompt = { am = "የቤት አውቶሞቢል ከከተማ ክልል ውጪ በአንደኛ ደረጃ አውራ መንገድ ላይ በሰዓት በምን ያህል ፍጥነት ማሽከርከር ይችላል።", en = "What is the speed limit for a private car on a first-class highway outside town?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በ80 ኪሎ ሜትር", en = "80 km/h" }
                        , { am = "በ140 ኪሎ ሜትር", en = "140 km/h" }
                        , { am = "በ70 ኪሎ ሜትር", en = "70 km/h" }
                        ]
                    , correct = { am = "መልስ የለም", en = "None of the above" }
                    , after =
                        []
                    }
          , explanation = "Small vehicles may do up to 100 km/h on first-class roads outside towns, which is not among the options."
          }
        , { topic = Safety
          , prompt = { am = "በምሽት ጊዜ ጭነትን የሚያጓጉዙ ተሽከርካሪዎች የተጫነው ጭነት ከተሽከርካሪው ፊት ወይም ከኋላ ትርፍ ሲኖረው ማድረግ የሚገባው", en = "At night, when a load sticks out past the front or rear of a vehicle, the driver must:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ከፊት ነጭ ወይም ቢጫ ከኋላ ቀይ መብራት", en = "Show a white or yellow light at the front and a red light at the rear" }
                    , after =
                        [ { am = "ከፊት ቀይ ከኋላ ነጭ ወይም ቢጫ", en = "Red at the front, white or yellow at the rear" }
                        , { am = "ከፊት ቢጫ ከኋላ ሰማያዊ", en = "Yellow at the front, blue at the rear" }
                        , { am = "ከፊት ሰማያዊ ከኋላ ቢጫ", en = "Blue at the front, yellow at the rear" }
                        ]
                    }
          , explanation = "The lights follow the vehicle's own colour code: white or yellow faces forward and red faces back, so others can judge where the overhanging load ends."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/speed-limit-35.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "በሰዓት ከ35 ኪ.ሜ ማሽከርከር የተከለከለ", en = "Driving faster than 35 km/h is prohibited" }
                    , after =
                        [ { am = "በመዘግየት ለማቆም የተከለከለ", en = "Stopping with delay is prohibited" }
                        , { am = "ከ35 ኩንታል በላይ መጫን የተከለከለ", en = "Loading over 35 quintals is prohibited" }
                        , { am = "የከተማ ክልል ወሰን መጨረሻ", en = "End of the town limit" }
                        ]
                    }
          , explanation = "A red ring with a number is a maximum speed limit sign: the number is the highest speed allowed in km/h."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/give-way-oncoming.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "በሁለቱም አቅጣጫ ማሽከርከር የተከለከለ", en = "Driving in both directions is prohibited" }
                        , { am = "ከአንድ አቅጣጫ ማሽከርከር የተከለከለ", en = "Driving from one direction is prohibited" }
                        ]
                    , correct = { am = "ከፊት ለፊት ለሚመጣ ተሽከርካሪ ቅድሚያ ስጥ", en = "Give way to oncoming vehicles" }
                    , after =
                        [ { am = "የከተማ ክልል ወሰን መጨረሻ", en = "End of the town limit" }
                        ]
                    }
          , explanation = "The red arrow is the oncoming traffic that has priority; on a narrow stretch you must wait and let it pass first."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት አንዱ የፍሪሲዮን አካል አይደለም", en = "Which of the following is not part of the clutch?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፓላቶ ወይም ፕሬዠር ፕሌት", en = "Pressure plate" }
                        , { am = "ቮላኖ ወይም ፍላይዊል", en = "Flywheel" }
                        , { am = "ፍሪሲዮን ዲስክ ወይም ፍሪሲዮን ሸራ", en = "Clutch disc / lining" }
                        ]
                    , correct = { am = "ክራንክ ሻፍት", en = "Crankshaft" }
                    , after =
                        []
                    }
          , explanation = "The clutch is made up of the flywheel, clutch disc and pressure plate; the crankshaft belongs to the engine and only drives the flywheel."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪዎች ከፍተኛ ጭነት ጭነው ዳገት ለመውጣት", en = "To climb a hill with a heavy load, vehicles:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በ4ኛ ማርሽ ይጠቀማሉ", en = "Use 4th gear" }
                        ]
                    , correct = { am = "በ1ኛ ማርሽ ይጠቀማሉ", en = "Use 1st gear" }
                    , after =
                        [ { am = "በ3ኛ ማርሽ ይጠቀማሉ", en = "Use 3rd gear" }
                        , { am = "በ5ኛ ማርሽ ይጠቀማሉ", en = "Use 5th gear" }
                        ]
                    }
          , explanation = "First gear gives the most torque at the wheels, which a heavily loaded vehicle needs to pull up a steep slope without stalling."
          }
        , { topic = Vehicle
          , prompt = { am = "የነዳጅን ፍጆታ ለመቀነስ", en = "To reduce fuel consumption:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የጎማዎችን የአየር መጠን ማስተካከል", en = "Keep the tyres correctly inflated" }
                        , { am = "በተጨናነቀ መንገድ ያለማሽከርከር", en = "Avoid congested roads" }
                        , { am = "የነዳጅ አስተላላፊ ክፍሎችን በንፅህና መያዝ", en = "Keep the fuel system parts clean" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Under-inflated tyres add rolling resistance, stop-start traffic wastes fuel, and dirty fuel parts spoil combustion, so all three raise consumption."
          }
        , { topic = RoadSigns
          , prompt = { am = "በትራፊክ ደሴት ዙሪያ ያሉ ተሽከርካሪዎችን የሚያስተላልፉት ምልክቶች", en = "Signs that direct vehicles around a traffic island are:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሚያስጠነቅቁ ናቸው", en = "Warning signs" }
                        , { am = "የሚከለክሉ", en = "Prohibitory signs" }
                        , { am = "መረጃ ሰጪ", en = "Information signs" }
                        ]
                    , correct = { am = "የሚያስገድዱ", en = "Mandatory signs" }
                    , after =
                        []
                    }
          , explanation = "Signs such as keep left or keep right at an island order you to take a particular path, so they are mandatory signs."
          }
        , { topic = Vehicle
          , prompt = { am = "የናፍጣ ሞተር ተሽከርካሪን ሞተር እንደ ቤንዚን ሞተር ተሽከርካሪ በቀጥታ ለማስነሳት የማይቻለው ለምንድን ነው", en = "Why can't a diesel engine be started straight away like a petrol engine?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለማስነሳት ቁልፉ ስለሚያስቸግር", en = "Because the key is hard to turn" }
                        ]
                    , correct = { am = "ለማስነሳት በቅድሚያ ሞተሩን ማሞቅ ስለሚያስፈልግ", en = "Because the engine must be pre-heated first" }
                    , after =
                        [ { am = "የተቆለፈው መሪ ቶሎ ስለማይከፈት", en = "Because the locked steering doesn't release quickly" }
                        , { am = "የነዳጅ መስጫ ፔዳል ስለማይታዘዝ", en = "Because the accelerator doesn't respond" }
                        ]
                    }
          , explanation = "A diesel ignites fuel by compression heat alone, so on a cold start the glow plugs must first warm the cylinder air before it will fire."
          }
        , { topic = TrafficRules
          , prompt = { am = "አንድ ተሽከርካሪ ለመቅደም ከፈለክ ልታደርገው የሚገባህ ቅደም ተከተል", en = "When you want to overtake a vehicle, you should:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለመቅደም በግራ በኩል መሆኑን መገንዘብ", en = "Remember that overtaking is done on the left" }
                        , { am = "ሶስተኛ ተደራቢ ሆኖ መቅደም ክልክል እንደሆነ ማስተዋል", en = "Remember that overtaking as a third vehicle abreast is forbidden" }
                        , { am = "ለመቅደም የተከለለ ስፍራ እንዳልሆነ መረዳት", en = "Make sure it is not a no-overtaking zone" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Safe overtaking means passing on the left, never making a third line of vehicles side by side, and only where overtaking is allowed."
          }
        , { topic = TrafficRules
          , prompt = { am = "አንድ የተበላሸ ተሽከርካሪ በሌላ ተሽከርካሪ በሚጐተትበት ጊዜ በመካከላቸው ያለው ርቀት", en = "When a broken-down vehicle is towed by another, the distance between them should be:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "3 ሜትር", en = "3 m" }
                    , after =
                        [ { am = "5 ሜትር", en = "5 m" }
                        , { am = "2 ሜትር", en = "2 m" }
                        , { am = "4 ሜትር", en = "4 m" }
                        ]
                    }
          , explanation = "The regulation sets a 3 m gap: close enough for the tow to stay controlled, far enough that the towed vehicle has room to brake."
          }
        , { topic = TrafficRules
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this signal mean?" }
          , figure = Just "/signs/hand-signal-arm-out-left-lamp.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ከቆመበት ተነስቶ ለመሄድ", en = "Moving off from a stop" }
                        , { am = "ወደቀኝ ለመታጠፍ", en = "Turning right" }
                        , { am = "ከፊት ያለውን መኪና ለመቅደም", en = "Overtaking the car in front" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "An arm held straight out to the left means the driver is moving out to the left, which covers both pulling away from the kerb and pulling out to overtake."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/dual-carriageway-begins.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "በሁለቱም አቅጣጫ ማሽከርከር የተከለከለ", en = "Driving in both directions is prohibited" }
                        , { am = "ከአንድ አቅጣጫ ማሽከርከር የተከለከለ", en = "Driving from one direction is prohibited" }
                        ]
                    , correct = { am = "መንገድ ለሁለት መከፈል የሚጀምርበት", en = "The road is about to divide into two" }
                    , after =
                        [ { am = "የከተማ ክልል ወሰን መጨረሻ", en = "End of the town limit" }
                        ]
                    }
          , explanation = "The arrows split around a central island, warning that a divided road (dual carriageway) starts ahead and each direction gets its own side."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/crossroads-minor-road.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "በሁለቱም አቅጣጫ ማሽከርከር የተከለከለ", en = "Driving in both directions is prohibited" }
                        , { am = "ፊት ለፊትና ወደግራ ብቻ የሚያስኬድ መንገድ", en = "Road leading only straight ahead and left" }
                        ]
                    , correct = { am = "ባለ አራት አቅጣጫ መስቀለኛ መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Drive carefully, four-way crossroads ahead" }
                    , after =
                        [ { am = "ወደቀኝና ፊት ለፊትና የሚያስኬድ መገናኛ መንገድ", en = "Junction leading right and straight ahead" }
                        ]
                    }
          , explanation = "The cross symbol shows roads meeting from all four directions, warning of a crossroads where traffic may enter from either side."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/minimum-speed-50.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "በስአት ከ50 ኪሎ ሜትር በታች ማሽከርከር አይቻልም።", en = "You may not drive slower than 50 km/h" }
                    , after =
                        [ { am = "በስአት ከ50 ኪሎ ሜትር በላይ ማሽከርከር አይቻልም።", en = "You may not drive faster than 50 km/h" }
                        , { am = "የዝቅተኛ የፍጥነት ገደብ ወሰን መጨረሻ።", en = "End of minimum speed limit" }
                        , { am = "የከፍተኛ የፍጥነት ገደብ ወሰን መጨረሻ።", en = "End of maximum speed limit" }
                        ]
                    }
          , explanation = "Blue circles are mandatory signs, so a number on blue sets a minimum speed; a red ring would set a maximum."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የሰው ልጅ ባህሪ የውርስና የአካባቢ የጋራ ውጤት ነው።", en = "Human behaviour is the combined result of heredity and environment." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Behaviour comes from what we inherit and what we learn from our surroundings, which is why training and experience can change how someone drives."
          }
        , { topic = Vehicle
          , prompt = { am = "የባትሪ ውሃ በትነት ቶሎ ቶሎ የሚያልቅ ከሆነ የጀኔሬተር / ዲናሞ መበላሸት ሊሆን ይችላል?", en = "If battery water evaporates quickly, the generator/dynamo may be faulty." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A faulty charging system can overcharge the battery, which heats the electrolyte and boils the water off quickly."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር ከተነሳ በኋላ በችንጋ አማካይነት በመሽከርካር የኤሌክትሪክ ሃይል የሚያመነጭ እስታርተር ሞተር ይባላል", en = "The part that is turned by a belt after the engine starts and generates electricity is called the starter motor." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "That belt-driven part is the alternator (dynamo); the starter motor only uses battery power to crank the engine at start-up."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር ሰርቪስ በተደረገ ጊዜ የሞተር ዘይት ፊልተር መለወጥ ወይም ፀድቶ መገጠሙን ማረጋገጥ ይገባል", en = "When the engine is serviced, the oil filter should be replaced or confirmed clean and refitted." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A clogged old filter would quickly dirty the fresh oil, so the filter is changed or cleaned with every oil service."
          }
        , { topic = Vehicle
          , prompt = { am = "አንዳንድ ተሽከርካሪዎች የመሪ አጠቃቀማቸው በዘይት የሚሠራ ሲሆን የእነዚህ ተሽከርካሪዎች አሽከርካሪዎች በየጊዜው የመሪ ዘይቱን መጠን ሊቆጣጠሩ ይገባል።", en = "Some vehicles have hydraulic power steering, and their drivers should check the steering fluid level regularly." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Low power steering fluid makes steering heavy and can damage the pump, so the level should be checked regularly."
          }
        , { topic = SafeDriving
          , prompt = { am = "አሽከርካሪዎች በሚያሽከረክሩበት ጊዜ ከፊት ከኋላ ከቀኝና ከግራ ያሉትን ተሽከርካሪዎች ጠብቆ ማሽከርከር ይኖርባቸዋል።", en = "Drivers must keep a safe space from vehicles in front, behind and on both sides." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Keeping space all around you gives time and room to react to whatever another road user does."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የማሽከርከር ስህተት ተፈጽሞ አደጋ ባይከሰትና ያም ስህተት የመደጋገም ልምድ ተፈጥሮአዊ ክስተት ስለሆነ መቆጣጠር አይቻልም።", en = "Repeating a driving mistake that didn't cause an accident is natural and cannot be controlled." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Driving habits are learned, so drivers can recognise and correct small mistakes before they lead to a crash."
          }
        , { topic = Vehicle
          , prompt = { am = "ዲስትሪቢውተር ካፕ በትክክል መገጠሙንና አለመሰንጠቁን መከታተል ለእሳት አቀጣጣይ ክፍሎች መደረግ ያለበት ጥንቃቄ ነው", en = "Checking that the distributor cap is fitted properly and not cracked is part of ignition system care." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A loose or cracked distributor cap leaks high voltage or lets in moisture, causing misfires or a no-start."
          }
        , { topic = Vehicle
          , prompt = { am = "ዲናሞ የሚያመነጨውን የኤሌክትሪክ ሃይልና ባትሪን ከመጠን በላይ እንዳይሞላ የሚቆጣጠር መሳሪያ ስታርተር ይባላል", en = "The device that controls the dynamo's output and prevents battery overcharging is called the starter." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "That device is the regulator; the starter is the motor that cranks the engine."
          }
        , { topic = Vehicle
          , prompt = { am = "ዲናሞ የሚያመነጨውን የኤሌክትሪክ ሃይልና ባትሪን ከመጠን በላይ እንዳይሞላ የሚቆጣጠር መሳሪያ ሬጉሌተር ይባላል", en = "The device that controls the dynamo's output and prevents battery overcharging is called the regulator." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The voltage regulator limits the charging voltage so the battery and electrical parts are not damaged by overcharging."
          }
        , { topic = Vehicle
          , prompt = { am = "አሽከርካሪዎች በምሽት በተሽከርካሪ ውስጥ ያለውን ሁኔታ ለመቆጣጠር የሚጠቀሙበት የመብራት ዓይነት የማስጠንቀቂያ መብራት ነው", en = "The light drivers use at night to see inside the vehicle is the warning light." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "That is the interior (cabin) light; warning lights are dashboard indicators that report faults."
          }
        , { topic = Vehicle
          , prompt = { am = "የእጅ ፍሬን መያዙንና መለቀቁን ለአሽከርካሪው በፓናል ቦርድ ላይ የሚያመለክት የእጅ ፍሬን ሁኔታ አመልካች ይባላል", en = "The dashboard indicator that shows whether the handbrake is on or off is called the handbrake status indicator." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The handbrake warning lamp lights while the brake is applied, reminding you to release it before driving off."
          }
        , { topic = Vehicle
          , prompt = { am = "ከባትሪ በቁልፍ አማካኝነት የተቀበለውን የኤሌክትሪክ ሃይል ወደ ሜካኒካል ሃይል በመለወጥ ሞተርን የሚያስነሳ ክፍል እስታርተር ሞተር ይባላል?", en = "The part that converts battery power, received through the key, into mechanical power to start the engine is the starter motor." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Turning the key sends battery current to the starter motor, which turns it into rotation to crank the engine."
          }
        , { topic = TrafficRules
          , prompt = { am = "የዚህ ምልክት ትርጉም ያልሆነው", en = "Which is NOT a meaning of this signal?" }
          , figure = Just "/signs/hand-signal-arm-out-left-lamp.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ከቆመበት ተነስቶ ለመሄድ", en = "Moving off from a stop" }
                        , { am = "ወደ ግራ ለመታጠፍ", en = "Turning left" }
                        , { am = "ከፊት ያለውን መኪና ለመቅደም", en = "Overtaking the car in front" }
                        ]
                    , correct = { am = "ጠርዝ ይዘው ለመቆም", en = "Pulling over to stop at the kerb" }
                    , after =
                        []
                    }
          , explanation = "An arm straight out to the left signals moving left: pulling away, turning left or overtaking. Pulling in to the kerb means moving right, so it is signalled differently."
          }
        , { topic = TrafficRules
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this signal mean?" }
          , figure = Just "/signs/hand-signal-arm-up-right-lamp.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ከኋላ የሚከተልን ተሽከርካሪ ለማስቀደም", en = "Letting the vehicle behind overtake" }
                        , { am = "ወደ ቀኝ ለመታጠፍ", en = "Turning right" }
                        , { am = "ጠርዝ ይዘው ለመቆም", en = "Pulling over to stop at the kerb" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "The raised forearm with the right indicator signals moving to the right, which is used to turn right, pull in to the kerb, or let the vehicle behind pass."
          }
        , { topic = TrafficRules
          , prompt = { am = "የዚህ ምልክት ትርጉም ያልሆነው", en = "Which is NOT a meaning of this signal?" }
          , figure = Just "/signs/hand-signal-arm-down-brake-lamps.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ከኋላ የሚከተልን ተሽከርካሪ ለማስቀደም", en = "Letting the vehicle behind overtake" }
                        , { am = "ቁም", en = "Stopping" }
                        , { am = "ጠርዝ ይዘው ለመቆም", en = "Pulling over to stop at the kerb" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "Both brake lights lit mean the vehicle is stopping where it is. Letting someone pass or pulling in to the kerb is signalled with the right indicator."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ ቀላል ማርሽ የሚባለው", en = "Which of the following is a light (high) gear?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አንደኛ ማርሽ", en = "First gear" }
                        , { am = "ሁለተኛ ማርሽ", en = "Second gear" }
                        ]
                    , correct = { am = "አራተኛ ማርሽ", en = "Fourth gear" }
                    , after =
                        [ { am = "የኋላ ማርሽ", en = "Reverse gear" }
                        ]
                    }
          , explanation = "Higher gears like 4th give speed with little pulling force; 1st, 2nd and reverse are low, heavy gears that give high torque."
          }
        , { topic = Vehicle
          , prompt = { am = "በዳሽቦርድ ላይ የሚገኘው ይህ ምልክት ሞተር ተነስቶ እንደበራ ቢቀር", en = "If this dashboard symbol stays lit after the engine starts, it means" }
          , figure = Just "/signs/warning-fuel.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የዘይት መጠኑን ጠቋሚ", en = "It indicates the oil level" }
                        ]
                    , correct = { am = "የነዳጅ መጠን ዝቅተኛ መሆኑን ጠቋሚ", en = "It indicates the fuel level is low" }
                    , after =
                        [ { am = "የውኃ መጠን ዝቅተኛ መሆኑን ጠቋሚ", en = "It indicates the water level is low" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "The fuel pump symbol is the low fuel warning; it lights when the tank is near empty so you refuel before running dry."
          }
        , { topic = Vehicle
          , prompt = { am = "በዳሽቦርድ ላይ የሚገኘው ይህ ምልክት ሞተር ተነስቶ እንደበራ ቢቀር", en = "If this dashboard symbol stays lit after the engine starts, it means" }
          , figure = Just "/signs/warning-battery.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የባትሪ ውኃ መጠኑን አነስተኛ መሆኑን ጠቋሚ ነው", en = "It shows the battery water level is low" }
                        ]
                    , correct = { am = "ቻርጂንግ ሲስተሙ እንደማይሰራ ጠቋሚ ነው", en = "It shows the charging system is not working" }
                    , after =
                        [ { am = "ቻርጂንግ ሲስተሙ እንደሚሰራ ጠቋሚ ነው", en = "It shows the charging system is working" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "The battery light should go out once the engine runs; if it stays on, the alternator/dynamo is not charging the battery."
          }
        , { topic = Vehicle
          , prompt = { am = "በዳሽቦርድ ላይ የሚገኘው ይህ ምልክት ሞተር ተነስቶ እንደበራ ቢቀር", en = "If this dashboard symbol stays lit after the engine starts, it means" }
          , figure = Just "/signs/warning-oil-pressure.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "የሞተር ዘይት ግፊት አነስተኛ መሆኑን ጠቋሚ ነው", en = "It shows engine oil pressure is low" }
                    , after =
                        [ { am = "የፍሬን ዘይት መጠን አነስተኛ መሆኑን ጠቋሚ ነው", en = "It shows brake fluid level is low" }
                        , { am = "የፍሪሲዮን ዘይት አነስተኛ መሆኑን ጠቋሚ ነው", en = "It shows clutch fluid is low" }
                        , { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                        ]
                    }
          , explanation = "The oil can symbol warns of low engine oil pressure; driving on without oil pressure quickly damages the engine, so stop and check."
          }
        , { topic = Safety
          , prompt = { am = "በዳሽቦርድ ላይ የሚገኘው ይህ ምልክት ትርጉም ምንድነው", en = "What does this dashboard symbol mean?" }
          , figure = Just "/signs/warning-seat-belt.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የደህንነት ቀበቶ ማሰር ክልክል ነው", en = "Wearing a seat belt is prohibited" }
                        , { am = "የደህንነት ቀበቶ እንዲያስሩ የሚያስታውስ ነው", en = "It reminds you to fasten your seat belt" }
                        , { am = "የደህንነት ቀበቶ እንዳላሰሩ ጠቋሚ ነው", en = "It shows the seat belt is not fastened" }
                        ]
                    , correct = { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "The seat belt light comes on when a belt is unfastened, both signalling that it is not buckled and reminding you to buckle up."
          }
        , { topic = Vehicle
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this symbol mean?" }
          , figure = Just "/signs/hazard-switch.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "የሃዛርድ መብራት ስዊች", en = "Hazard light switch" }
                    , after =
                        [ { am = "የጭጋግ መብራት ስዊች", en = "Fog light switch" }
                        , { am = "የግንባር መብራት ስዊች", en = "Headlight switch" }
                        , { am = "ምልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "The red triangle button switches on the hazard lights, flashing all indicators to warn others of a stopped or disabled vehicle."
          }
        , { topic = TrafficRules
          , prompt = { am = "180 ብር የሚያስቀጣ እና በ 6ኛ እርከን ውስጥ የማይካተተው የቱ ነው", en = "Which offence is NOT in the 6th penalty level (fined 180 birr)?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለእግረኛ ቅድሚያ ያልሰጠ", en = "Failing to give way to a pedestrian" }
                        , { am = "ቀይ የትራፊክ መብራት የጣሰ", en = "Running a red traffic light" }
                        , { am = "በሕግ ከተወሰነው ፍጥነት በላይ ያሽከረከረ", en = "Exceeding the legal speed limit" }
                        ]
                    , correct = { am = "በተከለከለ ቦታ ላይ የጫነ ወይም ያወረደ", en = "Loading or unloading in a prohibited place" }
                    , after =
                        []
                    }
          , explanation = "Ignoring pedestrians' right of way, red lights and speed limits are serious level-6 offences; loading or unloading in a prohibited place is a lower-level offence."
          }
        , { topic = TrafficRules
          , prompt = { am = "180 ብር የሚያስቀጣ እና በ 6ኛ እርከን ውስጥ የማይካተተው የቱ ነው", en = "Which offence is NOT in the 6th penalty level (fined 180 birr)?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በተከለከለ መንገድ ወይም አቅጣጫ ያሽከረከረ", en = "Driving on a prohibited road or in a prohibited direction" }
                        , { am = "በተከለከለ መንገድ ላይ ተሳፋሪ ወይም ጭነት የጫነ ወይም ያወረደ", en = "Picking up or dropping passengers or goods on a prohibited road" }
                        ]
                    , correct = { am = "በተሽከርካሪ መግቢያ ወይም መውጫ በር ላይ ያቆመ", en = "Parking at a vehicle entrance or exit gate" }
                    , after =
                        [ { am = "የትራፊክ አደጋ ፈጽሞ ቦታው ላይ ያልቆመ", en = "Not stopping at the scene after causing a traffic accident" }
                        ]
                    }
          , explanation = "Parking across a vehicle entrance or exit is a lesser parking offence; the others endanger traffic and fall in level 6."
          }
        , { topic = TrafficRules
          , prompt = { am = "180 ብር የሚያስቀጣ እና በ 6ኛ እርከን ውስጥ የማይካተተው የቱ ነው", en = "Which offence is NOT in the 6th penalty level (fined 180 birr)?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በጭነት ተሽከርካሪ በሕግ ከተፈቀደለት ውጭ ሰውን ያሳፈረ", en = "Carrying people on a goods vehicle beyond what the law allows" }
                        , { am = "በድልድይ ላይ ተሽከርካሪ ያቆመ", en = "Parking a vehicle on a bridge" }
                        , { am = "ከተማ ውስጥ ከባድ መብራት /ባውዛ/ የተጠቀመ", en = "Using high beam headlights in town" }
                        ]
                    , correct = { am = "በትራፊክ ደሴት ላይ ተሽከርካሪ ያቆመ", en = "Parking a vehicle on a traffic island" }
                    , after =
                        []
                    }
          , explanation = "Parking on a traffic island is classed as a lower-level parking offence, while the other listed acts are level-6 offences."
          }
        , { topic = Vehicle
          , prompt = { am = "የሲሊንደር ጋስኬት ጥቅም", en = "The purpose of the cylinder head gasket" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ውኃ እና ነዳጅ እንዳይቀላቀል", en = "To keep water and fuel from mixing" }
                        ]
                    , correct = { am = "ውኃ እና የሞተር ዘይት እንዳይቀላቀል", en = "To keep coolant water and engine oil from mixing" }
                    , after =
                        [ { am = "ነዳጅ እና የሞተር ዘይት እንዳይቀላቀል", en = "To keep fuel and engine oil from mixing" }
                        , { am = "የፍሬን ዘይት እና የሞተር ዘይት እንዳይቀላቀል", en = "To keep brake fluid and engine oil from mixing" }
                        ]
                    }
          , explanation = "The head gasket seals between head and block, keeping the coolant passages and oil passages apart; a blown gasket lets them mix."
          }
        , { topic = Vehicle
          , prompt = { am = "ፑንቲና (ኮንታክት ፖይንት) እንዳይቃጠል የሚረዳ የተሽከርካሪ ክፍል", en = "The part that keeps the contact points (ፑንቲና) from burning" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ካፓሲተር", en = "Capacitor" }
                        , { am = "ዲስትሪቢዩተር ካፕ", en = "Distributor cap" }
                        , { am = "ኮንዴንሰር", en = "Condenser" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "The condenser (a capacitor) absorbs the surge when the points open, preventing arcing that would burn them."
          }
        , { topic = Vehicle
          , prompt = { am = "ፑንቲና (ኮንታክት ፖይንት) እንዳይቃጠል የሚረዳ የተሽከርካሪ ዲስትሪቢዩተር ክፍል", en = "The distributor (cap) is the part that keeps the contact points from burning." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "It is the condenser, not the distributor cap, that stops the contact points from arcing and burning."
          }
        , { topic = Vehicle
          , prompt = { am = "ሲሊንደር ሄድ ላይ ያሉ የተከፈቱ ቫልቮችን እንዲዘጋ የሚያደርግ", en = "The part that closes the opened valves on the cylinder head" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ካምሻፍት", en = "Camshaft" }
                        , { am = "ኮሎ", en = "Crankshaft" }
                        , { am = "አልብሮካም", en = "Albrocam" }
                        ]
                    , correct = { am = "ስፕሪንግ ወይም ሞላ", en = "Valve spring" }
                    , after =
                        []
                    }
          , explanation = "The camshaft only pushes valves open; the valve spring (ሞላ) pulls each valve shut again once the cam lobe passes."
          }
        , { topic = RoadSigns
          , prompt = { am = "የሚያስጠነቅቁ የመንገድ ዳር ምልክቶች ክብ ቅርጽ ያላቸው ናቸው።", en = "Warning road signs are circular." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Warning signs are triangular with a red border; circular signs give orders (prohibitions or mandatory instructions)."
          }
        , { topic = RoadSigns
          , prompt = { am = "ሶስት ማዕዘን ቅርጽ ያላቸው የመንገድ ዳር ምልክቶች በሙሉ የሚያስጠነቅቁ ናቸው።", en = "All triangular road signs are warning signs." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The triangle is the shape used for warning signs, alerting drivers to a hazard ahead."
          }
        , { topic = Vehicle
          , prompt = { am = "ፍሬና ሞተር በከባድ ተሽከርካሪዎች ላይ በተደጋጋሚ ያለአግባብ መጠቀም የሞተሩን ብቃትና የአገልግሎት ጊዜውን ያሳጥራል።", en = "Repeated improper use of the engine brake on heavy vehicles reduces the engine's performance and service life." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Misusing the engine brake (e.g. at wrong revs or in the wrong gear) puts extra stress on engine parts and wears them out sooner."
          }
        , { topic = SafeDriving
          , prompt = { am = "ያለእረፍት አንድን ተሽከርካሪ ለብዙ ሰዓታት ማሽከርከር ለአደጋ የማጋለጥ መጠኑ የበለጠ ይሆናል", en = "Driving a vehicle for many hours without rest increases the risk of an accident." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Long hours at the wheel cause fatigue, which slows reactions and dulls attention, so take regular breaks."
          }
        , { topic = Vehicle
          , prompt = { am = "ፀሐያማና ሞቃታማ በሆኑ ቦታዎች ላይ የሚንቀሳቀሱ ተሽከርካሪዎች የጎማዎቹ ንፋስ መጠን ይጨምራል", en = "Tyre pressure rises in vehicles driven in sunny, hot places." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Heat makes the air inside the tyre expand, raising its pressure, so check pressures when the tyres are cold."
          }
        , { topic = Vehicle
          , prompt = { am = "ከባድ ተሽከርካሪዎች ዳገት ሲወጡ ከባድ ማርሽ በተጨማሪ ሎክ በማስገባት ይጠቀማሉ።", en = "Heavy vehicles climbing a hill use a low gear and additionally engage the lock (diff lock / low range)." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "On steep climbs heavy vehicles need maximum pulling force, so they use a low gear plus the lock to multiply torque and keep traction."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ያለበቂ ትኩረትና በሌላ ሀሳብ ተጠምዶ ማሽከርከር ትክክለኛ ያልሆነ አካሄድና ትኩረት ማጣትን የሚያሳይ የክህሎታዊ ብቃት ማነስ ባህሪ መገለጫ ነው", en = "Driving without enough attention, preoccupied with other thoughts, is a sign of poor skill behaviour showing improper conduct and lack of focus." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Safe driving skill depends on full attention; a distracted driver misses hazards and reacts late."
          }
        , { topic = Vehicle
          , prompt = { am = "ቅድመ ብልሽት ጥገና ወይም በሰርቪስ ጊዜ የሚፈተሹ ፣ የሚጠገኑና የሚለወጡ ክፍሎች", en = "Parts checked, repaired or replaced during preventive maintenance or servicing" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የዘይት ፊልትሮ መቀየር", en = "Changing the oil filter" }
                        , { am = "የስፓርክ ፕላግ /ካንዴላ/ ማፅዳት ወይም መቀየር", en = "Cleaning or replacing the spark plugs" }
                        , { am = "የሞተር ዘይት መቀየር", en = "Changing the engine oil" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው።", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "A routine service replaces engine oil and the oil filter and cleans or replaces spark plugs before they cause breakdowns."
          }
        , { topic = TrafficLights
          , prompt = { am = "የዚህ የትራፊክ መብራት ትርጉም ምንድን ነው", en = "What does this traffic light mean?" }
          , figure = Just "/signs/traffic-light-red.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የእግረኛ ማቋረጫ አቋርጠህ ቁም", en = "Stop after crossing the pedestrian crossing" }
                        ]
                    , correct = { am = "የእግረኛ ማቋረጫ ሳታቋርጥ ቁም", en = "Stop before the pedestrian crossing" }
                    , after =
                        [ { am = "ቆሞ የነበረ ተሽከርካሪ ለመሄድ እንዲዘጋጅ የሚፈቅድ", en = "Lets a stopped vehicle get ready to go" }
                        , { am = "ቆሞ የነበረ ተሽከርካሪ እንዲያልፍ የሚፈቅድ", en = "Lets a stopped vehicle go" }
                        ]
                    }
          , explanation = "A red light means stop, and you must stop before the stop line or pedestrian crossing so pedestrians can cross freely."
          }
        , { topic = TrafficLights
          , prompt = { am = "የዚህ የትራፊክ መብራት ትርጉም ምንድን ነው", en = "What does this traffic light mean?" }
          , figure = Just "/signs/traffic-light-amber.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የእግረኛ ማቋረጫውን አልፎ መሃል መንገድ ላይ የገባን አሽከርካሪ በፍጥነት ለቀህ ውጣ የሚል ትዕዛዝ", en = "Orders a driver already past the crossing and in the junction to clear it quickly" }
                        , { am = "የእግረኛ ማቋረጫ ሳታቋርጥ ቁም", en = "Stop before the pedestrian crossing" }
                        , { am = "የእግረኛ ማቋረጫውን ላላለፈ አሽከርካሪ ለመቆም ተዘጋጅ የሚል ትዕዛዝ", en = "Orders a driver not yet past the crossing to prepare to stop" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "Yellow after green warns that red is coming: drivers already in the junction should clear it, and those not yet at the crossing should prepare to stop."
          }
        , { topic = TrafficLights
          , prompt = { am = "የዚህ የትራፊክ መብራት ትርጉም ምንድን ነው", en = "What does this traffic light mean?" }
          , figure = Just "/signs/traffic-light-red-amber.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የእግረኛ ማቋረጫ አቋርጠህ ቁም", en = "Stop after crossing the pedestrian crossing" }
                        , { am = "በመምጣት ላይ ያሉ የእግረኛ ማቋረጫ ሳያልፉ ቀጣዩን መብራት ይጠባበቃሉ", en = "Approaching vehicles wait for the next light without passing the crossing" }
                        , { am = "ቆሞ የነበረ ተሽከርካሪ ለመሄድ እንዲዘጋጅ የሚፈቅድ", en = "Lets a stopped vehicle get ready to go" }
                        ]
                    , correct = { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "Red and yellow together means green is about to come: stopped vehicles get ready to move, but nobody crosses the line until green shows."
          }
        , { topic = TrafficLights
          , prompt = { am = "የዚህ የትራፊክ መብራት ትርጉም ምንድን ነው", en = "What does this traffic light mean?" }
          , figure = Just "/signs/traffic-light-green.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የእግረኛ ማቋረጫ አቋርጠህ ቁም", en = "Stop after crossing the pedestrian crossing" }
                        , { am = "የእግረኛ ማቋረጫ ሳታቋርጥ ቁም", en = "Stop before the pedestrian crossing" }
                        , { am = "ቆሞ የነበረ ተሽከርካሪ ለመሄድ እንዲዘጋጅ የሚፈቅድ", en = "Tells a stopped vehicle to get ready to go" }
                        ]
                    , correct = { am = "ቆሞ የነበረ ተሽከርካሪ እንዲያልፍ የሚፈቅድ", en = "Allows a stopped vehicle to proceed" }
                    , after =
                        []
                    }
          , explanation = "A green light gives permission to proceed through the junction when it is safe; getting ready to go is signalled by red and amber together."
          }
        , { topic = TrafficLights
          , prompt = { am = "የዚህ የትራፊክ መብራት ትርጉም ያልሆነው", en = "Which is NOT the meaning of these traffic lights?" }
          , figure = Just "/signs/traffic-lights-left-red-straight-right-green.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ወደ ቀኝ መታጠፍ ይቻላል", en = "You may turn right" }
                        ]
                    , correct = { am = "ወደ ግራ መታጠፍ ይቻላል", en = "You may turn left" }
                    , after =
                        [ { am = "ወደ ፊት መሄድ ይቻላል", en = "You may go straight ahead" }
                        , { am = "ወደ ግራ መታጠፍ አይቻልም", en = "You may not turn left" }
                        ]
                    }
          , explanation = "The signal for the left-turn lane is red, so turning left is forbidden while the other lane's green allows straight ahead and right."
          }
        , { topic = TrafficLights
          , prompt = { am = "የዚህ የትራፊክ መብራት ትርጉም ያልሆነው", en = "Which is NOT the meaning of these traffic lights?" }
          , figure = Just "/signs/traffic-lights-straight-left-green-right-red.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ወደ ቀኝ መታጠፍ ይቻላል", en = "You may turn right" }
                    , after =
                        [ { am = "ወደ ግራ መታጠፍ ይቻላል", en = "You may turn left" }
                        , { am = "ወደ ፊት መሄድ ይቻላል", en = "You may go straight ahead" }
                        , { am = "ወደ ቀኝ መታጠፍ አይቻልም", en = "You may not turn right" }
                        ]
                    }
          , explanation = "The signal for the right-turn lane is red, so turning right is forbidden while the green for the other lane allows straight ahead and left."
          }
        , { topic = Parking
          , prompt = { am = "ማቆም የማይፈቀደው የት ቦታ ነው", en = "Where is stopping not allowed?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የመኪና መዞሪያ ወይም ኩርባ ቦታ", en = "At a turning point or bend" }
                        , { am = "ሆስፒታል በር ላይ", en = "At a hospital entrance" }
                        , { am = "ድልድይ ወይም መሿለኪያ ላይ", en = "On a bridge or in a tunnel" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Stopping at bends, hospital gates, bridges or tunnels blocks traffic or visibility and puts other road users at risk, so all are prohibited."
          }
        , { topic = TrafficLights
          , prompt = { am = "የትራፊክ ማስተላለፊያ መብራቶች ጥቅም ያልሆነው", en = "Which is NOT a purpose of traffic signal lights?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "እግረኞች ባግባቡ መንገድ እንዲያቋርጡ ይረዳል", en = "Help pedestrians cross the road properly" }
                        , { am = "ከተለያየ አቅጣጫ ወደ መገናኛው መንገድ በመምጣት ላይ ያሉ እግረኛንም ሆነ አሽከርካሪዎች በየተራ እንዲተላለፉ ይረዳል", en = "Let pedestrians and drivers arriving from different directions pass in turn" }
                        , { am = "ከተለያየ አቅጣጫ ወደ መገናኛው መንገድ በመምጣት ላይ ያሉ አሽከርካሪዎች በየተራ እንዲተላለፉ ይረዳል", en = "Let drivers arriving from different directions pass in turn" }
                        ]
                    , correct = { am = "በማንኛውም ጊዜ የትራፊክ ፖሊስን ስራ ሙሉ በሙሉ ይሸፍናል", en = "Fully replace the traffic police's work at all times" }
                    , after =
                        []
                    }
          , explanation = "Signals organise turns at a junction, but a traffic officer's instructions override them and are still needed when lights fail or traffic is unusual."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ለሰው ልጅ ክብር መስጠትና ፣ ሞገደኛ አሽከርካሪ ከሚያሳያቸው አላስፈላጊ ባህሪያት እራስን ለማራቅና አደጋን ተከላክሎ ለማሽከርከር ይረዳል።", en = "Respecting people helps you avoid the bad habits of aggressive drivers and drive defensively." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A driver who values other people stays patient and courteous, which keeps them out of conflicts and focused on avoiding crashes."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ጸያፍ ስድቦችንና ምልክቶችን ችላ በማለት ሞገደኛ አሽከርካሪን ማለፍ የቸልተኛ አሽከርካሪ መገለጫ ነው።", en = "Ignoring rude insults and gestures and letting an aggressive driver pass is a sign of a careless driver." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Ignoring provocation and letting an aggressive driver go is the recommended, mature response that avoids escalation, not carelessness."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የአንዳድ ስህተትን ላለመፈጸም ተነሳሺነትን ማሳየትና መማር ወሳኙ ስሜታዊ የማሽከርከር ክህሎት ነው።", en = "Being motivated to avoid driving mistakes and learning from them is a key emotional driving skill." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The willingness to recognise and correct your own errors is what lets a driver improve and stay safe over time."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የማሽከርከር ተግባር ትክክለኛ ውሳኔ ማድረግን መማር አስፈላጊ የሚሆነው በማገናዘብ የማሽከርከር ክህሎት ነው", en = "Learning to make correct decisions while driving is part of the reasoning (cognitive) driving skill." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Judging situations and choosing the right action is a thinking skill, so it belongs to cognitive or reasoning driving skills."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የሌሎች አሽከርካሪዎችን የማሽከርከር እንቅስቃሴ ላለማስተጓጎልና በዓላማቸው ላይ ጣልቃ ላለመግባት ፍላጎት ማሳየት የክህሎታዊ ኃላፊነት ባህሪ መገለጫ ነው።", en = "Being willing not to obstruct other drivers or interfere with their aims shows responsible driving behaviour." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A responsible driver shares the road and avoids blocking or interfering with others, which keeps traffic flowing and reduces conflict."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ደንብ ማክበርና ልበ ሙሉነት የስሜታዊ ብቃት ባህሪ ያላቸው አሽከርካሪዎች መገለጫ አይደለም", en = "Obeying rules and confidence are not traits of emotionally competent drivers." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Following the rules and driving with calm confidence are exactly the traits of an emotionally competent driver."
          }
        , { topic = DriverBehavior
          , prompt = { am = "በመደበኛ የማሽከርከር ሁኔታ ውስጥ ተስፋ የመቁረጥና ያለመረጋጋት ስሜት ማሳየት የስሜታዊ ብቃት ማነስ -ባህሪ መገለጫ ነው", en = "Showing hopelessness and restlessness in normal driving conditions is a sign of low emotional competence." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Ordinary traffic should not upset a driver; frustration or agitation in normal conditions shows poor emotional control."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪ የአገልግሎትና የስራ ጊዜን ለማስረዘም የቅድመ ብልሽት ጥገና ወሳኝ ነው", en = "Preventive maintenance is essential to extend a vehicle's service life." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Servicing parts before they fail prevents small wear from turning into major damage, so the vehicle lasts longer."
          }
        , { topic = Vehicle
          , prompt = { am = "የአንድ ተሽከርካሪ የሞተር ታይሚንግ ቤልት በወቅታዊ ሰርቪስ ፕሮግራም ላይ በሚደረገው ጥገና ጊዜ መቀየር ይገባዋል", en = "An engine's timing belt should be replaced during scheduled periodic servicing." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Timing belts wear out without warning and a break can wreck the engine, so they are replaced at the interval set in the service schedule."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ሥልጠና የባህሪ ለውጥ መንገድ አይደለም", en = "Training is not a way to change behaviour." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Training builds knowledge and habits, and is one of the main ways a driver's behaviour is improved."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አሽከርካሪዎች ባለማወቅ፣ በቸልተኝነትና ስነ-ስርዓት በጎደላቸው አሽከርካሪዎች እና እግረኞች ሊደርሱ ከሚችሉ አደጋዎች አስቀድሞ የመጠንቀቅ ኃላፊነት የለባቸውም", en = "Drivers have no duty to guard in advance against crashes caused by ignorant, careless or undisciplined drivers and pedestrians." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Defensive driving means anticipating other people's mistakes, so drivers are responsible for guarding against them."
          }
        , { topic = Vehicle
          , prompt = { am = "በተሽከርካሪዎች ላይ የሚገኝ መሪ በሜካኒካልና ዘይት የሚሰራ ብለን እንከፋፍለዋለን", en = "Vehicle steering is classified as mechanical or hydraulic (oil-operated)." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Steering is either purely mechanical or power-assisted by hydraulic oil pressure."
          }
        , { topic = Vehicle
          , prompt = { am = "በመሪ ክፍሎች መካከል ነፃ እንቅስቃሴ እንዲኖር በማድረግና የመሪ ክፍሎች እንዳይጎብጡና እንዳይጣመሙ የሚረዳ ቦልጆይንት ነው", en = "The ball joint allows free movement between steering parts and keeps them from bending or twisting." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A ball joint is a pivot that lets steering and suspension parts swivel freely, so they move instead of bending under load."
          }
        , { topic = Vehicle
          , prompt = { am = "ፈንሶች በቆሻሻ ወይም በዘይትና በሌሎች ነገሮች ያልተደፈኑ መሆናቸውን ማየትና ማፅዳት ይገባል", en = "You should check that the (radiator) fins are not clogged with dirt, oil or other matter, and clean them." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Clogged fins block airflow through the radiator, so heat can't escape and the engine overheats."
          }
        , { topic = TrafficRules
          , prompt = { am = "ማንኛውም አሽከርካሪ ከባቡር ሀዲድ ማቋረጫ በ6 ሜትር ውስጥ የተሽከርካሪውን ማርሽ መለወጥ የለበትም።", en = "No driver should change gear within 6 metres of a railway crossing." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Changing gear on or near the tracks risks stalling the engine in the train's path, so you pick the gear before reaching the crossing."
          }
        , { topic = TrafficRules
          , prompt = { am = "ማንኛውም ሰው ለተሽከርካሪው ነዳጅ ሲሞላ ሞባይል ስልክ ወይም ሌሎች ኤሌክትሮኒክስ ነክ መሣሪያዎችን በአካባቢው መጠቀም የለበትም።", en = "Nobody should use a mobile phone or other electronic devices nearby while refuelling a vehicle." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Fuel vapour around the pump can ignite from a spark, so electronic devices are not used while refuelling."
          }
        , { topic = TrafficLights
          , prompt = { am = "የተሽከርካሪ ማስተላለፊያ መብራቶች ቅደም ተከተል ከላይ ወደታች አረንጓዴ፣ ቤጫና ቀይ ቀለሞች ናቸው።", en = "The order of vehicle traffic lights from top to bottom is green, yellow and red." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Red is always at the top, with yellow in the middle and green at the bottom, so the most important signal is the most visible."
          }
        , { topic = TrafficLights
          , prompt = { am = "ቀይ የትራፊክ መብራት እየበራ አልፎ መሄድ በህግ የሚያስቀጣና በተጨማሪም ለአደጋ የሚያጋልጥ ነው።", en = "Going through a red light is punishable by law and also exposes you to crashes." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Red means traffic from another direction has the right of way, so running it is both an offence and a common cause of side-impact crashes."
          }
        , { topic = RoadMarkings
          , prompt = { am = "በመንገድ ላይ የሚቀቡ ቅቦች የሚባሉት የማቆሚያ ሥፍራ ቅብ፣ የማስተላለፊያ ምልክት ቅብና ቅድሚያ ስጥ የሚል ምልክት ቅቦችን ያካትታል።", en = "Road markings painted on the road include parking-bay markings, crossing markings and give-way markings." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Paint on the road surface marks parking bays, crossings and give-way lines, giving instructions right where drivers look."
          }
        , { topic = DriverBehavior
          , prompt = { am = "በመረጃ ያልተደገፈና የተዛባ አስተሳሰብ ያለው አሽከርካሪ ባህሪ መንገዱ በሚፈቅደው የፍጥነት ገደብ መሠረት ከማሽከርከር ይልቅ ተቆጣጣሪዎች ባሉበት ቦታ ብቻ ፍጥነትን ለመቀነስ በማሰብ ያሽከረክራሉ።", en = "Drivers with uninformed, distorted thinking slow down only where enforcers are present instead of keeping to the posted speed limit." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Limits exist for safety, not for the police; slowing only for enforcement shows a mistaken attitude toward the rules."
          }
        , { topic = Safety
          , prompt = { am = "ተቀጣጣይ የሆኑ ነገሮች የምንላቸው", en = "Which of these are flammable materials?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "እንጨት", en = "Wood" }
                        , { am = "ናፍጣ", en = "Diesel" }
                        , { am = "ቡቴን", en = "Butane" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Wood (a solid), diesel (a liquid) and butane (a gas) all burn, so each is a flammable material."
          }
        , { topic = DriverBehavior
          , prompt = { am = "መረጃን ከአካባቢያችን በስሜት ህዋሳቶቻችን የመቀበል የመለወጥና ወደ አእምሮአችን የመላክ ሂደት የሆነው", en = "The process of receiving information from our surroundings through our senses, converting it and sending it to the brain is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ትኩረት", en = "Attention" }
                        ]
                    , correct = { am = "መስማት", en = "Hearing" }
                    , after =
                        [ { am = "ማስተዋል", en = "Comprehension" }
                        , { am = "ሁሉም መልስ ነው", en = "All of the above" }
                        ]
                    }
          , explanation = "Taking in information through the senses and passing it to the brain is sensing or perception; attention selects among it and comprehension interprets it."
          }
        , { topic = Safety
          , prompt = { am = "ኦክስጅንን በማሣጣት የተቀጣጠለን እሣት ለማጥፋት አንዱ ዘዴ ሲሆን ይህም ዘዴ ምን ይባላል", en = "Putting out a fire by cutting off its oxygen is a method called:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ማለስለስ", en = "Lubricating" }
                        ]
                    , correct = { am = "ማፈን", en = "Smothering" }
                    , after =
                        [ { am = "ማስራብ", en = "Starving" }
                        , { am = "ማቀዝቀዝ", en = "Cooling" }
                        ]
                    }
          , explanation = "Fire needs oxygen, so covering it with a blanket, sand or foam to cut off the air is smothering."
          }
        , { topic = Vehicle
          , prompt = { am = "አንድ ተሽከርካሪ ወደ ኋላ እየሄደ መሆኑን በምን እናውቃለን", en = "How do we know a vehicle is reversing?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ከኋላ ቀይ መብራት ሲያበራ", en = "It shows a red light at the rear" }
                        , { am = "ከኋላ አረንጓዴ መብራት ሲያሳይ", en = "It shows a green light at the rear" }
                        ]
                    , correct = { am = "ከኋላ ነጭ መብራት ሲያሳይ", en = "It shows a white light at the rear" }
                    , after =
                        [ { am = "ብልጭ ድርግም የሚል ቢጫ መብራት ሲያሳይ", en = "It shows a flashing yellow light" }
                        ]
                    }
          , explanation = "Reversing lights at the rear are white and come on automatically when reverse gear is selected."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ የጎማ ጥርስ ያላለቀ ከሆን", en = "If a vehicle's tyre tread is not worn out:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "መሬትን ቆንጥጦ በመያዝ በቀላሉ መሪን ለማንቀሳቀስ ይረዳል", en = "It grips the ground, making steering easy" }
                        , { am = "ጭቃማ በሆኑ ቦታዎች በቀላሉ በጭቃ አይያዝም", en = "It doesn't easily get stuck in muddy places" }
                        , { am = "አሸዋማና ኮረኮንቻማ በሆኑ ቦታዎች በቀላሉ ለመሽከርከር አመቺ ነው", en = "It drives easily on sandy and gravel surfaces" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Tread channels water and mud away and bites into loose surfaces, so good tread improves grip, steering and traction everywhere."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የማሽከርከር ባህሪ ዘርፍ ያልሆነው", en = "Which is NOT a category of driving behaviour?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የስሜት ባህሪ", en = "Emotional behaviour" }
                        , { am = "የመገንዘብ ባህሪ", en = "Cognitive behaviour" }
                        ]
                    , correct = { am = "የድርጊት ባህሪ", en = "Action behaviour" }
                    , after =
                        [ { am = "የክህሎት ባህሪ", en = "Skill behaviour" }
                        ]
                    }
          , explanation = "Driving behaviour is grouped into emotional, cognitive and skill (psychomotor) behaviour; action behaviour is not one of the categories."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ስነ-ባህሪ ማለት", en = "Behavioural science (psychology) is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሰዎችን አስተሳሰብ ሂደት ያጠናል", en = "It studies the thinking process of people" }
                        , { am = "የእንስሳትን አስተሳሰብ ሂደት ያጠናል", en = "It studies the thinking process of animals" }
                        , { am = "የአዕምሮ አስተሳሰብ ሂደትን ያጠናል", en = "It studies mental thought processes" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Behavioural science studies the behaviour and mental processes of both humans and animals, so all options describe it."
          }
        , { topic = TrafficRules
          , prompt = { am = "የአደጋ አገልግሎት ተሽከርካሪዎች ተግባራቸውን በሚያከናውኑበት ጊዜ", en = "When emergency vehicles are on duty they:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በሕግ ከተሠጠው ወሰን በላይ መንዳት ይችላሉ", en = "May drive above the legal speed limit" }
                        , { am = "በፈለጉበት አቅጣጫ መጠምዘዝ ይችላሉ", en = "May turn in any direction they want" }
                        , { am = "በተከለከለ አቅጣጫ መጓዝ ይችላሉ", en = "May travel in a prohibited direction" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "To reach emergencies fast, on-duty emergency vehicles are exempt from speed limits and direction restrictions, and other traffic must give way."
          }
        , { topic = SafeDriving
          , prompt = { am = "አንድ ተሽከርካሪ በዝግታ ማሽከርከር የሚገባው ቦታዎች", en = "Where should a vehicle be driven slowly?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በጠባብ ድልድይ", en = "On a narrow bridge" }
                        , { am = "በጠመዝማዛ መንገድ", en = "On a winding road" }
                        , { am = "መስቀለኛ መንገድና እግረኛ ማቋረጫ", en = "At junctions and pedestrian crossings" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Narrow bridges, bends, junctions and crossings all limit space or visibility or bring conflicts with others, so speed must come down at each."
          }
        , { topic = Vehicle
          , prompt = { am = "የታመቀ የአየርና የቤንዚን ድብልቅ ላይ ከፍተኛ ኤሌክትሪክ ብልጭታ በመፍጠር እንዲቀጣጠል የሚረዳ ግሎው ፕላግ ይባላል", en = "The part that ignites the compressed air-petrol mixture with a high-voltage spark is called the glow plug." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The spark plug (ካንዴላ) ignites petrol engines; a glow plug only pre-heats diesel cylinders for starting."
          }
        , { topic = SafeDriving
          , prompt = { am = "በሳዓት ከ50-60 ኪ.ሜ የሚጓዝ ተሽከርካሪ ከሌላኛው ተሽከርካሪ ጋር በማሀል ሊኖር የሚገባ ርቀት ስንት ነው", en = "What gap should a vehicle travelling at 50-60 km/h keep from the vehicle ahead?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "15 ሜ", en = "15 m" }
                        , { am = "18 ሜ", en = "18 m" }
                        , { am = "20 ሜ", en = "20 m" }
                        ]
                    , correct = { am = "25 ሜ", en = "25 m" }
                    , after =
                        []
                    }
          , explanation = "The faster you go the longer your stopping distance, so at 50–60 km/h the gap rises to 25 m."
          }
        , { topic = SafeDriving
          , prompt = { am = "በሳዓት ከ90-100 ኪ.ሜ የሚጓዝ ተሽከርካሪ ከሌላኛው ተሽከርካሪ ጋር በማሀል ሊኖር የሚገባ ርቀት ስንት ነው", en = "What gap should a vehicle travelling at 90-100 km/h keep from the vehicle ahead?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "25 ሜ", en = "25 m" }
                        , { am = "28 ሜ", en = "28 m" }
                        ]
                    , correct = { am = "36 ሜ", en = "36 m" }
                    , after =
                        [ { am = "45 ሜ", en = "45 m" }
                        ]
                    }
          , explanation = "At 90–100 km/h stopping distance is much longer, so the required gap from the vehicle ahead is 36 m."
          }
        , { topic = SafeDriving
          , prompt = { am = "በሳዓት ከ70-80 ኪ.ሜ የሚጓዝ ተሽከርካሪ ከሌላኛው ተሽከርካሪ ጋር በማሀል ሊኖር የሚገባ ርቀት ስንት ነው", en = "What gap should a vehicle travelling at 70-80 km/h keep from the vehicle ahead?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "15 ሜ", en = "15 m" }
                        , { am = "18 ሜ", en = "18 m" }
                        , { am = "20 ሜ", en = "20 m" }
                        ]
                    , correct = { am = "30 ሜ", en = "30 m" }
                    , after =
                        []
                    }
          , explanation = "At 70–80 km/h the required following distance is 30 m to leave time to react and brake."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተሽከርካሪን ረጅም መብራት መጠቀም የምንችለው ከፊት ለፊታችን የሚመጣው ተሽከርካሪ በምን ያህል ርቀት ከሆነ ነው", en = "How far away must an oncoming vehicle be for us to use the high beam?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "65 ሳ.ሜ ርቀት በላይ ከሆነ", en = "More than 65 cm away" }
                        , { am = "50 ሜ ርቀት በታች ከሆነ", en = "Less than 50 m away" }
                        ]
                    , correct = { am = "50 ሜ ርቀት በላይ ከሆነ", en = "More than 50 m away" }
                    , after =
                        [ { am = "30 ሜ ርቀት በላይ ከሆነ", en = "More than 30 m away" }
                        ]
                    }
          , explanation = "High beams dazzle oncoming drivers, so you may only keep them on while the oncoming vehicle is still farther than 50 m away; closer than that, dip to low beam."
          }
        ]
    }
