module Quizzes.Quiz4 exposing (quiz)

import Quiz exposing (Answer(..), Quiz, Topic(..))


quiz : Quiz
quiz =
    { id = "quiz-4"
    , title = { am = "ፈተና 4", en = "Quiz 4" }
    , minutes = 153
    , first =
        { topic = Vehicle
        , prompt = { am = "የባትሪ ኔጋቲቭ ተርሚናል ገመድ ከተሽከርካሪ አካል ጋር ይገናኛል።", en = "The battery's negative terminal cable is connected to the vehicle body." }
        , figure = Nothing
        , answer = TrueFalse True
        , explanation = "The negative cable is bolted to the vehicle body, which acts as the return path for the electrical circuits."
        }
    , rest =
        [ { topic = Vehicle
          , prompt = { am = "ከባድ ማርሽ የሚባለው፤", en = "A 'heavy' (low) gear is when:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ማርሽ በአግባቡ ሳይገባ ነው", en = "The gear is not engaged properly" }
                        , { am = "ትልቁ ጥርስ ትንሹን ሲነዳ ነው", en = "The large gear drives the small one" }
                        , { am = "ሦስት ጥርሶች ሲነዳዱ ነው", en = "Three gears drive each other" }
                        ]
                    , correct = { am = "ትንሹ ጥርስ ትልቁን ሲነዳ ነው", en = "The small gear drives the large one" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "In a low gear a small gear drives a larger one, which gives more pulling force and less speed."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ማንኛውም አሽከርካሪ የማሽከርከር ስህተት ቢሰራም አደጋ ባለማድረሱ ብቻ ትክክለኛና በቂ ነው ብሎ ማመን አለበት።", en = "A driver who makes a driving mistake should believe their driving is correct and adequate just because no accident happened." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A mistake that happened not to cause an accident is still a mistake. Believing otherwise lets errors build up."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የአልኮል መጠጥ የጠጣ አሽከርካሪ ማድረግ የማይገባው፤", en = "What a driver who has drunk alcohol should NOT do:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የጠጣበት ቦታ ማደር", en = "Stay the night where they drank" }
                        ]
                    , correct = { am = "በዝግታ ማሽከርከር", en = "Drive slowly" }
                    , after =
                        [ { am = "በህዝብ ትራንስፖርት መጠቀም", en = "Use public transport" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Driving slowly is still driving after drinking. Staying where you are or taking public transport are the right choices."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ የትዕይንት መቆጣጠሪያ መሣሪያ ውስጥ የማይካተተው፤", en = "Which is NOT one of a vehicle's visibility devices?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የጎንና የኋላ መስታወት", en = "Side and rear-view mirrors" }
                        , { am = "የግምባር መብራት", en = "Headlights" }
                        , { am = "የግምባር መስታወት", en = "Windshield" }
                        ]
                    , correct = { am = "የፍሬን መብራት", en = "Brake light" }
                    , after =
                        [ { am = "የውስጥ መብራት", en = "Interior light" }
                        ]
                    }
          , explanation = "The brake light sends a signal to others. Mirrors, headlights, the windscreen and the interior light all help the driver see."
          }
        , { topic = RoadSigns
          , prompt = { am = "የሚያንሸራትት መንገድ መኖሩን የሚያሳውቅ የመንገድ ዳር ምልክት ከ------ የመንገድ ዳር ምልክቶች ውስጥ ይመደባል።", en = "A road sign warning of a slippery road belongs to the ___ road signs." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቅድሚያ ከሚያሰጡ", en = "Priority" }
                        , { am = "ከሚከለክሉ", en = "Prohibitory" }
                        , { am = "መረጃ ሰጪ", en = "Informative" }
                        , { am = "አቅጣጫ አመልካች", en = "Direction" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "A slippery-road sign is a warning sign, and warning signs are not among the options."
          }
        , { topic = Vehicle
          , prompt = { am = "ከተገለጹት ውስጥ በናፍጣ ሞተር ላይ ብቻ የሚገኝ ክፍል፤", en = "Which of these parts is found only on a diesel engine?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኢግኒሽን ኮይል /ቦቢና/", en = "Ignition coil" }
                        , { am = "ስፓርክ ፕለግ /ካንዴላ/", en = "Spark plug" }
                        , { am = "ካርቡሬተር", en = "Carburetor" }
                        , { am = "ዲስትሪቢውተር /አቫንስ/", en = "Distributor" }
                        ]
                    , correct = { am = "ግሎ ፕለግ /ካንዴሊቲ/", en = "Glow plug" }
                    , after = []
                    }
          , explanation = "Glow plugs are only found on diesel engines. The ignition coil, spark plug, carburettor and distributor belong to petrol engines."
          }
        , { topic = TrafficLights
          , prompt = { am = "------ ቆመህ ግራና ቀኝ በማየት እለፍ የሚል ትእዛዝን ያስተላልፋል።", en = "___ means: stop, look left and right, then proceed." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቀይ መብራት ሲበራ", en = "A steady red light" }
                        , { am = "ቢጫ መብራት ብልጭ ጥፍት", en = "A flashing yellow light" }
                        ]
                    , correct = { am = "ቀይ መብራት ብልጭ ጥፍት ሲል", en = "A flashing red light" }
                    , after =
                        [ { am = "አረንጓዴ መብራት ሲበራ", en = "A green light" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "A flashing red light means stop, look left and right, and go only when it is clear."
          }
        , { topic = Vehicle
          , prompt = { am = "የግራ ጎማ የንፋስ መጠን ከቀኙ ካነሰ መሪን ወደግራ ይጎትታል።", en = "If the left tire's pressure is lower than the right's, the steering pulls to the left." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A softer tyre drags more, so the steering pulls toward the side with the lower pressure."
          }
        , { topic = Vehicle
          , prompt = { am = "የፍሬና ሞተር ጥቅም፤", en = "The use of the engine brake is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ተሽከርካሪን ለረጅም ጊዜ ለማቆም ነው", en = "To park the vehicle for a long time" }
                        , { am = "በዳገት ፍጥነትን ለመቀነስ ነው", en = "To reduce speed uphill" }
                        , { am = "በሜዳማ መንገድ ፍጥነትን ለመቀነስ ነው", en = "To reduce speed on flat roads" }
                        , { am = "በቁልቁለት ፍጥነትን ለመጨመር ነው", en = "To increase speed downhill" }
                        ]
                    , correct = { am = "በቁልቁለት ፍጥነትን ለመቀነስ ነው", en = "To reduce speed downhill" }
                    , after = []
                    }
          , explanation = "The engine brake is used to hold the speed down on a descent without wearing the wheel brakes."
          }
        , { topic = Vehicle
          , prompt = { am = "ዘይት በሞተር ውስጥ የሚሠራጨው፤", en = "Oil is distributed in the engine by:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በክራንክ ሻፍት/ኮሎ/ ርጭት ነው", en = "Crankshaft splash" }
                        , { am = "በዘይት ፓምፕ አማካኝነት ነው", en = "The oil pump" }
                        , { am = "በካምሻፍት ርጭት ነው", en = "Camshaft splash" }
                        , { am = "በፋን ርጭት ነው", en = "Fan splash" }
                        ]
                    , correct = { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                    , after = []
                    }
          , explanation = "Oil is pumped under pressure by the oil pump and also thrown around by the spinning crankshaft."
          }
        , { topic = Vehicle
          , prompt = { am = "የመሪ ወደአንድ አቅጣጫ መጎተት ምክንያት፤", en = "The cause of the steering pulling to one side is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሾክ አብዞርበር/አሞርዛቶር/ ብልሽት ነው", en = "A faulty shock absorber" }
                        , { am = "የጎማዎች አስተላለቅ ተመሳሳይ አለመሆን ነው", en = "Uneven tire wear" }
                        , { am = "የጎማ የንፋስ መጠን ተመሳሳይ አለመሆን ነው", en = "Unequal tire pressure" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "A faulty shock absorber, uneven tyre wear and unequal tyre pressures can each make the steering pull to one side."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ዘይት ወደተለያዩ ክፍሎች ተሠራጭቶ ወደዘይት ማጠራቀሚያ የሚመለሰው፤", en = "After circulating, engine oil returns to the oil pan by:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በኮሎ ርጭት ነው", en = "Crankshaft splash" }
                        , { am = "በዘይት ፓምፕ ነው", en = "The oil pump" }
                        , { am = "በውሃ ፓምፕ ነው", en = "The water pump" }
                        ]
                    , correct = { am = "በመሬት ስበት ነው", en = "Gravity" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "After lubricating the parts, the oil drains back down into the oil pan by gravity."
          }
        , { topic = RoadSigns
          , prompt = { am = "ቀስቱ በሚያመለክተው ወደቀኝ ብቻ እለፍ የሚል የመንገድ ዳር ምልክት ከ------ የመንገድ ዳር ምልክት ውስጥ ይካተታል።", en = "A sign saying 'turn right only, as the arrow shows' belongs to the ___ signs." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አቅጣጫ ጠቋሚ", en = "Direction" }
                        ]
                    , correct = { am = "የሚያስገድዱ", en = "Mandatory" }
                    , after =
                        [ { am = "የሚከለክሉ", en = "Prohibitory" }
                        , { am = "ቅድሚያ የሚያሰጡ", en = "Priority" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "A sign that orders you to go in the direction of the arrow is a mandatory sign."
          }
        , { topic = Vehicle
          , prompt = { am = "ጎማን የማዟዟር ጥቅም፤", en = "The benefit of rotating tires is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሁሉም ጎማዎች ተመሳሳይ አስተላለቅ እንዲኖራቸው ነው", en = "So all tires wear evenly" }
                        , { am = "የጎማን ዕድሜ ለማራዘም ነው", en = "To extend tire life" }
                        , { am = "የሞተርን ዕድሜ ለማራዘም ነው", en = "To extend engine life" }
                        ]
                    , correct = { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Rotating the tyres evens out their wear, which makes them last longer. It does nothing for the engine."
          }
        , { topic = TrafficRules
          , prompt = { am = "የባቡር ሀዲድ ባለበት ወደቀኝ መጠምዘዝ የማይቻለው በ------ ሜትር ክልል ውስጥ ነው።", en = "Near a railway line, turning right is not allowed within ___ meters." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "30", en = "30" }
                    , after =
                        [ { am = "20", en = "20" }
                        , { am = "50", en = "50" }
                        , { am = "40", en = "40" }
                        , { am = "100", en = "100" }
                        ]
                    }
          , explanation = "Turning right is not allowed within 30 m of a railway line."
          }
        , { topic = Vehicle
          , prompt = { am = "ስታርተር ሞተር /ሞተሪኖ/ እየሠራ ሞተር ከማይነሳበት ምክንያት ውስጥ፤ የነዳጅ መስመር ችግር አንዱ ነው።", en = "A fuel line problem is one reason the engine won't start even though the starter motor turns." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "If the starter turns but the engine does not fire, one possible cause is that fuel is not reaching it."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተሽከርካሪ ዳገት ላይ ቆሞ ሳይንሸራተት ለማስነሳት መደረግ ያለበት፤", en = "To pull away on a hill without rolling back, you should:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የእጅ ፍሬን በመያዝ በመጠኑ የፍሬን ፔዳል መልቀቅ", en = "Hold the handbrake and slowly release the brake pedal" }
                        , { am = "የፍሬንና የፍሪሲዮን ፔዳልን ሙሉ ለሙሉ መያዝ", en = "Fully press the brake and clutch pedals" }
                        ]
                    , correct = { am = "ግማሽ የነዳጅና ግማሽ የፍሪሲዮን ፔዳል መጠቀም", en = "Use half throttle and half clutch" }
                    , after =
                        [ { am = "የእጅ ፍሬን በመጠኑ መልቀቅ", en = "Gradually release the handbrake" }
                        , { am = "የፍሪሲዮን ፔዳልን ሙሉ ለሙሉ መያዝ", en = "Fully press the clutch pedal" }
                        ]
                    }
          , explanation = "Half throttle with the clutch at the biting point holds the vehicle and moves it forward without rolling back."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ኃይል አጋዥ ክፍሎች ውስጥ የሚካተተው፤", en = "Which are among the engine's auxiliary systems?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የኃይል አስተላላፊ ክፍሎች ናቸው", en = "Power transmission parts" }
                        , { am = "የኤሌክትሪክ ክፍሎች ናቸው", en = "Electrical parts" }
                        ]
                    , correct = { am = "የማለስለሻ ክፍሎች ናቸው", en = "Lubrication parts" }
                    , after =
                        [ { am = "ተሸካሚ ክፍሎች ናቸው", en = "Load-bearing parts" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Lubrication is one of the engine's auxiliary systems."
          }
        , { topic = Vehicle
          , prompt = { am = "ለሞተር መደረግ ከሚገባው ጥንቃቄ ውስጥ የማይካተተው፤", en = "Which is NOT part of engine care?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የባትሪን ውሃና አሲድ መፈተሽ ነው", en = "Checking battery water and acid" }
                    , after =
                        [ { am = "የራድያተርን ውሃ መፈተሽ ነው", en = "Checking radiator water" }
                        , { am = "የሞተርን ዘይት መፈተሽ ነው", en = "Checking engine oil" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The answer key treats checking the battery as care of the electrical system, not of the engine. Checking the radiator water and the engine oil is engine care."
          }
        , { topic = Vehicle
          , prompt = { am = "ጠዋት ተሽከርካሪን ለማስነሳት በተደጋጋሚ ነዳጅን እየሰጡ ማሞቅ የማይመከረው፤", en = "Revving repeatedly to warm up the engine in the morning is not recommended because:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የሞተር ክፍሎች ዘይት ሳይደርሳቸው በደረቅ ሰበቃ እንዳይጎዱ ነው", en = "Engine parts can be damaged by dry friction before oil reaches them" }
                    , after =
                        [ { am = "ውሃ ወደተለያዩ ክፍሎች ስለማይሰራጭ ነው", en = "Water doesn't circulate to the parts" }
                        , { am = "የኤሌክትሪክ ክፍሎች እንዳይቃጠሉ ለመከላከል ነው", en = "To keep electrical parts from burning" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Right after a cold start the oil has not yet reached all the moving parts, so revving wears them through dry friction."
          }
        , { topic = Safety
          , prompt = { am = "ከሚከተሉት አማራጮች ትክክል የሆነው፤", en = "Which of the following is correct?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሞተር ላይ የሚነሳ እሳት የ«መ» ክፍል እሳት ይባላል", en = "An engine fire is called a class 'መ' fire" }
                        , { am = "ሞተር ላይ የሚነሳን እሳት በማፈን ማጥፋት ይቻላል", en = "An engine fire can be put out by smothering" }
                        , { am = "ሞተር ላይ የሚነሳን እሳት ለማጥፋት ድራይ ፓውደር ያገለግላል", en = "Dry powder is used to put out an engine fire" }
                        , { am = "ሞተር ላይ የሚነሳን እሳት ለማጥፋት በደረቅ አሸዋና አፈር መጠቀም ይመከራል", en = "Dry sand and soil are recommended for an engine fire" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after = []
                    }
          , explanation = "All four statements are correct. An engine fire is a class መ fire and can be smothered or put out with dry powder or with dry sand and soil."
          }
        , { topic = Vehicle
          , prompt = { am = "በዋነኝነት ለአሽከርካሪ የሚያገለግል የማንዋል ዓይነት ------ ይባላል።", en = "The type of manual mainly meant for the driver is called the ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሰርቪስ ማንዋል", en = "Service manual" }
                        ]
                    , correct = { am = "ኦፕሬቲንግ ማንዋል", en = "Operating manual" }
                    , after =
                        [ { am = "ሜንቴናንስ ማንዋል", en = "Maintenance manual" }
                        , { am = "እስፔስፍኬሽን ማንዋል", en = "Specification manual" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The operating manual is the one written mainly for the driver."
          }
        , { topic = Vehicle
          , prompt = { am = "------ የሙቀትን ኃይል ወደመካኒካል ኃይል የሚቀይር ክፍል ነው።", en = "___ is the part that converts heat energy into mechanical energy." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ኢንጅን", en = "Engine" }
                    , after =
                        [ { am = "አልተርኔተር", en = "Alternator" }
                        , { am = "ባትሪ", en = "Battery" }
                        , { am = "ስታርተር ሞተር", en = "Starter motor" }
                        , { am = "ቁልፍ", en = "Ignition key" }
                        ]
                    }
          , explanation = "The engine burns fuel to make heat and turns that heat into mechanical energy."
          }
        , { topic = Vehicle
          , prompt = { am = "ፊውዝ ወደ ኤሌክትሪክ እቃዎች የሚሄደውን የኤሌክትሪክ ኃይል መብዛትና ማነስ ይቆጣጠራል።", en = "A fuse regulates both the increase and decrease of current going to electrical devices." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A fuse only protects against too much current by melting. It does nothing about a current that is too low."
          }
        , { topic = RoadSigns
          , prompt = { am = "በሰዓት የተሰጠን ከፍተኛ የፍጥነት ወሰን የሚያሳይ ምልክት ከ------ የዓለም አቀፍ የመንገድ ዳር ምልክቶች ውስጥ ይመደባል።", en = "A sign showing the maximum speed limit per hour belongs to the ___ international road signs." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሚያስጠነቅቁ", en = "Warning" }
                        ]
                    , correct = { am = "የሚከለክሉ", en = "Prohibitory" }
                    , after =
                        [ { am = "የሚያስገድዱ", en = "Mandatory" }
                        , { am = "ቅድሚያ የሚያሰጡ", en = "Priority" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "A maximum speed limit sign forbids going faster, so it is a prohibitory sign."
          }
        , { topic = Vehicle
          , prompt = { am = "ባትሪን ለመፍታትና ለማሰር ትክክለኛ ቅደም ተከተል መጠበቅ ያስፈለገበት ምክንያት፤", en = "Why follow the correct order when disconnecting and connecting a battery?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የባትሪ ውሃና አሲድ እንዳያልቅ ለመከላከል ነው", en = "To keep battery water and acid from running out" }
                        , { am = "የባትሪ ኃይል እንዳይደክም ለመከላከል ነው", en = "To keep the battery from weakening" }
                        , { am = "የተለያዩ የኤሌክትሪክ ክፍሎችን ከመቃጠል ለማዳን ነው", en = "To protect electrical parts from burning out" }
                        , { am = "የሞተር ጉልበት እንዳይቀንስ ለመከላከል ነው", en = "To keep engine power from dropping" }
                        ]
                    , correct = { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                    , after = []
                    }
          , explanation = "The right order prevents short circuits that would drain the battery or burn out electrical parts."
          }
        , { topic = Vehicle
          , prompt = { am = "የፍሪሲዮን ፔዳል ተደግፎ ማሽከርከር ከሚያስከትለው ችግር ውስጥ የሚካተተው፤", en = "A problem caused by driving with your foot resting on the clutch pedal:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የፍሪሲዮን ሸራ መበላት ነው", en = "Clutch plate wear" }
                        , { am = "የሞተር ጉልበት መቀነስ ነው", en = "Loss of engine power" }
                        , { am = "የሞተር መሞቅ ነው", en = "Engine overheating" }
                        ]
                    , correct = { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Resting a foot on the clutch pedal makes the clutch slip, which wears the plate and wastes engine power."
          }
        , { topic = Vehicle
          , prompt = { am = "የአየር ማጣሪያ/ዳብራተር/ ተግባር ያልሆነው፤", en = "Which is NOT a function of the air filter?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ተመላሽ እሳትን ማፈን ነው", en = "Suppressing backfire" }
                        , { am = "ድምፅ መቀነስ ነው", en = "Reducing noise" }
                        ]
                    , correct = { am = "ሙቀትን መቀነስ ነው", en = "Reducing heat" }
                    , after =
                        [ { am = "አየርን ማጣራት ነው", en = "Filtering air" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "The air filter cleans the air, quietens the intake and suppresses backfire. It does not reduce heat."
          }
        , { topic = Vehicle
          , prompt = { am = "የራድያተር ማፍላት ዋንኛ መንስኤ የሆነው፤", en = "The main cause of a radiator boiling over is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የራድያተር መቀደድ ነው", en = "A punctured radiator" }
                        , { am = "የራድያተር ሆዝ/ማኒኮቶ/ መቀደድ ነው", en = "A torn radiator hose" }
                        ]
                    , correct = { am = "የራድያተር ክዳን ብልሽት ነው", en = "A faulty radiator cap" }
                    , after =
                        [ { am = "የቴርሞስታት ከፍቶ መቅረት ነው", en = "A thermostat stuck open" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The answer key picks a faulty radiator cap as the main cause, because the cooling system cannot hold pressure without it."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የመንገድ ላይ ትህትናን የማይገልፀው የቱ ነው?", en = "Which does NOT show courtesy on the road?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሥነ-ምግባራዊነት", en = "Ethical conduct" }
                        , { am = "ለሌሎች መራራት", en = "Compassion for others" }
                        ]
                    , correct = { am = "ራስ ወዳድነት", en = "Selfishness" }
                    , after =
                        [ { am = "ለህግ ተገዢ መሆን", en = "Obeying the law" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Selfishness is the opposite of courtesy. Ethical conduct, compassion and obeying the law all express it."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ማስተዋል ማለት ምን ማለት ነዉ?", en = "What does perception (ማስተዋል) mean?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በተመረጡ መረጃዎች ላይ መተኮር", en = "Focusing on selected information" }
                        ]
                    , correct = { am = "የተመረጡን መረጃዎች መተንተን", en = "Analyzing selected information" }
                    , after =
                        [ { am = "መረጃን መቀበል", en = "Receiving information" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "In this book's terms, ማስተዋል means analysing the information that has been selected."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የሞተር ዘይት ሳያረጋግጡ ሞተር ማስነሳት የዝግጁነት ችግር አይደለም።", en = "Starting the engine without checking the oil is not a lack of preparedness." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Checking the oil before starting is part of being prepared, so skipping it is a lack of preparedness."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የአደጋ መነሻ ምክንያት የሚሆነው የቱ ነዉ?", en = "What can cause an accident?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የኃላፊነት ጉድለት", en = "Lack of responsibility" }
                        , { am = "የብቃት ጉድለት", en = "Lack of competence" }
                        , { am = "የደህንነት ጉድለት", en = "Lack of safety" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "A lack of responsibility, of competence or of safety can each lead to an accident."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር በማቀዝቀዣ ዘዴው በሜካኒካልና በኤሌክትሪክ ተብሎ በሁለት ይከፈላል።", en = "By cooling method, engines are divided into two types: mechanical and electrical." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "By cooling method engines are air-cooled or liquid-cooled, not mechanical and electrical."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ለሌሎች ያለማሰብ የኃላፊነት እንጂ የብቃት ችግር አይደለም።", en = "Not considering others is a problem of responsibility, not of competence." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Not thinking of others is a failure of responsibility. Competence is about knowledge and skill."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የትራፊክ መብራት መጣስ የትዕግስት ማጣት ምልክት ነው።", en = "Running a traffic light is a sign of impatience." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Running a traffic light is one of the signs of an impatient driver."
          }
        , { topic = DriverBehavior
          , prompt = { am = "------ የጋራ መጠቀሚያ መሠረተ ልማት እንጂ ለአሽከርካሪዎች ብቻ የተተወ አይደለም።", en = "The ___ is shared public infrastructure, not reserved for drivers only." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "መንገድ", en = "Road" }
                    , after =
                        [ { am = "መኪና", en = "Car" }
                        , { am = "አየር", en = "Air" }
                        , { am = "ሀ እና ለ", en = "ሀ and ለ" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The road is shared by everyone, including pedestrians, so it is not for drivers alone."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ቀልጣፋነት የማሽከርከር ------ መለኪያ ነው።", en = "Efficiency is a measure of driving ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ብቃት", en = "Competence" }
                    , after =
                        [ { am = "ኃላፊነት", en = "Responsibility" }
                        , { am = "ባህሪ", en = "Behavior" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "ሀ እና ለ", en = "ሀ and ለ" }
                        ]
                    }
          , explanation = "Efficiency is one of the measures of how competent a driver is."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የማሽከርከር ተግባር የአካል እንቅስቃሴንና አእምሮን በቅንጅት ያጣመረ ተግባር ነው።", en = "Driving is a task that coordinates physical movement and the mind." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Driving needs the body and the mind to work together."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ከትክክለኛ የማሽከርከር ባህሪ ውስጥ የሚመደበው የቱ ነው?", en = "Which is part of proper driving behavior?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍርሀት", en = "Fear" }
                        , { am = "ጭንቀት", en = "Anxiety" }
                        ]
                    , correct = { am = "በራስ መተማመን", en = "Self-confidence" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Self-confidence is part of good driving behaviour. Fear and anxiety get in its way."
          }
        , { topic = DriverBehavior
          , prompt = { am = "በትምህርትና ስልጠና የተገኘ ክህሎት የሆነው የቱ ነው?", en = "Which is a skill gained through education and training?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ሙያ", en = "Profession" }
                    , after =
                        [ { am = "የሙያ ስነ-ምግባር", en = "Professional ethics" }
                        , { am = "ስነ-ምግባር", en = "Ethics" }
                        , { am = "ስነ-ባህሪ", en = "Behavior" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "A profession is a skill gained through education and training."
          }
        , { topic = DriverBehavior
          , prompt = { am = "በፍርሃትና በጭንቀት ውስጥ ሆኖ የማሽከርከር ሂደት ------ ይባላል።", en = "Driving while afraid and anxious is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሞገደኛ አነዳድ", en = "Aggressive driving" }
                        , { am = "ክልፍልፍ አነዳድ", en = "Flustered driving" }
                        , { am = "ስነ-ምግባር ያለው አሽከርካሪ ነው", en = "An ethical driver" }
                        ]
                    , correct = { am = "«ሀ» እና «ለ»", en = "ሀ and ለ" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "According to the answer key, driving while afraid and anxious counts as both aggressive and flustered driving."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አብሮ የመስራትና አብሮ የመኖር እሴት የሆነው የቱ ነው?", en = "Which is the value of working and living together?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሙያ", en = "Profession" }
                        , { am = "የሙያ ስነ-ምግባር", en = "Professional ethics" }
                        ]
                    , correct = { am = "ስነ-ምግባር", en = "Ethics" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        , { am = "መልስ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "Ethics is the set of values that lets people work and live together."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የሰው ልጅ ባህሪ የ------ ውጤት ነው።", en = "Human behavior is the result of ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ውርስ", en = "Heredity" }
                        , { am = "አካባቢ", en = "Environment" }
                        ]
                    , correct = { am = "«ሀ» እና «ለ»", en = "ሀ and ለ" }
                    , after =
                        [ { am = "ስነ-ባህሪ", en = "Behavior" }
                        , { am = "መልስ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "Behaviour is shaped by both heredity and environment."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አሽከርካሪዎች አሉታዊ ባህሪያቸውን ራሳቸው ደረጃ በደረጃ መለወጥ ይችላሉ።", en = "Drivers can gradually change their own negative behavior." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Negative behaviour can be changed step by step with effort and practice."
          }
        , { topic = TrafficRules
          , prompt = { am = "ተሳፋሪዎች በህዝብ ማመላለሻ ተሽከርካሪ በጉዞ ላይ እስከ 25 ኪሎ ግራም ድረስ እቃ በነጻ ተሽከርካሪ ላይ ማስጫን ይችላሉ።", en = "Passengers on public transport may load up to 25 kg of luggage free of charge." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Passengers on public transport may carry up to 25 kg of luggage without paying extra."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ደንብ ማክበርና ልበ-ሙሉነት የብቃት መገለጫ ባህሪያት ናቸው።", en = "Following rules and confidence are traits that show competence." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Respecting the rules and driving with confidence are signs of a competent driver."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ፍጥነትን መቀነስና በማይታመን ሁኔታ መጨመር የአልኮል መጠጥ ጠጥቶ የሚያሽከረክር አሽከርካሪ ባህሪ ነው።", en = "Slowing down and speeding up unpredictably is typical of a drunk driver." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A driver who has been drinking cannot hold a steady speed, so the vehicle slows and speeds up unpredictably."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አሽከርካሪዎች የእንቅልፍ ስሜት በተሰማቸው ጊዜ የሚያነቃቃ ነገር ወስደው ማሽከርከር አለባቸው።", en = "When drivers feel sleepy, they should take a stimulant and keep driving." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A sleepy driver must stop and rest. A stimulant hides the tiredness without removing it."
          }
        , { topic = SafeDriving
          , prompt = { am = "አሽከርካሪዎች ባለማወቅ፣ በቸልተኝነትና ስነ-ስርዓት በጎደላቸው አሽከርካሪዎችና እግረኞች ሊደርሱ ከሚችሉ አደጋዎች አስቀድመው የመጠንቀቅ ኃላፊነት አለባቸው።", en = "Drivers are responsible for anticipating accidents caused by ignorant, careless or undisciplined drivers and pedestrians." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A driver has to expect mistakes from other road users and be ready for them."
          }
        , { topic = DriverBehavior
          , prompt = { am = "በስልጠና ባህሪን ማሻሻል ይቻላል።", en = "Behavior can be improved through training." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Training is one of the ways behaviour is improved."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የትራፊክ ምልክቶችን ማክበር የሙያ ስነ-ምግባር ጉድለት ነው።", en = "Obeying traffic signs is a lack of professional ethics." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Obeying traffic signs is part of professional ethics, not a lack of it."
          }
        , { topic = Safety
          , prompt = { am = "እቃዎች በተሽከርካሪ ላይ ሲጫኑ በተገቢው ቦታ ላይ መሆን አለበት።", en = "Loads on a vehicle must be placed in the proper position." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A load must be placed and secured properly so it cannot shift, fall or upset the vehicle's balance."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ማሽከርከር የአዕምሮና የአካል ብቃት እንቅስቃሴ ውጤት ነው።", en = "Driving is the product of mental and physical ability." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Driving draws on both mental and physical ability."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ተሽከርካሪን ከኋላ በጣም ተጠግቶ ማሽከርከር የምን መገለጫ ነዉ?", en = "Tailgating another vehicle is a sign of:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የእልህኝነት", en = "Spitefulness" }
                        ]
                    , correct = { am = "የትዕግስት ማጣት", en = "Impatience" }
                    , after =
                        [ { am = "የተፅዕኖ ፈጣሪነት", en = "Pressuring others" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልስ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "Following too closely is a sign of impatience."
          }
        , { topic = Safety
          , prompt = { am = "የትራፊክ አደጋ ውጤት የሆነው የቱ ነው?", en = "Which is a consequence of a traffic accident?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አካለ ጉዳት", en = "Disability" }
                        , { am = "የአእምሮ መቃወስ", en = "Mental illness" }
                        , { am = "የሞት አደጋ", en = "Death" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልስ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "Disability, mental illness and death are all consequences of traffic accidents."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አልኮል በማንኛውም ሰው ላይ ተጽእኖ የማሳደር አቅም አለው።", en = "Alcohol can affect anyone." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Alcohol affects every person who drinks it."
          }
        , { topic = TrafficRules
          , prompt = { am = "የተሽከርካሪው ባለንብረት ተሳፋሪዎች ሲሳፈሩና ሲወርዱ የመቆጣጠር ሀላፊነት አለበት።", en = "The vehicle owner is responsible for supervising passengers getting on and off." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The answer key marks this true."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አሽከርካሪው አካባቢውን ለመገንዘብ እስከ 90% ድረስ የሚጠቀመው በማየትና በመስማት ነው።", en = "A driver uses sight and hearing for up to 90% of understanding their surroundings." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false. The figure of 80 to 90 percent is given for sight alone."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ዝግጁነት የምን ውጤት ነው?", en = "Readiness is the result of:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የብስለት", en = "Maturity" }
                        , { am = "የችሎታ", en = "Ability" }
                        , { am = "የመነሳሳት", en = "Motivation" }
                        , { am = "የትምህርት", en = "Education" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after = []
                    }
          , explanation = "Readiness is the combined result of maturity, ability, motivation and education."
          }
        , { topic = DriverBehavior
          , prompt = { am = "------ አሽከርካሪው በተሽከርካሪው ላይም ሆነ በአካባቢው ያለውን ለውጥ የሚያውቅበት መንገድ ነው።", en = "___ is how a driver notices changes in the vehicle or the surroundings." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "መገንዘብ", en = "Understanding" }
                    , after =
                        [ { am = "ትኩረት", en = "Attention" }
                        , { am = "ማስተዋል", en = "Perception" }
                        , { am = "ዝግጁነት", en = "Readiness" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "In this book's terms, መገንዘብ is noticing a change in the vehicle or the surroundings through the senses."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አሽከርካሪው በተሽከርካሪው ሞተር አካባቢ የተከሰተን ለየት ያለ ድምጽ መነሻ ምክንያት የሚገምትበት ሂደት የሆነው የቱ ነው?", en = "The process by which a driver works out the cause of an unusual engine noise is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "መገንዘብ", en = "Understanding" }
                        ]
                    , correct = { am = "ማስተዋል", en = "Perception" }
                    , after =
                        [ { am = "ትኩረት", en = "Attention" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልስ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "Working out the cause of an unusual noise means analysing the information, which this book calls ማስተዋል."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አሽከርካሪው በተሽከርካሪ ሞተር አካባቢ ለየት ያለ ድምጽ መኖሩን የሚያውቅበት ዘዴ የሆነው የቱ ነው?", en = "The way a driver notices that there is an unusual engine noise is:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "መገንዘብ", en = "Understanding" }
                        , { am = "ማስተዋል", en = "Perception" }
                        ]
                    , correct = { am = "ትኩረት", en = "Attention" }
                    , after =
                        [ { am = "መነሳሳት", en = "Motivation" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Picking out the unusual noise from everything else is the work of attention."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ማስተዋል መረጃን በስሜት ህዋስ የመቀበልና ወደ አእምሮአችን የመላክ ሂደት ነው።", en = "Perception is the process of receiving information through the senses and sending it to the brain." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Receiving information through the senses and sending it to the brain is what this book calls መገንዘብ, not ማስተዋል."
          }
        , { topic = DriverBehavior
          , prompt = { am = "በጣም ከፍተኛ በሆነ ፍጥነት ማሽከርከር፣ ግዴለሽነትን ያሳያል።", en = "Driving at very high speed shows carelessness." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Driving at very high speed is a sign of carelessness."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የትራፊክ መብራትን አለማክበር ትዕግስት ማጣትን ያሳያል።", en = "Ignoring traffic lights shows impatience." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Ignoring traffic lights is one of the signs of an impatient driver."
          }
        , { topic = DriverBehavior
          , prompt = { am = "በከባድ ህመም እየተሰቃዩ ማሽከርከር ሞገደኝነትን አያስከትልም።", en = "Driving while in severe pain does not lead to aggressive driving." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Severe pain puts a driver under strain and can lead to aggressive driving."
          }
        , { topic = SafeDriving
          , prompt = { am = "በመታጠፊያ መንገዶች ላይ ምልክት ማሳየት ብቻ ከአደጋ ይጠብቃል።", en = "Signaling alone at turns protects you from accidents." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A signal only tells others what you intend. You still have to check that the way is clear."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ሰላማዊ የሆነ የትራንስፖርት አሰጣጥ እንዲኖር ተሳፋሪዎችም የራሳቸው ድርሻ አላቸው።", en = "Passengers also have a role in keeping transport service peaceful." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Passengers also help keep the journey peaceful by how they behave."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የማሽከርከርን ባህሪ በእጅጉ በመረበሽ ለአደጋ መንስኤ የሚሆነዉ የቱ ነው?", en = "Which seriously disrupts driving behavior and causes accidents?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሀይለ ስሜታዊ ውጥረት", en = "Intense emotional stress" }
                        , { am = "ድካም", en = "Fatigue" }
                        , { am = "እንቅልፍ", en = "Sleepiness" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልሱ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "Intense emotional stress, fatigue and sleepiness all disrupt driving and cause accidents."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የአሽከርካሪ አካላዊ ቅልጥፍና ሊቀንስ የሚችለው በ------ ምክንያት ነዉ።", en = "A driver's physical agility can drop because of ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ድካም", en = "Fatigue" }
                        , { am = "ጤና መጓደል", en = "Ill health" }
                        , { am = "በውጥረት", en = "Stress" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልሱ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "Fatigue, ill health and stress all slow a driver's physical reactions."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪው ከፊትና ከኋላ ግጭት ለመከላከል እንዲረዳው የሚገጠም መሳሪያ ------ ይባላል።", en = "The device fitted to protect a vehicle in front and rear collisions is called the ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሬን", en = "Brake" }
                        , { am = "ስፖኪዮ", en = "Mirror" }
                        ]
                    , correct = { am = "ባምፐር", en = "Bumper" }
                    , after =
                        [ { am = "ሻንሲ", en = "Chassis" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The bumper is fitted at the front and rear to take the first impact in a collision."
          }
        , { topic = SafeDriving
          , prompt = { am = "ባላንስ ለመስራት የፍሪሲዮን ፔዳልን ግማሽ ድረስ ቀስ ብሎ በመልቀቅና ነዳጁን ደገፍ በማድረግ ነው።", en = "Holding the car on a slope ('balance') is done by slowly releasing the clutch halfway and pressing the gas lightly." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Bringing the clutch to the biting point with a little throttle holds the vehicle still on a slope."
          }
        , { topic = Vehicle
          , prompt = { am = "በዳሽ ቦርድ ላይ የሚገኙ ጠቋሚ መብራቶች የሚበሩት ቁልፍ ምን ላይ ሲሆን ነው?", en = "The dashboard warning lights come on when the key is at:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ON", en = "ON" }
                    , after =
                        [ { am = "ACC", en = "ACC" }
                        , { am = "START", en = "START" }
                        , { am = "LOCK", en = "LOCK" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The dashboard warning lights come on when the key is turned to ON."
          }
        , { topic = Vehicle
          , prompt = { am = "የእጅ ፍሬን በትክክል መስራቱን ለማረጋገጥ የሚቻለው በየትኛው የመንገድ ዓይነት ነው?", en = "On what kind of road can you check that the handbrake works properly?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በዳገት", en = "Uphill" }
                        , { am = "በቁልቁለት", en = "Downhill" }
                        , { am = "በሜዳማ", en = "Flat road" }
                        ]
                    , correct = { am = "ሀ እና ለ", en = "ሀ and ለ" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The handbrake can be tested on a slope in either direction, uphill or downhill."
          }
        , { topic = Vehicle
          , prompt = { am = "የቤንዚንና የናፍጣ ሞተርን ለማስነሳት በተመሳሳይ መንገድ ይቻላል።", en = "Petrol and diesel engines are started the same way." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A diesel engine is preheated with glow plugs before starting. A petrol engine is not."
          }
        , { topic = Vehicle
          , prompt = { am = "ቾክ ቫልቭ ስንስብ ኮፈኑን ከፍተን መሆን አለበት።", en = "When pulling the choke, the hood must be open." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The choke is worked from the driver's seat, so the bonnet does not need to be open."
          }
        , { topic = SafeDriving
          , prompt = { am = "ማንኛውም ጭነት የጫነ ተሽከርካሪ በዳገት ቦታ ላይ መነሣት ያለበት፤", en = "A loaded vehicle should pull away on a hill in:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "በ1ኛ ማርሽ", en = "1st gear" }
                    , after =
                        [ { am = "በ2ኛ ማርሽ", en = "2nd gear" }
                        , { am = "በ3ኛ ማርሽ", en = "3rd gear" }
                        , { am = "በ4ኛ ማርሽ", en = "4th gear" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "A loaded vehicle needs first gear to pull away on a hill."
          }
        , { topic = TrafficLights
          , prompt = { am = "ቀይ የትራፊክ መብራት ብልጭ ድርግም ሲል የደረሰ አሽከርካሪ ፍጥነቱን ቀንሶ ማለፍ አለበት።", en = "At a flashing red light, the driver should slow down and go through." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A flashing red light means stop first and go only when it is safe."
          }
        , { topic = Vehicle
          , prompt = { am = "የካምቢዮ ተግባር ተሽከርካሪው ወደ ተፈለገበት አቅጣጫ እንዲዞር ማድረግ ነው።", en = "The gearbox's job is to turn the vehicle in the desired direction." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The gearbox changes the pulling force and the speed. Steering turns the vehicle."
          }
        , { topic = Vehicle
          , prompt = { am = "የእግር ፍሬንና የእጅ ፍሬን ተግባር ተመሳሳይ ነው።", en = "The foot brake and handbrake have the same function." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The foot brake slows and stops a moving vehicle. The handbrake holds a parked one."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪውን ከቆመበት ለማንቀሳቀስ የሚያገለግል የማርሽ ዓይነት የቱ ነው?", en = "Which gear is used to move off from a standstill?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "1ኛ", en = "1st" }
                    , after =
                        [ { am = "የኋላ", en = "Reverse" }
                        , { am = "3ኛ", en = "3rd" }
                        , { am = "4ኛ", en = "4th" }
                        , { am = "5ኛ", en = "5th" }
                        ]
                    }
          , explanation = "First gear gives the most pulling force, so it is used to move off."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪው ከቆመበት ቦታ እንዳይንቀሳቀስ አስሮ የሚይዝ መሣሪያ ------ ይባላል።", en = "The device that holds a parked vehicle in place is the ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የእጅ ፍሬን", en = "Handbrake" }
                    , after =
                        [ { am = "የእግር ፍሬን", en = "Foot brake" }
                        , { am = "ሪዱታ", en = "Reduction gear" }
                        , { am = "የመቆጣጠሪ መብራት", en = "Control light" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The handbrake holds a parked vehicle in place."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር እንደተነሳ ትንሽ ነዳጅ ሰጠት እያደረጉ ማሞቅ ተገቢ ነው።", en = "Right after starting, it's proper to warm the engine by revving it a little." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Let a newly started engine idle. Revving it before the oil has circulated wears it."
          }
        , { topic = SafeDriving
          , prompt = { am = "በጉዞ ላይ ያለን ተሽከርካሪ በድንገት ለማቆም እጅ ፍሬን ቀስ በቀስ በመያዝ ነው።", en = "To stop a moving vehicle suddenly, gradually pull the handbrake." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Pulling the handbrake on a moving vehicle can lock the rear wheels and make it skid."
          }
        , { topic = Vehicle
          , prompt = { am = "በአብዛኛውን ጊዜ በቀላል ተሽከርካሪዎች 3ኛ እና 4ኛ ማርሽ ከባድ ማርሽ ተብለው ይለያሉ።", en = "In light vehicles, 3rd and 4th are usually called the heavy gears." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The heavy gears are first and second, not third and fourth."
          }
        , { topic = SafeDriving
          , prompt = { am = "አደጋን ተከላክሎ ለማሽከርከር ማድረግ የሚገባን፤", en = "To drive defensively, you should:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በፍጥነት ማሽከርከር", en = "Drive fast" }
                        ]
                    , correct = { am = "በተሽከርካሪዎች መካከል ያለውን ርቀት መጠበቅ", en = "Keep a safe distance between vehicles" }
                    , after =
                        [ { am = "የትራፊክ ምልክቶችን አለማክበር", en = "Ignore traffic signs" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሠጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Keeping a safe distance from the vehicle ahead is the basis of defensive driving."
          }
        , { topic = TrafficRules
          , prompt = { am = "ሰሌዳ ያለጠፉ ተሽከርካሪዎች ከወደብ ወደ ከተማ በሚገቡ ጊዜ የሚጠቀሙት መብራት ------ ይባላል።", en = "Unregistered vehicles coming from the port into town use the ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የቀኝ ፍሬቻ", en = "Right indicator" }
                        , { am = "የፍሬን መብራት", en = "Brake light" }
                        ]
                    , correct = { am = "የአደጋ መብራት", en = "Hazard lights" }
                    , after =
                        [ { am = "የማቆሚያ መብራት", en = "Parking lights" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Unregistered vehicles being driven from the port use their hazard lights."
          }
        , { topic = TrafficRules
          , prompt = { am = "በጉዞ ላይ ከመቆማችን በፊት አስቀድመን የግራ ፍሬቻ ማሳየት አለብን።", en = "Before stopping, we must signal left." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "You pull over to the right to stop, so the signal is to the right."
          }
        , { topic = Vehicle
          , prompt = { am = "የተበላሸ ተሽከርካሪ በመንገድ ላይ ሲቆም የሚበራ የተሽከርካሪ መብራት ------ ይባላል።", en = "The light used when a broken-down vehicle stops on the road is the ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የቀኝ ፍሬቻ", en = "Right indicator" }
                        , { am = "የግራ ፍሬቻ", en = "Left indicator" }
                        ]
                    , correct = { am = "ሀዛርድ", en = "Hazard lights" }
                    , after =
                        [ { am = "የኋላ መብራት", en = "Rear light" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "A broken-down vehicle stopped on the road uses its hazard lights."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተሽከርካሪ ላይ የሚገኘን ረጅም መብራት በከተማ ክልል መጠቀም ተገቢ ነው።", en = "Using high beams in town is appropriate." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "High beams dazzle other road users in town, where the streets are lit and dipped beams are enough."
          }
        , { topic = Vehicle
          , prompt = { am = "የኋላ ማርሽ መብራት አገልግሎት የተሽከርካሪ ፍጥነት መቀነሱን ከኋላ ለሚከተል ተሽከርካሪ ለማሳወቅ ነው።", en = "The reversing light tells following vehicles that you're slowing down." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The reversing light shows that the vehicle is going backward. Slowing down is shown by the brake lights."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር ከማስነሳታችን በፊት ማርሹን ማድረግ ያለብን ------ ማርሽ ላይ ነው።", en = "Before starting the engine, the gear should be in ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "1ኛ", en = "1st" }
                        ]
                    , correct = { am = "ዜሮ", en = "Neutral" }
                    , after =
                        [ { am = "2ኛ", en = "2nd" }
                        , { am = "የኋላ", en = "Reverse" }
                        , { am = "2ኛ", en = "2nd" }
                        ]
                    }
          , explanation = "Start the engine in neutral so the vehicle cannot jump forward."
          }
        , { topic = SafeDriving
          , prompt = { am = "አንድ ከፍተኛ ጉልበት ያለው የጭነት ተሽከርካሪ ሞተር የጫነም ሆነ ያልጫነ በቁልቁለት መንገድ ላይ ሊጠቀም የሚገባው የፍጥነት ማርሽ የቱ ነው?", en = "Which gear should a high-powered truck, loaded or not, use on a downhill road?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "1ኛ", en = "1st" }
                        , { am = "ዜሮ", en = "Neutral" }
                        ]
                    , correct = { am = "2ኛ", en = "2nd" }
                    , after =
                        [ { am = "የኋላ", en = "Reverse" }
                        , { am = "2ኛ", en = "2nd" }
                        ]
                    }
          , explanation = "The answer key gives second gear for a powerful truck going downhill, loaded or not."
          }
        , { topic = Vehicle
          , prompt = { am = "ለረዥም ሰዓት ሲሰራ የቆየ ሞተር በቆመበት ወዲያውኑ ሞተሩን ማጥፋት ተገቢ አይደለም ምክንያቱም፤", en = "You shouldn't switch off an engine immediately after a long run because:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሞተር ዘይቱ ወደነበረበት ቦታ መመለስ ስለሚያስፈልግ", en = "The oil needs to return to its place" }
                        ]
                    , correct = { am = "የሞተሩ የሙቀት መጠን ወደመደበኛው ሙቀት ደረጃ እንዲመለስ", en = "The engine temperature needs to return to normal" }
                    , after =
                        [ { am = "የተሽከርካሪውን ፈላሽ ለመቆጣጠር", en = "To control boil-over" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "After a long run the engine is very hot, so let it idle until the temperature comes back to normal."
          }
        , { topic = TrafficRules
          , prompt = { am = "ሁለት አሽከርካሪዎች በዳገትና በቁልቁለት ላይ ቢገናኙ የቀደመው ማለፍ ይችላል።", en = "When two drivers meet on a slope, whoever got there first may go." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "On a slope the vehicle climbing has priority, not the one that arrived first."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪው ኩርባ ሲዞር በግራና ቀኝ ያሉ ጎማዎች እኩል ዙር አይኖራቸውም።", en = "When cornering, the left and right wheels don't turn the same number of times." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "In a bend the outer wheel travels further than the inner one, so they turn at different speeds."
          }
        , { topic = SafeDriving
          , prompt = { am = "ባላንስ ለማድረግ፤", en = "To hold the car on a slope ('balance'), use:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ግማሽ ፍሪሲዮን ግማሽ ነዳጅ", en = "Half clutch, half throttle" }
                    , after =
                        [ { am = "ግማሽ ነዳጅ ብቻ", en = "Half throttle only" }
                        , { am = "ግማሽ ፍሪሲዮን ብቻ", en = "Half clutch only" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "The vehicle is held on a slope with half clutch and half throttle together."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪ በሚኒሞ በሚሰራበት ወቅት፤", en = "While the vehicle is idling:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ማርሽ ዜሮ መሆን አለበት", en = "It must be in neutral" }
                        , { am = "የእጅ ፍሬን መያዝ አለበት", en = "The handbrake must be on" }
                        , { am = "የነዳጅ ፔዳል መያዝ አለበት", en = "The gas pedal must be pressed" }
                        , { am = "የፍሪሲዮን ፔዳል መርገጥ", en = "Press the clutch" }
                        ]
                    , correct = { am = "ሀ እና ለ", en = "ሀ and ለ" }
                    , after = []
                    }
          , explanation = "An idling vehicle should be in neutral with the handbrake on."
          }
        , { topic = SafeDriving
          , prompt = { am = "ከሚከተሉት ውስጥ የአካባቢን ሁኔታ የሚገልጸው የቱ ነው።", en = "Which of these describes environmental conditions?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ዝናባማ", en = "Rainy" }
                        ]
                    , correct = { am = "ዳገታማ", en = "Hilly" }
                    , after =
                        [ { am = "ነፋሻማ", en = "Windy" }
                        , { am = "ሀ እና ለ", en = "ሀ and ለ" }
                        , { am = "መልሱ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "Hilly describes the terrain, which is an environmental condition. Rain and wind describe the weather."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር ሲነሳና ሲጠፋ የሞተር ቁልፍ በተመሳሳይ አቅጣጫ ይዞራል።", en = "The key turns the same way to start and to stop the engine." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The key is turned one way to start the engine and back the other way to stop it."
          }
        , { topic = SafeDriving
          , prompt = { am = "በቁልቁለትና ዳገት መንገድ ላይ በምናሽከረክርበት ወቅት ዳገቱን ወይም ቁልቁለቱን ከመጀመራችን በፊት በከባድ ማርሽ መጠቀም ይመከራል።", en = "On hills, shift into a low gear before starting up or down the slope." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Choose the low gear before the slope begins, not halfway along it."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተሽከርካሪዎች ዳገት ሲወጡም ሆነ ቁልቁለት ሲወርዱ በተመሳሳይ ከባድ ማርሽ እንዲጠቀሙ ይመከራል።", en = "Vehicles should use the same low gear going uphill and downhill." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The gear that is right for climbing a hill is also the right one for coming down it."
          }
        , { topic = SafeDriving
          , prompt = { am = "በዳገት ወይም በቁልቁለት መንገድ ላይ ሲያሽከረክሩ የመሬት ስበት በተሽከርካሪው ፍጥነት ላይ ተጽእኖ ይፈጥራል።", en = "On uphill or downhill roads, gravity affects the vehicle's speed." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Gravity slows a vehicle going uphill and speeds it up going downhill."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር ከተነሳ በኋላ የማስነሻ ቁልፉ የሚሆነው ------ ላይ ነው።", en = "After the engine starts, the ignition key sits at ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "LOCK", en = "LOCK" }
                        , { am = "ACC", en = "ACC" }
                        ]
                    , correct = { am = "ON", en = "ON" }
                    , after =
                        [ { am = "START", en = "START" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Once the engine is running the key springs back from START and stays at ON."
          }
        , { topic = Vehicle
          , prompt = { am = "በመቀየር ችግሩ ሊቀረፍ የሚችል የተሽከርካሪ ክፍል የቱ ነው?", en = "Which vehicle part's problem is fixed by replacing it?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የፍሬን ሸራ", en = "Brake lining" }
                        , { am = "ታምቡር", en = "Brake drum" }
                        , { am = "ጎማ", en = "Tire" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልስ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "Worn brake linings, brake drums and tyres are all replaced, not repaired."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪው ጎማ ጭቃው ውስጥ ቢገባ ከጭቃ ውስጥ ለማውጣት የምንጠቀመው የሪዱታ ማርሽ የቱ ነው።", en = "Which transfer-case gear do you use to get a vehicle out of mud?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "2H", en = "2H" }
                        , { am = "4H", en = "4H" }
                        ]
                    , correct = { am = "4L", en = "4L" }
                    , after =
                        [ { am = "N", en = "N" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "4L, low-range four-wheel drive, gives the most pulling force for getting out of mud."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪ በጉዞ ላይ እያለ ሪዱታ ማርሽን መቀየር ይቻላል።", en = "You can change the transfer-case (reduction) gear while moving." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The transfer-case gear is changed with the vehicle stopped."
          }
        , { topic = Vehicle
          , prompt = { am = "ለረጅም ጊዜ ሲሰራ የቆየን ተሽከርካሪ ሞተር ወዲያው ማጥፋት ለማቀዝቀዣ ክፍሎች መበላሸት ምክንያት ይሆናል።", en = "Switching off an engine immediately after a long run can damage cooling parts." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false."
          }
        , { topic = Safety
          , prompt = { am = "በተሽከርካሪ ላይ የሚጫን እቃ እንዴት መጫንና መውረድ እንዳለበት የሚወስነው፤", en = "Who decides how cargo is loaded and unloaded?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ባለንብረቱ", en = "The owner" }
                        , { am = "እረዳቱ", en = "The assistant" }
                        ]
                    , correct = { am = "አሽከርካሪው", en = "The driver" }
                    , after =
                        [ { am = "ሱፐርቫይዘሩ", en = "The supervisor" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The driver decides how the cargo is loaded and unloaded, because the driver is responsible for the vehicle's safety."
          }
        , { topic = Parking
          , prompt = { am = "ተሽከርካሪው በዳገት ላይ ሲቆም የኋላ ማርሽ አስገብቶ ማቆም ተገቢ ነዉ።", en = "When parking uphill, leave the vehicle in reverse." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Facing uphill, leave the vehicle in first gear. Reverse is for facing downhill."
          }
        , { topic = Vehicle
          , prompt = { am = "በአደገኛ ኩርባ መንገድ ላይ በከፍተኛ ፍጥነት ማሽከርከር በመሪ ክፍሎች ላይ ከፍተኛ ችግር ያስከትላል።", en = "Driving fast on dangerous bends seriously damages steering parts." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Taking dangerous bends fast puts heavy side loads on the steering parts."
          }
        , { topic = Vehicle
          , prompt = { am = "የፍሪሲዮን ፔዳል ባይረገጥም ተሽከርካሪው ፍጥነት ላይ እያለ ማርሹን መቀየር ይቻላል።", en = "You can change gear while moving without pressing the clutch." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The clutch has to be pressed to change gear while moving."
          }
        , { topic = TrafficRules
          , prompt = { am = "የህዝብ ማመላለሻ ተሽከርካሪ የሚያሽከረክር አሽከርካሪ ተሣፋሪዎቹን እንደጫነ ነዳጅ መሙላት ይችላል። ይሁን እንጂ በሞባይል እንዲነጋገር አይፈቀድለትም።", en = "A public transport driver may refuel with passengers on board, but may not talk on the phone." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Refuelling with passengers on board is not allowed either."
          }
        , { topic = TrafficRules
          , prompt = { am = "ምልክት ሳያሳዩ መታጠፍ የህግ ተጠያቂነትን አያስከትልም።", en = "Turning without signaling carries no legal liability." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Turning without signalling is an offence, so the driver is liable."
          }
        , { topic = Vehicle
          , prompt = { am = "በአነስተኛ አውቶሞቢሎች ላይ የተሽከርካሪውን ፍጥነት ለመቆጣጠር ፍሬና ሞተር መጠቀም ይቻላል።", en = "Small cars can also use engine braking to control speed." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "In this book the engine brake means the exhaust brake fitted to heavy vehicles, which small cars do not have."
          }
        , { topic = Parking
          , prompt = { am = "ተሽከርካሪን በቁልቁለት ላይ ለማቆም ማርሹን አንደኛ ላይ ማድረግ አለብን።", en = "When parking downhill, leave the vehicle in 1st gear." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Facing downhill, leave the vehicle in reverse. First gear is for facing uphill."
          }
        , { topic = FirstAid
          , prompt = { am = "የመርዝ ቃጠሎ የሚባለው በፈላ ውሃና ቅባት የሚከሰት ነው።", en = "A chemical burn is one caused by boiling water and grease." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Boiling water and hot grease cause scalds, which are heat burns. Chemical burns come from acids and similar substances."
          }
        , { topic = Vehicle
          , prompt = { am = "አንድ አሽከርካሪ የተሽከርካሪው ፍሬን ሸራ ሲበላ መቀየር አለበት።", en = "A driver must replace worn brake linings." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false. Replacing brake linings is a job for a mechanic."
          }
        , { topic = FirstAid
          , prompt = { am = "የመድማትና የመቁሰል ምልክት የሚያሳይ የስብራት አይነት የቱ ነው?", en = "Which type of fracture shows bleeding and an open wound?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ክፍት ስብራት", en = "Open fracture" }
                    , after =
                        [ { am = "ዝግ ስብራት", en = "Closed fracture" }
                        , { am = "የተዘበራረቀ ስብራት", en = "Complicated fracture" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልስ የለም", en = "There is no answer" }
                        ]
                    }
          , explanation = "Bleeding and an open wound are the signs of an open fracture."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ዘይት ከወፈረ በቀላሉ በሞተር ክፍሎች ውስጥ ለመዘዋወር ያስችለዋል።", en = "Thick engine oil circulates more easily through engine parts." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Thick oil flows more slowly, so it takes longer to reach the engine parts."
          }
        , { topic = Safety
          , prompt = { am = "አደጋ ማለት ከአሽከርካሪና ከተሽከርካሪ ጋር በተያያዘ የሚፈጠር ጉዳት ነው።", en = "An accident is damage related to the driver and the vehicle." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "An accident also involves other road users, property and the surroundings, not only the driver and the vehicle."
          }
        , { topic = Vehicle
          , prompt = { am = "ከባትሪ መሙያ ክፍል ጄነሬተር በትክክል መስራቱን ማረጋገጥ የሚቻለው የቹንግውን ጤንነት በማየት ነው።", en = "You can check that the generator is working by checking the drive belt." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A sound belt does not prove the generator is charging. That is shown by the charge warning light or a meter."
          }
        , { topic = FirstAid
          , prompt = { am = "ከላይ ባለው የሰውነት አካል ቁስል ላይ የተሰበረው አጥንት ሲታይ ዝግ ስብራት ይባላል።", en = "When the broken bone shows through a wound, it's a closed fracture." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A bone showing through a wound is an open fracture."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር ዘይት ለማየት ተሽከርካሪውን በቁልቁለታማ ቦታ ላይ ማቆም ያስፈልጋል።", en = "To check the engine oil, park on a slope." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Check the oil on level ground. On a slope the dipstick reading is wrong."
          }
        , { topic = FirstAid
          , prompt = { am = "ዝግ ስብራት ከውጪ ምንም ዓይነት ምልክት አያሳይም።", en = "A closed fracture shows no external signs at all." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "In a closed fracture the skin is not broken, so there is no outside wound."
          }
        , { topic = Vehicle
          , prompt = { am = "በመሪ አማካኝነት የሚታዘዘው የኋላ እግር ነው።", en = "The steering wheel controls the rear wheels." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The steering wheel turns the front wheels."
          }
        , { topic = Safety
          , prompt = { am = "የትራፊክ አደጋ ከአካላዊ ጉዳት ባሻገር የስነ-ልቦና ተጽእኖ በግለሰቦች ላይ ያደርሳል።", en = "Beyond physical injury, traffic accidents also cause psychological harm." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Traffic accidents leave psychological harm as well as physical injury."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ዘይት በታችኛው የሞተር ክፍል ላይ የሚመለሰው በስበት ህግ አማካኝነት ነው።", en = "Engine oil returns to the bottom of the engine by gravity." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "After circulating, the oil runs back down to the oil pan by gravity."
          }
        , { topic = Safety
          , prompt = { am = "ከእሳት አካባቢ ተቀጣጣይ ነገሮች በማራቅ የሚጠቀም የእሳት ማጥፊያ ዘዴ ማፈን ይባላል።", en = "Putting out a fire by removing flammable material is called smothering." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Removing the fuel is called starving the fire. Smothering cuts off the oxygen."
          }
        , { topic = Parking
          , prompt = { am = "ከከተማ ክልል ውጪ በማንኛውም መንገድ ላይ ተሽከርካሪን ለረጅም ጊዜ ማቆም ይቻላል።", en = "Outside town, you may park for a long time on any road." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Long parking outside town is only allowed where it is safe and permitted, not on every road."
          }
        , { topic = Safety
          , prompt = { am = "የእሳት ማጥፊያ ዘዴ በ------ ዋና ዋና ዘዴዎች ይከናወናል።", en = "Fires are put out using ___ main methods." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "2", en = "2" }
                        , { am = "4", en = "4" }
                        ]
                    , correct = { am = "3", en = "3" }
                    , after =
                        [ { am = "5", en = "5" }
                        , { am = "6", en = "6" }
                        ]
                    }
          , explanation = "There are three main ways to put out a fire, which are smothering, cooling and starving."
          }
        , { topic = Vehicle
          , prompt = { am = "ካንዴላ በሚቀየርበት ጊዜ ሁሉንም በአንድ ጊዜ በተመሳሳይ መቀየር ይገባል።", en = "Spark plugs should all be replaced at the same time." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Spark plugs wear at the same rate, so they are replaced as a set."
          }
        , { topic = Safety
          , prompt = { am = "የተሽከርካሪን የውስጥ ምቾት ማሻሻል የስራ ላይ ደህንነት እርምጃ አይደለም።", en = "Improving a vehicle's interior comfort is not a workplace safety measure." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A comfortable cabin reduces fatigue and stress, so improving it is a safety measure."
          }
        , { topic = TrafficLights
          , prompt = { am = "አረንጓዴ የትራፊክ ማስተላለፊያ መብራት በርቶ ከርቀት በማይታይበት ጊዜ በከፍተኛ ፍጥነት እያሽከረከሩ መገናኛ መንገዱን ማቋረጥ ይቻላል።", en = "When the green light is on but can't be seen from far away, you may cross the junction at high speed." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A green light you cannot see clearly is a reason to slow down, not to speed up."
          }
        , { topic = Vehicle
          , prompt = { am = "ቾክ ቫልቭ ጥቅሙ ጠዋት ሞተር ቶሎ እንዲነሣ የአየር መጠንን የሚቀንስ እና እርጥበት ያለው አየር ወደሲሊንደር እንዳይገባ የሚከላከል ክፍል ነው።", en = "The choke valve reduces air so the engine starts quickly in the morning and keeps moist air out of the cylinders." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The choke cuts down the air to give a richer mixture, which helps a cold engine start."
          }
        , { topic = SafeDriving
          , prompt = { am = "አንድ አሽከርካሪ አማራጭ መንገዶችን ለመጠቀም ሲያወዳድር በዋናነት መርሳት የሌለበት፤", en = "When comparing alternative routes, a driver mainly must not forget:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የመንገዱን ለትራፊክ መከፈት", en = "Whether the road is open to traffic" }
                        , { am = "የአገልግሎት መስጫ ተቋማት የተሟሉ መሆኑን ማረጋገጥ", en = "Whether services are available" }
                        , { am = "የመንገዱ ፀጥታ አስተማማኝ መሆኑን ማረጋገጥ", en = "Whether the road is secure" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "When comparing routes, check that the road is open, that services are available and that it is secure."
          }
        , { topic = Vehicle
          , prompt = { am = "ለነዳጅ ፍጆታ መጨመር ምክንያት ከሚሆኑ ነገሮች ውስጥ አንዱ የቆሸሸ የአየር ማጣሪያ መጠቀም ነው።", en = "A dirty air filter is one cause of higher fuel consumption." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A dirty air filter restricts the air, so the mixture runs rich and uses more fuel."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አሽከርካሪው በሚጓዝባቸው ቦታዎችና አካባቢዎች የሚገኙ ማህበረሰቦች ወግ፣ ባህልና እምነት ማወቁ እጅግ ጠቃሚ ነው።", en = "It's very useful for a driver to know the customs, culture and beliefs of communities along the route." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Knowing local customs, culture and beliefs helps a driver avoid conflict along the route."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር በአንዳንድ ተሽከርካሪዎች ላይ ከኃላ ይገኛል።", en = "In some vehicles, the engine is at the rear." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Some vehicles carry the engine at the back."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ዘይት በማቀጣጠያ ክፍል ውስጥ ከገባ በጭስ ማውጫው ሰማያዊ ጭስ ይወጣል።", en = "If oil gets into the combustion chamber, blue smoke comes out of the exhaust." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Oil burning in the combustion chamber gives blue smoke."
          }
        , { topic = Vehicle
          , prompt = { am = "ካንዴላ ላይ ዘይት ከታየ ችግሩ የፋሻ መበላት ሊሆን ይችላል።", en = "Oil on a spark plug may mean worn piston rings." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Oil on a spark plug shows oil is getting past the piston rings into the cylinder."
          }
        , { topic = Vehicle
          , prompt = { am = "በጭስ አማካኝነት ከሞተር የሚወገደው የሙቀት መጠን 40 ፐርሰንት ነው።", en = "About 40% of engine heat leaves through the exhaust." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A large share of the engine's heat, about 40 percent, is carried away by the exhaust."
          }
        , { topic = Vehicle
          , prompt = { am = "ራዲያተር ላይ ያለው ክዳን ውሃው ወደ ውጭ እንዳይፈስ ከመከላከል ውጪ ሌላ ስራ የለውም።", en = "The radiator cap does nothing except keep water from spilling out." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The radiator cap also keeps the cooling system under pressure and lets excess pressure escape."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር በሚጠቀመው የነዳጅ አይነት በሶስት ይከፈላል።", en = "Engines are divided into three types by fuel." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false, so three is not the number of engine types by fuel."
          }
        , { topic = Vehicle
          , prompt = { am = "የፊውዝ መቃጠል ለሞተር አለመነሳት ምክንያት ሊሆን ይችላል።", en = "A blown fuse can stop the engine from starting." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A blown fuse in the ignition or fuel circuit can stop the engine from starting."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ዘይት በተወሰነ ደረጃ ሞተርን ለማቀዝቀዝ ያገለግላል።", en = "Engine oil also helps cool the engine to some extent." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Engine oil carries some heat away from the moving parts as it circulates."
          }
        , { topic = RoadSigns
          , prompt = { am = "በቅርፅ የተለያዩና በመልዕክት ግን ተመሣሣይ የሆኑ መንገድ ዳር ምልክቶች ምን ይባላሉ።", en = "What are road signs called that differ in shape but share the same message?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሚቆጣጠሩ", en = "Regulatory" }
                        , { am = "የሚያስገድዱ", en = "Mandatory" }
                        , { am = "የሚከለክሉ", en = "Prohibitory" }
                        ]
                    , correct = { am = "ቅድሚያ የሚሰጡ", en = "Priority" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Priority signs, such as stop and give way, differ in shape but all deal with who goes first."
          }
        , { topic = RoadSigns
          , prompt = { am = "የመንገድ ዳር ምልክቶች በማንኛውም አካል ሊተከሉ ይችላሉ።", en = "Road signs may be put up by anyone." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Only the road authority may put up road signs."
          }
        , { topic = TrafficRules
          , prompt = { am = "ምልክት ሳያሳዩ መታጠፍ የህግ ተጠያቂነትን አያስከትልም።", en = "Turning without signaling carries no legal liability." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Turning without signalling is an offence, so the driver is liable."
          }
        , { topic = Vehicle
          , prompt = { am = "የባትሪ መሙያ ክፍል ተግባር ሞተሩ እንደተነሳ ባትሪው ለሞተሪኖ የሰጠውን የኤሌክትሪክ ኃይል መልሶ መተካት ነው።", en = "Once the engine starts, the charging system replaces the power the battery gave the starter." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false."
          }
        , { topic = Vehicle
          , prompt = { am = "የዲፈረንሻል ተግባር ከሞተር የመጣውን ዙር በ90 ዲግሪ ቀይሮ ለሺሚያስ ማስተላለፍ ነው።", en = "The differential turns the engine's rotation through 90 degrees and passes it to the axle shafts." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The differential turns the drive through 90 degrees and passes it to the two axle shafts."
          }
        ]
    }
