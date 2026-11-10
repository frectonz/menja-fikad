module Quizzes.Quiz3 exposing (quiz)

import Quiz exposing (Answer(..), Quiz, Topic(..))


quiz : Quiz
quiz =
    { id = "quiz-3"
    , title = { am = "ፈተና 3", en = "Quiz 3" }
    , minutes = 100
    , first =
        { topic = Vehicle
        , prompt = { am = "የተሽከርካሪ የመቆጣጠሪያ መሣሪያ ያልሆነው፤", en = "Which is NOT a vehicle control device?" }
        , figure = Nothing
        , answer =
            Choice
                { before = []
                , correct = { am = "የፍሬቻ መብራት", en = "Turn-signal light" }
                , after =
                    [ { am = "ቁልፍ", en = "Key" }
                    , { am = "መሪ", en = "Steering wheel" }
                    , { am = "የፍሬን ፔዳል", en = "Brake pedal" }
                    , { am = "ማርሽ", en = "Gear lever" }
                    ]
                }
        , explanation = "The turn-signal light sends a message to other road users. The key, steering wheel, brake pedal and gear lever are what the driver uses to control the vehicle."
        }
    , rest =
        [ { topic = Vehicle
          , prompt = { am = "የፒስተንን ወደላይና ወደታች እንቅስቃሴ ወደክብ ዙር የሚቀይር ክፍል ------ ይባላል።", en = "The part that turns the piston's up-and-down motion into rotation is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ዲፍሬሻል", en = "Differential" }
                        ]
                    , correct = { am = "ክራንክ ሻፍት/ኮሎ/", en = "Crankshaft" }
                    , after =
                        [ { am = "ፋሻ", en = "Piston rings" }
                        , { am = "ፒስተን ፒን", en = "Piston pin" }
                        , { am = "ካምሻፍት", en = "Camshaft" }
                        ]
                    }
          , explanation = "The crankshaft turns the up-and-down movement of the pistons into rotation."
          }
        , { topic = Vehicle
          , prompt = { am = "------ የኤሌክትሪክ ኃይልን ወደመካኒካል ኃይል የሚቀይር ክፍል ነው።", en = "___ is the part that converts electrical energy into mechanical energy." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፊውዝ", en = "Fuse" }
                        , { am = "ባትሪ", en = "Battery" }
                        , { am = "ዲናሞ", en = "Dynamo" }
                        , { am = "ፍላይ ዊል/ቮላኖ/", en = "Flywheel" }
                        ]
                    , correct = { am = "ስታርተር ሞተር", en = "Starter motor" }
                    , after = []
                    }
          , explanation = "The starter motor uses electrical energy from the battery to turn the engine, which is mechanical energy."
          }
        , { topic = Vehicle
          , prompt = { am = "በኃይል ምት ጊዜ፤", en = "During the power stroke:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፒስተን ከላይ ወደታች ይወርዳል", en = "The piston moves down from the top" }
                        , { am = "ፒስተን ከታች ወደላይ ይወርዳል", en = "The piston moves up from the bottom" }
                        , { am = "ሁለቱም ቫልቮች ዝግ ይሆናሉ", en = "Both valves are closed" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        [ { am = "ፒስተን ወደታች ሲወርድ፣ ቫልቮች ይከፈታሉ", en = "The valves open as the piston goes down" }
                        ]
                    }
          , explanation = "On the power stroke the burning mixture pushes the piston down while both valves stay closed."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ጭስ ጥቁር የሚሆነው፤", en = "Engine exhaust smoke is black when:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ውሃ በስሊንደር ውስጥ ሲገባ ነው", en = "Water enters the cylinder" }
                        , { am = "ዘይት በስሊንደር ውስጥ ሲቃጠል ነው", en = "Oil burns in the cylinder" }
                        ]
                    , correct = { am = "በሞተር ውስጥ ብዙ ነዳጅ መብዛት ነው", en = "There is too much fuel in the engine" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "Black smoke means too much fuel is being burned. Water in the cylinder gives white smoke and burning oil gives blue smoke."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪ በክብ ዙር በሚዞርበት ወቅት የውጪኛው ጎማ ከውስጠኛው ጎማ በበለጠ ፍጥነት እንዲዞር የሚያደርግ ክፍል ------ ይባላል።", en = "When a vehicle turns, the part that lets the outer wheel turn faster than the inner wheel is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ጊር ቦክስ/ካምቢዮ/", en = "Gearbox" }
                        , { am = "ፕሮፔለር ሻፍት/ትራንስሚሲዮን/", en = "Propeller shaft" }
                        , { am = "አክሰል/ሺሚያስ/", en = "Axle" }
                        ]
                    , correct = { am = "ዲፈረንሻል", en = "Differential" }
                    , after =
                        [ { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                        ]
                    }
          , explanation = "The differential lets the outer wheel turn faster than the inner wheel in a bend."
          }
        , { topic = Vehicle
          , prompt = { am = "በሞተር ውስጥ የውሃ መተላለፊያ መስመር ------ ይባላል።", en = "The water passage inside the engine is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አይል ጋለሪ", en = "Oil gallery" }
                        , { am = "ሆዝ/ማኒኮቶ/", en = "Hose" }
                        , { am = "ቱቦ", en = "Pipe" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    , correct = { am = "ወተር ጃኬት", en = "Water jacket" }
                    , after = []
                    }
          , explanation = "The water jacket is the set of passages around the cylinders that carries the cooling water."
          }
        , { topic = Vehicle
          , prompt = { am = "ከባድ ማርሽ ወይም የጉልበት ማርሽ የሚባሉት፤ 1ኛ፣ 2ኛ እና 3ኛ ማርሽ ናቸው።", en = "The 'heavy' or 'power' gears are 1st, 2nd and 3rd gear." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The power gears are first and second. Third is not one of them."
          }
        , { topic = Vehicle
          , prompt = { am = "በቤንዚን ሞተር ላይ አየርና ነዳጅን የሚያቀላቅል ክፍል ------ ይባላል።", en = "The part that mixes air and fuel in a petrol engine is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ካርቡሬተር", en = "Carburetor" }
                    , after =
                        [ { am = "ቬንቹሪ", en = "Venturi" }
                        , { am = "ዳብራተር", en = "Air filter" }
                        , { am = "ሬጉሌተር", en = "Regulator" }
                        , { am = "እኛቶሬ", en = "Injector" }
                        ]
                    }
          , explanation = "The carburettor mixes air and petrol in the right proportion."
          }
        , { topic = Vehicle
          , prompt = { am = "የእስፕሪንጎችን የማስፈንጠር ኃይል የሚገታ ወይም የሚቀንስ ክፍል ------ ይባላል።", en = "The part that restrains or reduces the springs' bounce is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ሾክ አብዞርበር/አሞርዛቶር/", en = "Shock absorber" }
                    , after =
                        [ { am = "ኮይል እስፕሪንግ/ጥቅል ሞላ/", en = "Coil spring" }
                        , { am = "ባሌስትራ", en = "Leaf spring" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "The shock absorber damps the bouncing of the springs."
          }
        , { topic = Vehicle
          , prompt = { am = "በጉም መልክ ነፍጣን ወደስሊንደር የሚረጭ ክፍል ------ ይባላል።", en = "The part that sprays diesel into the cylinder as a mist is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ካንዴሊቲ", en = "Glow plug" }
                        , { am = "ካንዴላ", en = "Spark plug" }
                        , { am = "ኢንጀክሽን ፓምፕ", en = "Injection pump" }
                        ]
                    , correct = { am = "ኢንጀክተር ኖዝል/እኛቶሬ/", en = "Injector nozzle" }
                    , after =
                        [ { am = "የነዳጅ ማጣሪያ", en = "Fuel filter" }
                        ]
                    }
          , explanation = "The injector nozzle sprays diesel into the cylinder as a fine mist."
          }
        , { topic = Vehicle
          , prompt = { am = "------ በቤንዚን ሞተር ላይ የእሳት ብልጭታን በመፍጠር አየርና ነዳጅን የሚያቀጣጥል ክፍል ነው።", en = "___ is the part that ignites the air-fuel mixture in a petrol engine by making a spark." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ካንዴሊቲ", en = "Glow plug" }
                        , { am = "እኛቶሬ", en = "Injector" }
                        ]
                    , correct = { am = "ካንዴላ", en = "Spark plug" }
                    , after =
                        [ { am = "ካርቡሬተር", en = "Carburetor" }
                        , { am = "ዳብራተር/አየር ማጣሪያ/", en = "Air filter" }
                        ]
                    }
          , explanation = "The spark plug makes the spark that ignites the air and fuel mixture in a petrol engine."
          }
        , { topic = Vehicle
          , prompt = { am = "------ የተሽከርካሪን ፍጥነት ለመቀነስና ለመጨመር የሚረዳ መሣሪያ ነው።", en = "___ is the device that helps decrease and increase the vehicle's speed." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሬን", en = "Brake" }
                        , { am = "ፍሪሲዮን", en = "Clutch" }
                        ]
                    , correct = { am = "የነዳጅ መስጫ ፔዳል", en = "Accelerator pedal" }
                    , after =
                        [ { am = "ፍሪሲዮንና ፍሬን", en = "Clutch and brake" }
                        , { am = "«ለ» እና «ለ» መልስ ናቸው", en = "ለ and ለ are correct (as printed)" }
                        ]
                    }
          , explanation = "The accelerator pedal controls how much fuel the engine gets, so it raises and lowers the speed."
          }
        , { topic = Parking
          , prompt = { am = "ዳገት ላይ የተበላሸን ተሽከርካሪ አቁሞ ለመሄድ የእጅ ፍሬን ካልሠራ፤", en = "To leave a broken-down vehicle parked on an uphill when the handbrake doesn't work:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ታኮ መጠቀም", en = "Use wheel chocks" }
                        , { am = "የኃላ ማርሽ መጠቀም", en = "Use reverse gear" }
                        , { am = "አንደኛ ማርሽ መጠቀም", en = "Use 1st gear" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        [ { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "Facing uphill, chock the wheels and leave the vehicle in first gear. Reverse gear is used when facing downhill."
          }
        , { topic = SafeDriving
          , prompt = { am = "በፍጥነት እያሽከረከርን ፍጥነትን ለመቀነስ ስንፈልግ መጀመሪያ መርገጥ ያለብን የመቆጣጠሪያ መሣሪያ፤", en = "When driving fast and wanting to slow down, the control to press first is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሪሲዮን ፍሬን ነው", en = "Clutch and brake" }
                        , { am = "ፍሪሲዮን ፔዳል ነው", en = "The clutch pedal" }
                        ]
                    , correct = { am = "የፍሬን ፔዳል ነው", en = "The brake pedal" }
                    , after =
                        [ { am = "የነዳጅ ፔዳል ነው", en = "The accelerator pedal" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Press the brake first to bring the speed down. The clutch comes later, just before the engine would stall."
          }
        , { topic = Vehicle
          , prompt = { am = "የራድያተር፣ የሞተርን ውጫዊ ክፍልና ዲናሞን የሚያቀዘቅዝ ክፍል ------ ይባላል።", en = "The part that cools the radiator, the outside of the engine and the dynamo is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ፋን/ቬንትሌተር/", en = "Fan" }
                    , after =
                        [ { am = "ቴርሞስታት", en = "Thermostat" }
                        , { am = "ወተር ጃኬት", en = "Water jacket" }
                        , { am = "የውሃ ፓምፕ", en = "Water pump" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "The fan pulls air through the radiator and over the outside of the engine and the dynamo."
          }
        , { topic = Vehicle
          , prompt = { am = "የጎማ ንፋስ ከመጠን በላይ ሲሆን፤ የመካከለኛው ክፍል ይበላል።", en = "When a tire is over-inflated, the middle of the tread wears." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Too much air makes the tyre bulge, so the middle of the tread carries the load and wears first."
          }
        , { topic = Vehicle
          , prompt = { am = "ባትሪን ለማሰር ሲፈለግ መጀመሪያ የሚታሰረው፤ ፖዘቲቭ ተርሚናል ነው።", en = "When connecting a battery, the positive terminal is connected first." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Connect the positive terminal first and the negative last. Disconnect in the opposite order."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ዘይት ተግባር ያልሆነው፤", en = "Which is NOT a function of engine oil?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሰበቃን ይቀንሳል", en = "Reduces friction" }
                        , { am = "ዝገትን ይከላከላል", en = "Prevents rust" }
                        , { am = "ድምፅን ይቀንሳል", en = "Reduces noise" }
                        , { am = "ጥሩ እመቃና ጉልበት እንዲኖር ይረዳል", en = "Helps give good compression and power" }
                        ]
                    , correct = { am = "ተመላሽ እሳትን ያፍናል", en = "Suppresses backfire" }
                    , after = []
                    }
          , explanation = "Engine oil reduces friction, prevents rust, quietens the engine and helps seal for compression. Suppressing backfire is not one of its jobs."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ከዲፍረንሻል የተቀበለውን ኃይል ለሁለቱ ጎማዎች የሚያስተላልፍ ክፍል ነው።", en = "___ is the part that passes power from the differential to the two wheels." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "አክሰል/ሽሚያስ/", en = "Axle" }
                    , after =
                        [ { am = "ቦል ጆይንት/ቴስቲኒ/", en = "Ball joint" }
                        , { am = "ትራንስሚሲዮን", en = "Transmission" }
                        , { am = "ጊር ቦክስ", en = "Gearbox" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The axle shafts carry power from the differential to the two wheels."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሞተር የተቀበለውን የሞቀ ውሃ ወደቅዝቃዜ የሚቀይር ክፍል ------ ይባላል።", en = "The part that cools the hot water coming from the engine is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ራድያተር", en = "Radiator" }
                    , after =
                        [ { am = "ሆዝ/ማኒኮቶ/", en = "Hose" }
                        , { am = "ወተር ጃኬት", en = "Water jacket" }
                        , { am = "ፋን/ቬንትሌተር/", en = "Fan" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The radiator cools the hot water coming from the engine."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ዙር በደቂቃ ምን ያህል እንደሆነ የሚያሳይ መሣሪያ ------ ይባላል።", en = "The gauge that shows engine revolutions per minute is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኦዶ ሜትር", en = "Odometer" }
                        , { am = "ስፒዶ ሜትር", en = "Speedometer" }
                        , { am = "ትሪፕ ኦዶ ሜትር", en = "Trip meter" }
                        , { am = "ዳሽ ቦርድ", en = "Dashboard" }
                        ]
                    , correct = { am = "ታኮ ሜትር", en = "Tachometer" }
                    , after = []
                    }
          , explanation = "The tachometer shows engine revolutions per minute."
          }
        , { topic = Vehicle
          , prompt = { am = "በባትሪ ውስጥ ስለሚገኘው የውሃና የአሲድ ድብልቅ መጠን ትክክል የሆነው፤", en = "The correct water-to-acid ratio in a battery is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ውሃ 50%፣ አሲድ 50%", en = "Water 50%, acid 50%" }
                        , { am = "ውሃ 65%፣ አሲድ 40%", en = "Water 65%, acid 40%" }
                        ]
                    , correct = { am = "ውሃ 65%፣ አሲድ 35%", en = "Water 65%, acid 35%" }
                    , after =
                        [ { am = "ውሃ 35%፣ አሲድ 65%", en = "Water 35%, acid 65%" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Battery electrolyte is about 65% water and 35% acid."
          }
        , { topic = SafeDriving
          , prompt = { am = "በፀሐያማና ሞቃታማ የአየር ሁኔታ በማሽከርከር ወቅት ሊደረግ የሚገባው፤", en = "When driving in hot, sunny weather, you should:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በየሁለት ሰዓት ጉዞ የጎማ ሙቀት መጨመሩን ማየት", en = "Check tire heat every 2 hours of driving" }
                        , { am = "ከ300 ኪ.ሜ ጉዞ በኃላ የጎማ ሙቀት መጨመሩን ማየት", en = "Check tire heat after 300 km" }
                        , { am = "በየአራት ሰዓት ጉዞ የጎማ ሙቀት መጨመሩን መከታተል", en = "Monitor tire heat every 4 hours of driving" }
                        , { am = "በየ150 ኪ.ሜ ጉዞ የጎማ ሙቀትን መፈተሽ", en = "Check tire heat every 150 km" }
                        ]
                    , correct = { am = "«ሀ» እና «መ» መልስ ናቸው", en = "ሀ and መ are correct" }
                    , after = []
                    }
          , explanation = "In hot weather check the tyres for heat every two hours or every 150 km."
          }
        , { topic = SafeDriving
          , prompt = { am = "በተራራማ አካባቢ ስናሽከረክር፤", en = "When driving in mountainous areas:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ወደላይ ስንወጣ የመሬት ስበት ፍጥነታችንን ይጨምራል", en = "Going uphill, gravity increases our speed" }
                        , { am = "ወደታች ስንወርድ የመሬት ስበት ፍጥነታችንን ይቀንሰዋል", en = "Going downhill, gravity reduces our speed" }
                        ]
                    , correct = { am = "ወደላይ ስንወጣ የመሬት ስበት ፍጥነታችንን ይቀንሰዋል", en = "Going uphill, gravity reduces our speed" }
                    , after =
                        [ { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Gravity pulls against you when climbing, so your speed drops. Going down it adds to your speed."
          }
        , { topic = SafeDriving
          , prompt = { am = "የጎማ መንሸራተት የሚከሰተው፤", en = "Tire skidding happens:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሬን በሐይል በመያዝ ነው", en = "From braking hard" }
                        , { am = "መሪን ከሚፈልገው በላይ በማዞር ነው", en = "From turning the steering wheel too far" }
                        , { am = "ከሚገባው በላይ እና በድንገት ነዳጅ በመስጠት ነው", en = "From accelerating too hard and suddenly" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after = []
                    }
          , explanation = "Hard braking, turning the steering too far and sudden hard acceleration can each make the tyres lose grip."
          }
        , { topic = SafeDriving
          , prompt = { am = "ከመጠን በላይ ፍሬን መያዝ፤", en = "Braking too hard:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የኃላ እግር ከፊት እግር በበለጠ እንዲዞር ያደርጋል", en = "Makes the rear swing round past the front" }
                        , { am = "የነጂ ጎማ መሬትን መቆንጠጥ እንዳይችል ያደርጋል", en = "Makes the steered wheels lose grip" }
                        , { am = "ፍሬን ሸራ ከታምቡር ጋር ተጣብቆ እንዲቀር ያደርጋል", en = "Makes the brake lining stick to the drum" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after = []
                    }
          , explanation = "Braking too hard can swing the rear round, make the steered wheels lose grip and leave the lining stuck to the drum."
          }
        , { topic = SafeDriving
          , prompt = { am = "ለፊት ጎማ መንሸራተት ምክንያት የማይሆነው፤", en = "Which is NOT a cause of front-wheel skidding?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በፍጥነት ማሽከርከር ነው", en = "Driving fast" }
                        , { am = "የጎማ ጥርስ ማለቅ ነው", en = "Worn tire tread" }
                        ]
                    , correct = { am = "ጭነት ወደፊት ብቻ መጫን ነው", en = "Loading only at the front" }
                    , after =
                        [ { am = "ጭነት ወደኃላ ብቻ መጫን ነው", en = "Loading only at the rear" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Weight over the front wheels gives them more grip. Speed, worn tread and loading only at the rear all make the front wheels skid."
          }
        , { topic = FireSafety
          , prompt = { am = "ኢነርሺያ የሚያመጣውን ወደፊት የመወርወር እና ከመሪ ጋር የመጋጨት አደጋን ለመከላከል፤", en = "To prevent being thrown forward into the steering wheel by inertia:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሬን መጠቀም", en = "Use the brake" }
                        ]
                    , correct = { am = "የደህንነት ቀበቶ ማሰር", en = "Wear a seatbelt" }
                    , after =
                        [ { am = "ፍሪሲዮን ፍሬን መርገጥ", en = "Press the clutch and brake" }
                        , { am = "የእጅ ፍሬን መያዝ", en = "Apply the handbrake" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "A seatbelt holds you in the seat when inertia throws your body forward."
          }
        , { topic = SafeDriving
          , prompt = { am = "የመቆሚያ ጠቅላላ ርቀት እንዲረዝም ወይም እንዲያጥር ምክንያት የሚሆነው፤", en = "What makes total stopping distance longer or shorter?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የጎማ ጥርስ ሁኔታ ነው", en = "Tire tread condition" }
                        , { am = "የተሽከርካሪ አካል ቅርፅ/ዲዛይን/ ነው", en = "The vehicle's body shape/design" }
                        , { am = "የንፋስ ፍጥነትና አቅጣጫ ነው", en = "Wind speed and direction" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after = []
                    }
          , explanation = "Tyre tread, the shape of the vehicle and the wind all change the total stopping distance."
          }
        , { topic = Vehicle
          , prompt = { am = "በአውቶማቲክ ጊር ቦክስ ተሽከርካሪ ላይ ማርሹ ‹P› ላይ ካልሆነ በስተቀር የሞተር ማስነሻ ቁልፍን ማውጣት ወይም መንቀል አይቻልም።", en = "In an automatic, the ignition key can't be removed unless the gear selector is in P." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "An automatic only releases the key with the selector in P, so the vehicle cannot be left free to roll."
          }
        , { topic = SafeDriving
          , prompt = { am = "ነገሮች ባሉበት ቦታ ወይም ቅርፅ ምክንያት የሚኖራቸው የተጠራቀመ ኃይል ------ ይባላል።", en = "The stored energy objects have because of their position or shape is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የመሬት ስበት", en = "Gravity" }
                        , { am = "የኢነርሻ ህግ", en = "Law of inertia" }
                        ]
                    , correct = { am = "ፓቴንሻል ሐይል", en = "Potential energy" }
                    , after =
                        [ { am = "የኪነቲክ ሐይል", en = "Kinetic energy" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Potential energy is the energy stored in an object because of its position or shape."
          }
        , { topic = SafeDriving
          , prompt = { am = "በግጭት ጊዜ ምመንተም፤", en = "In a collision, momentum:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ወደሙቀት ይቀየራል", en = "Turns into heat" }
                        , { am = "ተሽከርካሪን ወደማውደም ይለወጣል", en = "Goes into wrecking the vehicle" }
                        , { am = "ተጓዥን ወደመጎዳት ይለወጣል", en = "Goes into injuring the occupants" }
                        , { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after = []
                    }
          , explanation = "In a collision the momentum turns into heat, into damage to the vehicle and into injury to the people inside."
          }
        , { topic = Vehicle
          , prompt = { am = "------ በካርቡሬተር ውስጥ አየርና ነዳጅ የሚቀላቀልበት ክፍል ነው።", en = "___ is where air and fuel mix inside the carburetor." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ቬንቹሪ", en = "Venturi" }
                    , after =
                        [ { am = "ፍሎት ቦል", en = "Float ball" }
                        , { am = "ፍሎት ቸምበር", en = "Float chamber" }
                        , { am = "ትሮትል ቫልቭ", en = "Throttle valve" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The venturi is the narrow throat of the carburettor where air and fuel mix."
          }
        , { topic = SafeDriving
          , prompt = { am = "ትክክል ያልሆነው አማራጭ፤", en = "Which statement is incorrect?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ሰበቃ በተሽከርካሪ ክብደት ምክንያት ይቀንሳል", en = "Friction decreases because of vehicle weight" }
                    , after =
                        [ { am = "የጎማ ሊሾ መሆን ወይም የንፋስ መጠን መጨመር ሰበቃን ይቀንሳል", en = "A bald or over-inflated tire reduces friction" }
                        , { am = "የጎማ ንፋስ ከመጠን በታች ከሆነ ሰበቃ ይጨምራል", en = "An under-inflated tire increases friction" }
                        , { am = "ሰበቃ በመንገድ ሁኔታ ይወሰናል", en = "Friction depends on the road surface" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "More weight presses the tyres harder onto the road, so friction goes up, not down. That makes the first statement the incorrect one."
          }
        , { topic = SafeDriving
          , prompt = { am = "የፍሬን ሰበቃ በመንገዱና በጎማው መካከል ካለው ከበለጠ፤", en = "If brake friction exceeds the friction between the tire and the road:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ተሽከርካሪው በፍጥነት ይቆማል", en = "The vehicle stops quickly" }
                        ]
                    , correct = { am = "የተሽከርካሪ ጎማ ሊንሸራተት ይችላል", en = "The tires may skid" }
                    , after =
                        [ { am = "በጎማና በመንገዱ መካከል ከፍተኛ ሰበቃ ሊፈጠር ይችላል", en = "High friction may form between tire and road" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "When the brakes grip harder than the tyres grip the road, the wheels lock and the tyres skid."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተሽከርካሪ ኩርባ በሚዞርበት ጊዜ ከመንገድ ውጪ የሚስብ ኃይልን ለመቆጣጠር የማያስችለው፤", en = "Which does NOT help control the force pulling a vehicle off the road on a curve?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ከመዞር በፊት ፍጥነት መቀነስ ነው", en = "Slowing down before the curve" }
                        , { am = "ፍሬን በትንሹና በጥንቃቄ መያዝ ነው", en = "Braking lightly and carefully" }
                        , { am = "ማርሽን ወደ ከባድ ማርሽ መቀነስ ነው", en = "Shifting down to a lower gear" }
                        ]
                    , correct = { am = "የፍሬን ፔዳል ሙሉ ለሙሉ መያዝ ነው", en = "Pressing the brake pedal all the way" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Pressing the brake pedal all the way in a bend locks the wheels and makes things worse. Slowing before the bend, braking gently and using a lower gear all help."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ለአደጋ መንስኤ የማይሆነው፤", en = "Which is NOT a cause of accidents?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሬቻ ካላሳየ አይታጠፍም ብሎ ማሰብ", en = "Assuming a vehicle won't turn if it hasn't signaled" }
                        , { am = "እግረኞች ጥንቃቄ ያደርጋሉ ብሎ ርግጠኛ መሆን", en = "Being sure pedestrians will be careful" }
                        , { am = "የመንገድ ዳር ምልክቶችንና መብራቶችን ሌሎች ያከብራሉ ብሎ ማሰብ", en = "Assuming others will obey road signs and lights" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "Each of these is a risky assumption about other road users that causes accidents, so none of them is the exception."
          }
        , { topic = SafeDriving
          , prompt = { am = "አደጋ ሲያጋጥምና ፍሬን ይዞ ለማቆም በቂ ርቀት ከሌለ፤", en = "When facing danger without enough distance to brake to a stop:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሪሲዮን መርገጥ", en = "Press the clutch" }
                        ]
                    , correct = { am = "መሪን መጠቀም", en = "Steer away" }
                    , after =
                        [ { am = "ፍሪሲዮን ፍሬን መርገጥ", en = "Press the clutch and brake" }
                        , { am = "ፍጥነት ጨምሮ ከአደጋ ማምለጥ", en = "Speed up to escape" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "When there is not enough room to stop, steer away from the danger."
          }
        , { topic = SafeDriving
          , prompt = { am = "ከፊታችን ካለው ተሽከርካሪ ምን ያህል ርቀት ላይ እንዳለን ለማወቅ የሚያስችለን የ------ ህግ ይባላል።", en = "The rule for judging your distance from the vehicle ahead is called the ___ rule." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "30 ሰከንድ", en = "30-second" }
                        , { am = "3 ደቂቃ", en = "3-minute" }
                        ]
                    , correct = { am = "3 ሰከንድ", en = "3-second" }
                    , after =
                        [ { am = "3 ሰዓት", en = "3-hour" }
                        , { am = "የኢነርሺያ", en = "Inertia" }
                        ]
                    }
          , explanation = "It is the three-second rule. You should pass a fixed point at least three seconds after the vehicle ahead."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተደራራቢ አደጋዎች ውስጥ ላለመግባት መደረግ የማይገባው፤", en = "Which should NOT be done to avoid running into several hazards at once?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የአደጋ መንስኤዎችን መለየት", en = "Identify hazard causes" }
                        , { am = "ፍጥነትና ቦታን ማስተካከል", en = "Adjust speed and position" }
                        , { am = "የአደጋ ዓይነቶችን መለየት", en = "Identify types of hazard" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "Identifying the causes and types of hazard and adjusting speed and position are all things you should do, so none of them is the exception."
          }
        , { topic = SafeDriving
          , prompt = { am = "በአደገኛ ሁኔታዎች ላይ አደጋ እንዳይከሰት የሚረዳው፤", en = "What helps avoid a crash in dangerous situations?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ማቆም ነው", en = "Stopping" }
                        , { am = "በመሪ ማዞር ነው", en = "Steering away" }
                        , { am = "ፍጥነት መጨመር ነው", en = "Speeding up" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Stopping, steering away and speeding up are the three ways to escape a hazard."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር ከማይነሳባቸው ምክንያቶች ውስጥ የሆነው፤", en = "Which is a reason an engine won't start?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የራድያተር ውሃ ማነስ ነው", en = "Low radiator water" }
                        , { am = "የሞተር ዘይት ማነስ ነው", en = "Low engine oil" }
                        ]
                    , correct = { am = "የኤሌክትሪክ ገመዶች መላላት ነው", en = "Loose electrical cables" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "Loose electrical cables stop current reaching the starter and ignition. Low water or oil does not prevent starting."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ከልክ በላይ መሞቅ ምክንያት የማይሆነው፤", en = "Which is NOT a cause of engine overheating?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የራድያተር ክዳን በትክክል አለመከደን", en = "The radiator cap not closed properly" }
                        , { am = "የጭነት መብዛት", en = "Overloading" }
                        , { am = "የጎማ ንፋስ ማነስና ሊሾ መሆን", en = "Under-inflated or bald tires" }
                        , { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "A loose radiator cap, overloading and soft or bald tyres can all make the engine overheat, so none of them is the exception."
          }
        , { topic = Vehicle
          , prompt = { am = "በሞተር ውስጥ የዘይት መተላለፊያ መስመር ------ ይባላል።", en = "The oil passage inside the engine is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "አይል ጋለሪ", en = "Oil gallery" }
                    , after =
                        [ { am = "ሶቶኮፓ", en = "Oil pan" }
                        , { am = "ወተር ጃኬት", en = "Water jacket" }
                        , { am = "አይል ፓምፕ", en = "Oil pump" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The oil gallery is the passage that carries oil through the engine."
          }
        , { topic = Vehicle
          , prompt = { am = "------ በናፍጣ ሞተር ላይ በመገጠም ጠዋት ቶሎ ለማስነሳት እንዲቻል የሚገባውን አየርና ሲሊንደርን የሚያሞቅ ክፍል ነው።", en = "___ is fitted to a diesel engine and warms the intake air and cylinder for quick morning starts." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ካንዴላ/ስፓርክ ፕለግ/", en = "Spark plug" }
                        ]
                    , correct = { am = "ካንዴሊቲ/ግሎፕለግ/", en = "Glow plug" }
                    , after =
                        [ { am = "እኛቶሬ/ኢንጀክተር ኖዝል/", en = "Injector nozzle" }
                        , { am = "ኢንጀክሽን ፓምፕ", en = "Injection pump" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The glow plug warms the air and the cylinder of a diesel engine so it starts quickly when cold."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ራድያተር ክዳን ላይ በመገጠም ከራድያተር በተን መልክ የሚወጣን ውሃ ወደተርፍ ውሃ መያዣ ፕላስቲክ የሚያስተላልፍ ክፍል ነው።", en = "___ sits in the radiator cap and sends water escaping as steam to the plastic overflow tank." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቫኪዩም ቫልቭ", en = "Vacuum valve" }
                        ]
                    , correct = { am = "ፕሬዥር ቫልቭ", en = "Pressure valve" }
                    , after =
                        [ { am = "ቴርሞስታት", en = "Thermostat" }
                        , { am = "ወተር ጃኬት", en = "Water jacket" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "The pressure valve in the radiator cap opens when pressure builds up and lets the excess go to the overflow tank."
          }
        , { topic = Vehicle
          , prompt = { am = "------ በቬንትሌተር የሚቀዘፈው አየር ወደተለያየ አቅጣጫ እንዳይበተን የሚረዳ ክፍል ነው።", en = "___ keeps the air drawn by the fan from scattering in different directions." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ራድያተር", en = "Radiator" }
                        ]
                    , correct = { am = "ሽራውድ", en = "Fan shroud" }
                    , after =
                        [ { am = "ቤልት/ችንጋ/", en = "Belt" }
                        , { am = "የራድያተር ክዳን", en = "Radiator cap" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The fan shroud channels the air the fan pulls so that it all passes through the radiator."
          }
        , { topic = Vehicle
          , prompt = { am = "------ የኤሌክትሪክ ኃይልን ከባትሪ ወደተለያዩ የኤሌክትሪክ ክፍሎች የሚያገናኝና የሚያቋርጥ መሣሪያ ነው።", en = "___ connects and cuts battery power to the various electrical parts." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ቁልፍ", en = "Ignition switch (key)" }
                    , after =
                        [ { am = "ዲናሞ", en = "Dynamo" }
                        , { am = "ሞተሪኖ", en = "Starter motor" }
                        , { am = "ሬጉሌተር", en = "Regulator" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The ignition switch connects the battery to the electrical parts and cuts them off."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ የእስፕሪንጎች ጥቅም ያልሆነው፤", en = "Which is NOT a function of springs?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ጭነት ይሸከማሉ", en = "They carry the load" }
                        , { am = "የሚፈናጥርን ኃይል ያለሰልሳሉ", en = "They soften bouncing" }
                        , { am = "ጎማን ከቦዲ/ቻንሲ/ ጋር ያገናኛሉ", en = "They connect the wheels to the body/chassis" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "Springs carry the load, soften the bouncing and join the wheels to the body, so none of them is the exception."
          }
        , { topic = Vehicle
          , prompt = { am = "ስለ ቮላኖ/ፍላይ ዊል/ ተግባር ትክክል የሆነው፤", en = "Which is correct about the flywheel's function?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ለፍሪሲዮን መግጠሚያነት ያገለግላል", en = "It serves as the mounting for the clutch" }
                    , after =
                        [ { am = "የኮሎን ሚዛን ይጠብቃል", en = "It keeps the crankshaft balanced" }
                        , { am = "ከሞተር የሚወጣን ኃይል ያስተላልፋል ያቋርጣል", en = "It transmits and cuts the engine's power" }
                        , { am = "በጥርሶቹ አማካኝነት ሞተርን ለማስነሳት ያገለግላል", en = "Its teeth are used to start the engine" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The flywheel is what the clutch is mounted on. Passing on or cutting the engine's power is the clutch's own job."
          }
        , { topic = Vehicle
          , prompt = { am = "ከመሪ ዘንግ የተቀበለውን አነስተኛ ኃይል በተወሰነ መጠን አባዝቶ ወደ ቀጥታ ዙር የሚቀይር ክፍል ------ ይባላል።", en = "The part that multiplies the small force from the steering shaft and converts it into straight-line motion is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የመሪ ጥርስ ሳጥን", en = "Steering box" }
                    , after =
                        [ { am = "የመሪ መዘውር ዘንግ", en = "Steering column shaft" }
                        , { am = "ቦል ጆይንት/ቴስቲኒ/", en = "Ball joint" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The steering box multiplies the effort from the steering shaft and turns it into the sideways push that steers the wheels."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ተሽከርካሪ ለአንድ ጊዜ ጉዞ ብቻ ምን ያህል ኪ.ሜ እንደተጓዘ የሚመዘግብ መሣሪያ ነው።", en = "___ records how many km the vehicle has traveled on a single trip." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኦዶ ሜትር", en = "Odometer" }
                        , { am = "ታኮ ሜትር", en = "Tachometer" }
                        , { am = "ስፒዶ ሜትር", en = "Speedometer" }
                        ]
                    , correct = { am = "ትሪፕ ኦዶ ሜትር", en = "Trip meter" }
                    , after =
                        [ { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "The trip meter counts the kilometres covered on one journey and can be reset."
          }
        , { topic = Vehicle
          , prompt = { am = "በተለያየ ዘዴ ቫልቮች እንዲከፈቱ የሚረዳ ክፍል ------ ይባላል።", en = "The part that opens the valves is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኮሎ/ክራንክ ሻፍት/", en = "Crankshaft" }
                        ]
                    , correct = { am = "ካምሻፍት/አልብሮካም/", en = "Camshaft" }
                    , after =
                        [ { am = "ቮላኖ/ፍላይ ዊል/", en = "Flywheel" }
                        , { am = "እስፕሪንግ/ሞላ/", en = "Spring" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The camshaft opens the valves."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት አንዱ የፍሪሲዮን ክፍል አይደለም፤", en = "Which of the following is NOT a clutch part?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፕላቶ/ፕሬዥር ፕሌት/", en = "Pressure plate" }
                        , { am = "ቮላኖ/ፍላይ ዊል/", en = "Flywheel" }
                        ]
                    , correct = { am = "ቤላ/ኮኔክቲንግ ሮድ/", en = "Connecting rod" }
                    , after =
                        [ { am = "የፍሪሲዮን ሸራ/ፍሪክሽን ዲስክ/", en = "Clutch disc" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "The connecting rod is an engine part. The pressure plate, flywheel and clutch disc make up the clutch."
          }
        , { topic = Vehicle
          , prompt = { am = "በካርቡሬተር ውስጥ የነዳጅ መያዣ ክፍል ------ ይባላል።", en = "The part of the carburetor that holds fuel is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ፍሎት ቸምበር", en = "Float chamber" }
                    , after =
                        [ { am = "ቬንቹሪ", en = "Venturi" }
                        , { am = "ፍሎት ቦል", en = "Float ball" }
                        , { am = "ትሮትል ቫልቭ", en = "Throttle valve" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "The float chamber holds the fuel inside the carburettor."
          }
        , { topic = Vehicle
          , prompt = { am = "የፍሬን ዘይት መያዣ ክፍል ------ በመባል ይታወቃል።", en = "The part that holds the brake fluid is known as ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሰልቫትዮ", en = "Servo" }
                        ]
                    , correct = { am = "ማስተር ስሊንደር", en = "Master cylinder" }
                    , after =
                        [ { am = "ሶቶኮፓ", en = "Oil pan" }
                        , { am = "ዊል ስሊንደር", en = "Wheel cylinder" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The master cylinder holds the brake fluid and pushes it to the wheels."
          }
        , { topic = Vehicle
          , prompt = { am = "------ በተሽከርካሪ የቴክኒክ ክፍሎች ላይ ብልሽት ከመድረሱ በፊት የሚደረግ ጥገና ሲሆን ጥቅሙም የተሽከርካሪ የአገልግሎት ጊዜን ማራዘም ነው።", en = "___ is maintenance done before the vehicle's technical parts fail, and it extends the vehicle's service life." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ወቅታዊ ጥገና", en = "Periodic maintenance" }
                    , after =
                        [ { am = "ብልሽት የመከላከል ጥገና", en = "Preventive maintenance" }
                        , { am = "ዓመታዊ ጥገና", en = "Annual maintenance" }
                        , { am = "ዓመታዊ ምርመራ", en = "Annual inspection" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Periodic maintenance is carried out on schedule before parts fail, which extends the vehicle's life."
          }
        , { topic = FireSafety
          , prompt = { am = "ከፈሳሽ ነገሮች የሚነሳ እሳት የ ------ ክፍል እሳት ይባላል።", en = "A fire from liquids is called a Class ___ fire." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "መ", en = "መ (Class D)" }
                        , { am = "ሐ", en = "ሐ (Class C)" }
                        ]
                    , correct = { am = "ለ", en = "ለ (Class B)" }
                    , after =
                        [ { am = "ሀ", en = "ሀ (Class A)" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Fires in flammable liquids are Class B. In the Amharic lettering that is class ለ, which is the third option here."
          }
        , { topic = Vehicle
          , prompt = { am = "በካርቡሬተር ላይ በመገጠም ከነዳጅ መስጫ ፔዳል ጋር የሚገናኝ ክፍል ------ ይባላል።", en = "The carburetor part linked to the accelerator pedal is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቾክ ቫልቭ", en = "Choke valve" }
                        , { am = "አስገቢ ቫልቭ", en = "Intake valve" }
                        ]
                    , correct = { am = "ትሮትል ቫልቭ", en = "Throttle valve" }
                    , after =
                        [ { am = "ቬንቹሪ", en = "Venturi" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The throttle valve is linked to the accelerator pedal and controls how much mixture enters the engine."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ተሽከርካሪ ከተሰራበት ጊዜ ጀምሮ ምን ያህል ኪ.ሜ. እንደተጓዘ የሚመዘግብ መሣሪያ ነው።", en = "___ records how many km the vehicle has traveled since it was built." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ትሪፕ ኦዶ ሜትር", en = "Trip meter" }
                        , { am = "ስፒዶ ሜትር", en = "Speedometer" }
                        , { am = "ታኮ ሜትር", en = "Tachometer" }
                        ]
                    , correct = { am = "ኦዶ ሜትር", en = "Odometer" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The odometer records the total distance the vehicle has covered since it was built."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ዳሽ ቦርድ ላይ የሚገኙ መሣሪያዎች በትክክል መስራታቸውን የሚያሳውቅ መሣሪያ ነው።", en = "___ shows whether the instruments on the dashboard are working properly." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ቴስት", en = "Test" }
                    , after =
                        [ { am = "ፊውዝ", en = "Fuse" }
                        , { am = "ሬጉሌተር", en = "Regulator" }
                        , { am = "ኮንዴንሰር", en = "Condenser" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The test function lights up the dashboard instruments so you can see that they work."
          }
        , { topic = Vehicle
          , prompt = { am = "------ የውስጠኛው ክፍሉ ከፍሬን ሸራ ጋር ሰበቃ የሚፈጠርበት ሲሆን የውጭኛው አካሉ ጎማ የሚገጠምበት የፍሬን ክፍል ነው።", en = "___ is the brake part whose inside rubs against the brake lining and whose outside carries the wheel." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የፍሬን ታምቡር/ድራም/", en = "Brake drum" }
                    , after =
                        [ { am = "አክሰል/ሽሚያስ/", en = "Axle" }
                        , { am = "የፍሬን ጫማ", en = "Brake shoe" }
                        , { am = "ዲፈረንሺያል", en = "Differential" }
                        , { am = "አምርዛቶር", en = "Shock absorber" }
                        ]
                    }
          , explanation = "The brake drum turns with the wheel. The lining rubs on its inside and the wheel is bolted to its outside."
          }
        , { topic = Vehicle
          , prompt = { am = "------ የተሽከርካሪ ጭስ እንዳይወጣ በማድረግ ወይም ነዳጅ ወደስሊንደር እንዳይሄድ በማድረግ የተሽከርካሪ ፍጥነት እንዲቀንስ የሚያደርግ መቆጣጠሪያ መሣሪያ ነው።", en = "___ slows the vehicle by blocking the exhaust or stopping fuel from reaching the cylinders." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ኢንጅን ብሬክ/ፍሬና ሞተር/", en = "Engine brake" }
                    , after =
                        [ { am = "የእግር ፍሬን", en = "Foot brake" }
                        , { am = "የእጅ ፍሬን", en = "Handbrake" }
                        , { am = "ሬዱታ ማርሽ", en = "Low-range gear" }
                        , { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                        ]
                    }
          , explanation = "The engine brake slows the vehicle by blocking the exhaust or cutting the fuel to the cylinders."
          }
        , { topic = SafeDriving
          , prompt = { am = "አንድ አሽከርካሪ ረጅም ጉዞ ከማሽከርከሩ በፊት ሊይዝ የሚገባው መረጃ ውስጥ አስፈላጊ ያልሆነው፤", en = "Which information is NOT needed before driving a long trip?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በመንገዱ ላይ ስለሚገኝ ህብረተሰብ ባህልና ቋንቋ", en = "The culture and language of communities along the route" }
                        , { am = "ስለሚጓዝበት አካባቢ የእግረኞች የመንገድ አጠቃቀም", en = "How pedestrians use the road in the area" }
                        , { am = "ስለአገልግሎት መስጫ ተቋማት መገኛ ቦታ", en = "Where service facilities are located" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "The local culture and language, how pedestrians use the road and where services are found are all useful before a long trip, so none of them is the exception."
          }
        , { topic = Vehicle
          , prompt = { am = "የሬዱታ ማርሽ /H₂/ ላይ ሲሆን የነዳጅ ፍጆታና የጎማ መበላት ይጨምራል።", en = "When the transfer case is in 2H (two-wheel drive high), fuel consumption and tire wear increase." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "2H is normal two-wheel drive. It is four-wheel drive that raises fuel use and tyre wear."
          }
        , { topic = Vehicle
          , prompt = { am = "የኃላ ባላንስ ለመስራት የፍሪሲዮን ፔዳል በመርገጥ አንደኛ ማርሽ ማስገባት ያስፈልጋል።", en = "To hold balance in reverse on a slope, you press the clutch and engage 1st gear." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Holding the vehicle while reversing on a slope needs reverse gear, not first."
          }
        , { topic = Vehicle
          , prompt = { am = "የናፍጣ ሞተር ቁልፍን /ON/ ላይ ይዞ ጥቂት ጊዜ ጠብቆ ማስነሳት አስፈላጊነት፤", en = "Why hold a diesel engine's key at ON for a moment before starting?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የኤሌክትሪክ ክፍሎች እንዳይቃጠሉ ለማድረግ ነው", en = "So the electrical parts don't burn out" }
                        , { am = "የባትሪን የማስነሳት አቅም ለመጨመር ነው", en = "To increase the battery's starting power" }
                        ]
                    , correct = { am = "ወደስሊንደር የሚገባውን አየርና ስሊንደር እንዲሞቅ ነው", en = "So the glow plugs warm the intake air and cylinder" }
                    , after =
                        [ { am = "ከባትሪ መድከም ምክንያት ስለሚሆን አስፈላጊ አይደለም", en = "It is unnecessary because it drains the battery" }
                        , { am = "ከ«መ» በስተቀር ሁሉም መልስ ናቸው", en = "All except መ are correct" }
                        ]
                    }
          , explanation = "Holding the key at ON gives the glow plugs time to warm the air and the cylinder."
          }
        , { topic = Vehicle
          , prompt = { am = "የቤንዚንና የናፍጣ ሞተር ልዩነት፤", en = "The difference between petrol and diesel engines is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በሚጠቀሙት የነዳጅ ዓይነት ነው", en = "The type of fuel they use" }
                        , { am = "ነዳጅ ወደስሊንደር የሚገባበት ዘዴ ነው", en = "How fuel enters the cylinder" }
                        , { am = "በአቀጣጠል ዘዴ ነው", en = "The ignition method" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Petrol and diesel engines differ in the fuel they burn, in how the fuel enters the cylinder and in how it is ignited."
          }
        , { topic = Vehicle
          , prompt = { am = "የናፍጣ ሞተር ጥንቃቄ የሚጠይቀው፤", en = "A diesel engine needs extra care because:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ናፍጣ በቀላሉ ከቆሻሻ ጋር ስለሚቀላቀል ነው", en = "Diesel mixes easily with dirt" }
                        , { am = "ናፍጣ ከውሃ ጋር በቀላሉ ስለሚቀላቀል ነው", en = "Diesel mixes easily with water" }
                        , { am = "የናፍጣ የሞተር ክፍል በቀላሉ ሊዝግና በቆሻሻ ሊደፈን ስለሚችል ነው", en = "Diesel engine parts can rust and clog with dirt easily" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "Diesel picks up dirt and water easily, and the engine's fuel parts rust and clog easily, so a diesel engine needs extra care."
          }
        , { topic = Vehicle
          , prompt = { am = "ቤንዚን ከናፍጣ ይልቅ በቀላሉ የመትነን ባህሪ አለው።", en = "Petrol evaporates more easily than diesel." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Petrol evaporates much more readily than diesel."
          }
        , { topic = Vehicle
          , prompt = { am = "የፍሪሲዮን ሸራ ማለቅ ለሞተር ጉልበት መቀነስ ምክንያት ይሆናል።", en = "A worn clutch disc causes a loss of engine power." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A worn clutch disc slips, so some of the engine's power never reaches the wheels."
          }
        , { topic = Vehicle
          , prompt = { am = "በጭስ ማውጫ ሰማያዊ ቀለም ያለው ጭስ መታየት የአየር ማጣሪያ ብልሽት ነው።", en = "Blue smoke from the exhaust means the air filter is faulty." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Blue smoke means oil is burning in the cylinders. A blocked air filter gives black smoke."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር ትንሽ ከሰራ በኃላ በዘይት መጨመሪያ ክዳንን ሲከፈት ጭስ መሰል ነገር የሚታይ ከሆነ ተሽከርካሪ የሞተር እድሳት እንደሚያስፈልገው ሊያሳውቀን ይችላል።", en = "If smoke appears when you open the oil-filler cap after the engine has run a little, the engine may need an overhaul." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Smoke from the oil filler means combustion gas is leaking past worn piston rings, a sign the engine may need an overhaul."
          }
        , { topic = Vehicle
          , prompt = { am = "ትክክለኛ የሞተር ዘይት መጠን የሚባለው ዲፕስቲክ /ሊቤሎ/ ላይ ያለው ማመልከቻ ከፍተኛው /MAX/ ላይ ሲያመለክት ነው።", en = "The correct engine oil level is when the dipstick reads MAX." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The oil level is correct anywhere between the MIN and MAX marks."
          }
        , { topic = Vehicle
          , prompt = { am = "የራድያተር ውጫዊ ክፍል በአቧራና በቆሻሻ መደፈን የተሽከርካሪን ሙቀት ይጨምራል።", en = "A radiator whose outside is clogged with dust and dirt raises the engine temperature." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Dirt on the outside of the radiator blocks the air flow, so the engine runs hotter."
          }
        , { topic = SafeDriving
          , prompt = { am = "ትክክለኛ የጎን መስታወቶችን የማስተካከያ ሂደት፤", en = "The correct way to adjust the side mirrors:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የፊት ጎማን የሚያሳይ መሆን አለበት", en = "They should show the front wheel" }
                        ]
                    , correct = { am = "የኃላ ጎማዎችንና የተሽከርካሪን የመጨረሻ አካል ጠርዝና አካባቢውን የሚያሳይ መሆን አለበት", en = "They should show the rear wheels, the vehicle's rear edge and the area around it" }
                    , after =
                        [ { am = "የፊት ጎማዎችንና የተሽከርካሪውን የፊት መጨረሻ አካል ጠርዝና አካባቢውን የሚያሳይ መሆን አለበት", en = "They should show the front wheels, the vehicle's front edge and the area around it" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Side mirrors should show the rear wheels, the rear edge of the vehicle and the area beside it."
          }
        , { topic = Parking
          , prompt = { am = "ቁልቁለት ቦታ ላይ ተሽከርካሪ ሲቆም የኃላ ማርሽ ማስገባትና ጎማውን ከመንገድ ጠርዝ ላይ ማስደገፍ ይመከራል።", en = "When parking downhill, it is recommended to engage reverse gear and turn the wheel against the curb." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Facing downhill, engage reverse and turn the wheels toward the kerb so the vehicle cannot roll."
          }
        , { topic = Vehicle
          , prompt = { am = "የጣልቃ ነዳጅ ጠቀሜታ የሞተርን ዙር ከጎማ ዙር ጋር ለማጣጣም ነው።", en = "Blipping the throttle between gear shifts matches engine speed to wheel speed." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A touch of throttle between gears brings the engine speed up to match the wheels."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪን ጠዋት ለማሞቅ የነዳጅ መስጫ ፔዳልን በተደጋጋሚ በመጫን ወይም ነዳጅ ሰጠት ሰጠት በማድረግ መሆን ይኖርበታል።", en = "To warm up a vehicle in the morning, you should pump or rev the accelerator repeatedly." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Let the engine warm up at idle. Revving a cold engine wears it."
          }
        , { topic = FireSafety
          , prompt = { am = "የ\"ሐ\" ክፍልን ወይም ሶስተኛ ደረጃ እሳትን ለማጥፋት ፎም መጠቀም ይገባል።", en = "Foam should be used to put out a Class ሐ (third-class) fire." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false. Foam is the extinguisher for fires in liquids."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተርን ለማስነሳት የሞተርን ቁልፍ /start/ የሚለው ላይ ይዞ ከ30 ሰከንድ በላይ አለማቆየት ይመከራል።", en = "When starting the engine, don't hold the key at START for more than 30 seconds." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Holding the starter for long periods overheats it and drains the battery."
          }
        , { topic = Vehicle
          , prompt = { am = "የባትሪ ኔጋቲቭ ተርሚናል በመጠን ከፖዘቲቭ ተርሚናል ያነሰ ነው።", en = "The negative battery terminal is smaller than the positive terminal." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The negative terminal post is slightly smaller than the positive one, which helps prevent connecting them the wrong way round."
          }
        , { topic = SafeDriving
          , prompt = { am = "ከጎን ወይም ከኃላ አደጋ ሊያደርስ የሚችል ተሽከርካሪ በሚያጋጥምበት ወቅት ከአደጋ ለማምለጥ ፍጥነት መጨመር አማራጭ ዘዴ ነው።", en = "When a vehicle threatens you from the side or rear, speeding up to escape is one option." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "When a vehicle threatens you from the side or behind, accelerating out of its path is one way to escape."
          }
        , { topic = Vehicle
          , prompt = { am = "የባትሪ ክዳን ላይ የሚገኙ ቀዳዳዎች በቆሻሻ እንዳይደፈኑ በላስቲክ ሙሉ በሙሉ መሸፈን ያስፈልጋል።", en = "The vent holes in the battery caps should be fully covered with plastic so dirt can't block them." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The vent holes must stay open so gas can escape from the battery."
          }
        , { topic = Vehicle
          , prompt = { am = "የእሳት አቀጣጣይ ክፍሎች ከሞተር ኃይል አጋዥ ክፍሎች ውስጥ ይካተታሉ።", en = "The ignition parts are among the engine's auxiliary systems." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The ignition system is one of the engine's auxiliary systems, along with fuel, cooling and lubrication."
          }
        , { topic = Vehicle
          , prompt = { am = "የባትሪ አመልካች መሣሪያ በእንቅስቃሴ ላይ ከሚያበራበት ምክንያት አንዱ የዲናሞ /አልተርኔተር/ ብልሽት ነው።", en = "One reason the battery warning light comes on while driving is a faulty alternator." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A faulty alternator stops charging the battery, which turns the warning light on."
          }
        , { topic = SafeDriving
          , prompt = { am = "ከኃላ ካለ ተሽከርካሪ ጋር ለመጋጨት ምክንያት ያልሆነው፤", en = "Which is NOT a cause of a collision with the vehicle behind?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የግምባር መብራት ካልሠራ ነው", en = "Headlights not working" }
                    , after =
                        [ { am = "የማቆሚያ/ፓርኪንግ/ መብራት ካልሠራ ነው", en = "Parking lights not working" }
                        , { am = "የፍሬን መብራት ካልሠራ ነው", en = "Brake lights not working" }
                        , { am = "የፍሬቻ መብራት ካልሠራ ነው", en = "Turn signals not working" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The headlights face forward, so they do not affect the driver behind. Parking lights, brake lights and turn signals are what a following driver relies on."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ ኢንጅን ብሬክ/ፍሬና ሞተር/ በመጠቀም ወቅት መደረግ የሌለበት፤", en = "Which should NOT be done when using the engine brake?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ኢንጅን ብሬክ ማርሽ ዜሮ ላይ እያለ መጠቀም", en = "Using it with the gear in neutral" }
                    , after =
                        [ { am = "ኢንጅን ብሬክ እየተጠቀምን ነዳጅ አለመስጠት", en = "Not accelerating while using it" }
                        , { am = "ኢንጅን ብሬክ ይዞ አለመቆየት", en = "Not holding it on continuously" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The engine brake only works with a gear engaged. In neutral the engine is disconnected from the wheels."
          }
        , { topic = Vehicle
          , prompt = { am = "በምስሉ ላይ የሚታየውን ጠቋሚ መሣሪያ የሚያመለክተው፤", en = "What does the warning light shown mean?" }
          , figure = Just "/signs/warning-check-engine.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የፍሬን ችግር መኖሩን ያሳያል", en = "There is a brake problem" }
                        , { am = "የሞተር ዘይት ግፊትን ይጠቁማል", en = "It shows engine oil pressure" }
                        , { am = "የዲፍረንሻል ችግር መኖሩን ያሳያል", en = "There is a differential problem" }
                        ]
                    , correct = { am = "የሞተር ብልሽት መኖሩን ያሳያል", en = "There is an engine fault" }
                    , after =
                        [ { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "The engine outline with the word CHECK is the check-engine light. It means the engine has a fault."
          }
        , { topic = RoadSigns
          , prompt = { am = "ምልክቱ የሚያስተላልፈው መረጃ፤", en = "What does this sign tell you?" }
          , figure = Just "/signs/sharp-bend-left.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ወደቀኝ መታጠፍ የተከለከለ መሆኑን ያስጠነቅቃል", en = "Turning right is prohibited" }
                        , { am = "ወደግራ መታጠፍ የተከለከለ መሆኑን ያስጠነቅቃል", en = "Turning left is prohibited" }
                        ]
                    , correct = { am = "ወደግራ የሚታጠፍ አደገኛ መንገድ መኖሩን ያስጠነቅቃል", en = "Warns of a dangerous bend to the left" }
                    , after =
                        [ { am = "ወደቀኝ የሚታጠፍ አደገኛ መንገድ መኖሩን ያስጠነቅቃል", en = "Warns of a dangerous bend to the right" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The chevrons point left to warn of a dangerous bend in that direction."
          }
        , { topic = Vehicle
          , prompt = { am = "በምስሉ ላይ የሚታየውን ጠቋሚ መሣሪያ የሚያመለክተው፤", en = "What does the warning light shown mean?" }
          , figure = Just "/signs/warning-fog-light.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የአደጋ መብራት መብራቱን ያሳያል", en = "The hazard lights are on" }
                        , { am = "የማቆሚያ መብራት መብራቱን ያሳያል", en = "The parking lights are on" }
                        , { am = "የግምባር መብራት መብራቱን ያሳያል", en = "The headlights are on" }
                        , { am = "የዝናብ መጥረጊያ እየሠራ መሆኑን ያሳያል", en = "The wipers are on" }
                        ]
                    , correct = { am = "የጭጋግ ማቅለጫ እየሠራ መሆኑን ያሳያል", en = "The fog light is on" }
                    , after = []
                    }
          , explanation = "A lamp with beams crossed by a wavy line is the fog light symbol."
          }
        , { topic = Vehicle
          , prompt = { am = "በምስሉ ላይ የሚታየውን ጠቋሚ መሣሪያ የሚያመለክተው፤", en = "What does the warning light shown mean?" }
          , figure = Just "/signs/warning-abs.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "የሞተር ብልሽት መኖሩን ይጠቁማል", en = "There is an engine fault" }
                        , { am = "የነዳጅ መስመር ብልሽት መኖሩን ያሳያል", en = "There is a fuel line fault" }
                        ]
                    , correct = { am = "የፍሬን ችግር መኖሩን ያስጠነቅቃል", en = "Warns of a brake (ABS) problem" }
                    , after =
                        [ { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The letters ABS in a circle warn of a fault in the anti-lock braking system."
          }
        , { topic = Speed
          , prompt = { am = "ከከተማ ክልል ውጭ በአንደኛ ደረጃ መንገድ ለአነስተኛ ተሽከርካሪዎችና ለሞተር ሳይክል የሚፈቀደው ከፍተኛው የፍጥነት ወሰን በሰዓት ------ ኪ.ሜ ነው።", en = "Outside urban areas on first-class roads, the maximum speed limit for small vehicles and motorcycles is ___ km/h." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "60", en = "60" }
                        , { am = "80", en = "80" }
                        , { am = "70", en = "70" }
                        , { am = "120", en = "120" }
                        ]
                    , correct = { am = "100", en = "100" }
                    , after = []
                    }
          , explanation = "The limit for small vehicles and motorcycles on first-class roads outside towns is 100 km/h."
          }
        , { topic = SafeDriving
          , prompt = { am = "በዝናባማ የአየር ሁኔታ በማሽከርከር ወቅት የውስጠኛው መስታወት በጉም ከተሸፈነ መደረግ የሚገባው፤", en = "If the inside of the windshield fogs up while driving in rain, you should:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የዝናብ መጥረጊያ መጠቀም", en = "Use the wipers" }
                        ]
                    , correct = { am = "የውስጥ ማሞቂያ መጠቀም", en = "Use the heater/defroster" }
                    , after =
                        [ { am = "የውስጥ መብራት መጠቀም", en = "Use the interior light" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "Mist on the inside of the windscreen is cleared with the heater or defroster. Wipers only clear the outside."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተሽከርካሪ በኩርባ መንገድ በሚዞርበት ወቅት ከመንገድ ውጭ የሚጎትት ኃይልን ለመቆጣጠር መደረግ የሚገባው፤", en = "To control the force pulling a vehicle off the road on a curve, you should:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "መሪን በጥንቃቄ በመያዝ ፍጥነት መጨመር", en = "Hold the wheel carefully and speed up" }
                        , { am = "ወደኩርባው በማጥበብ መዞር", en = "Take the curve tight" }
                        , { am = "ማርሽን ወደቀላል ማርሽ መቀየር", en = "Shift to a higher gear" }
                        ]
                    , correct = { am = "ሰፋ አድርጎ ኩርባውን መዞር", en = "Take the curve wide" }
                    , after =
                        [ { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "Taking the bend wide makes the curve gentler, which reduces the force pulling the vehicle outward."
          }
        , { topic = Vehicle
          , prompt = { am = "ለናፍጣ ሞተር ቶሎ ለማስነሳት ካንዴሊቲ ከተጠቀምን ለቤንዚን ሞተር ------ እንጠቀማለን።", en = "If a diesel engine uses a glow plug for quick starting, a petrol engine uses ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ስፓርክ ፕለግ/ካንዴላ/", en = "Spark plug" }
                        ]
                    , correct = { am = "ቾክ ቫልቭ", en = "Choke valve" }
                    , after =
                        [ { am = "ቴርሞስታት", en = "Thermostat" }
                        , { am = "ፋን/ቬንትሌተር/", en = "Fan" }
                        , { am = "ካርቡሬተር", en = "Carburetor" }
                        ]
                    }
          , explanation = "A petrol engine uses the choke valve to enrich the mixture for a cold start."
          }
        , { topic = Vehicle
          , prompt = { am = "ከመጠን በላይ ሙቀቱ የጨመረን ተሽከርካሪ ለማቆም፤", en = "To shut down an overheated vehicle:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "አቁሞ ለተወሰነ ደቂቃ በሚኒሞ በማሠራት ቁልፍን ማጥፋት", en = "Stop, let it idle for a few minutes, then switch off" }
                    , after =
                        [ { am = "አቁሞ ወዲያው ቁልፍን ማጥፋት", en = "Stop and switch off immediately" }
                        , { am = "ሞተር ሳይጠፋ ውሃ በመጨመር ቁልፍን ማጥፋት", en = "Add water with the engine running, then switch off" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Let an overheated engine idle for a few minutes so the coolant keeps circulating, then switch off."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ድምፅ መቆራረጥና በቂ ኃይል አለማመንጨት ዋንኛ ምክንያት፤", en = "The main cause of an engine sputtering and not producing enough power is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የነዳጅ ማጣሪያ መቆሸሽ ነው", en = "A dirty fuel filter" }
                    , after =
                        [ { am = "በነዳጅ መስመር አየር መግባት ነው", en = "Air in the fuel line" }
                        , { am = "በነዳጅ ታንከር ውስጥ በቂ ነዳጅ አለመኖር ነው", en = "Not enough fuel in the tank" }
                        , { am = "የባትሪ መድከም ነው", en = "A weak battery" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "A dirty fuel filter starves the engine of fuel, so it sputters and loses power."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር እየሠራ የባትሪ አመልካች መሣሪያ ከጠፋ፤ አልተርኔተር ባትሪን ቻርጅ እያደረገ አይደለም ማለት ነው።", en = "If the battery warning light goes off while the engine is running, the alternator is not charging the battery." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The light going out means the alternator is charging normally."
          }
        ]
    }
