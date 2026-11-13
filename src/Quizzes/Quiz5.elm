module Quizzes.Quiz5 exposing (quiz)

import Quiz exposing (Answer(..), Quiz, Topic(..))


quiz : Quiz
quiz =
    { id = "quiz-5"
    , title = { am = "ፈተና 5", en = "Quiz 5" }
    , minutes = 115
    , first =
        { topic = Vehicle
        , prompt = { am = "በተሽከርካሪ ላይ ግራና ቀኝ ያሉት መመልከቻ መስታወት /ስፖኪዮ/ ተሽከርካሪውን ለመቆጣጠር ይረዳል።", en = "The left and right side mirrors on a vehicle help in controlling the vehicle." }
        , figure = Nothing
        , answer = TrueFalse True
        , explanation = "Side mirrors let the driver see traffic beside and behind the vehicle, which is needed to change lanes, turn and reverse under control."
        }
    , rest =
        [ { topic = Safety
          , prompt = { am = "የተሽከርካሪውን ፍሬን በአግባቡ አለመስራት ብዙም ለአደጋ አያጋልጥም።", en = "Brakes that do not work properly hardly expose a vehicle to accidents." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Faulty brakes lengthen stopping distance or fail entirely, making them one of the most direct mechanical causes of crashes."
          }
        , { topic = Vehicle
          , prompt = { am = "አሽከርካሪዎች ዘወትር ተሽከርካሪ ከማስነሳታቸው በፊት ለባትሪ መደረግ የሚገባውን ጥንቃቄ ማየትና መፈተሽ የዘወትር ልምድ ሊያደርጉ ይገባል።", en = "Drivers should make it a habit to check the battery before starting the vehicle." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Routine checks of battery terminals, fluid level and mounting catch problems early and prevent starting failures on the road."
          }
        , { topic = Vehicle
          , prompt = { am = "የውሃ ፖምፕ ቤልት /ቺንጋ/ በጣም መላላት ወይም መወጠር የለበትም።", en = "The water pump belt should be neither too loose nor too tight." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A loose belt slips and lets the engine overheat, while an over-tight belt wears out the pump and alternator bearings."
          }
        , { topic = Safety
          , prompt = { am = "ለህጻናት የትራንስፖርት አገልግሎት እየሰጠ ያለ አሽከርካሪ የተሽከርካሪውን በር መቆለፉን በትክክል ማረጋገጥ ይገባዋል።", en = "A driver transporting children must make sure the vehicle's doors are properly locked." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Children may open doors or lean on them while the vehicle is moving, so locked doors prevent them from falling out."
          }
        , { topic = Vehicle
          , prompt = { am = "አሽከርካሪው ተሽከርካሪውን ሲያሽከረክር ከጎንና በኋላ የሚንቀሳቀሱን ተሽከርካሪዎች እንቅስቃሴ ለመቆጣጠር የጎን መመልከቻ /ስፖኪዮ/ ይጠቀማል።", en = "While driving, the driver uses the side mirrors to monitor vehicles moving beside and behind." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Side mirrors show the areas beside and behind the vehicle that the driver cannot see by looking ahead."
          }
        , { topic = SafeDriving
          , prompt = { am = "የተሽከርካሪውን የፊት አካል የመጨረሻ ጠርዞችን በመመልከትና በመከተል የያዙትን መስመር ሳይለቁ በቀጥታ እየተቆጣጠሩ ተሽከርካሪውን በመምራት በቀጥታ መንገድ ላይ የመሪ አጠቃቀምን ይገልጻል።", en = "Steering on a straight road means guiding the vehicle straight within its lane by watching the front edges of the vehicle." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Using the front corners of the vehicle as reference points lets the driver make small steering corrections and stay centred in the lane."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተሽከርካሪን በጠመዝማዛ /ኩርባ/ ቦታ ከጠመዘዝን በኃላ መሪው ወደነበረበት አቅጣጫ በሚመለስበት ጊዜ በእጅ ላይ ጉዳት የሚያደርሰው መሪውን በውጪ በኩል በእጅ በመያዝ ነው።", en = "After turning through a bend, when the steering wheel returns to centre, holding the wheel on its outer rim is what injures the hand." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The wheel should be held on its outer rim; hands get hurt when they grip the spokes or inside of the wheel as it spins back to centre."
          }
        , { topic = SafeDriving
          , prompt = { am = "በመጠምዘዣ ቦታዎች ላይ መሪ ወደፊትም ሆነ ወደ ኋላ የተሽከርካሪውን አካል ወደሚፈለግበት አቅጣጫ ለማዞር አንድ አይነት መሆኑን መገንዘብ ይገባል።", en = "At turning points, you should understand that steering works the same way whether moving forward or reversing." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "When reversing, the rear of the vehicle leads and the front swings out the opposite way, so steering must be judged differently than when driving forward."
          }
        , { topic = SafeDriving
          , prompt = { am = "እየተንቀሳቀሰ ያለን ተሽከርካሪ በአንድ ጊዜ ሙሉ ለሙሉ /አስገዳጅ ሁኔታ ካልተፈጠረ በስተቀር የተሽከርካሪን ፍጥነት ለመቀነስም ሆነ ለማቆም የእግር ፍሬን መጠቀም አይገባም።", en = "Unless an emergency forces it, you should not slam the foot brake fully all at once to slow down or stop a moving vehicle." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Braking progressively keeps the vehicle stable, avoids skids and gives following drivers time to react; full sudden braking is only for emergencies."
          }
        , { topic = Vehicle
          , prompt = { am = "አንዳንድ ተሽከርካሪዎች የመሪ አጠቃቀማቸው በዘይት የሚሠራ ሲሆን የእነዚህ ተሽከርካሪዎች አሽከርካሪዎች በየገዜው የመሪ ዘይቱን መጠን ሊቆጣጠህረ ይገባል።", en = "Some vehicles have oil-operated (power) steering, and their drivers should regularly check the steering fluid level." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Hydraulic power steering needs enough fluid to work; a low level makes steering heavy and can damage the pump."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪው የመሪ አቅጣጫ ግማሽ ዙር ከዞረ /ጎማው ወደ ጎን ከዞረ / የመሪውን ትክክለኛ የዘይት መጠን ለማወቅ ይቻላል።", en = "The correct steering fluid level can be checked with the steering turned half a turn (wheels turned to the side)." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Steering fluid must be checked with the front wheels pointing straight ahead; turning them shifts fluid in the system and gives a false reading."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተሽከርካሪን በጠመዝማዛ ቦታ ላይ ነዳጅ ከመጠን በላይ መስጠት መሪን በትክክል ለመቆጣጠር ያዳግታል።", en = "Accelerating too much on a bend makes it hard to control the steering properly." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Extra speed in a bend increases the outward force on the vehicle, reducing tyre grip and making it harder to hold the steering line."
          }
        , { topic = Vehicle
          , prompt = { am = "በማንኛውም ተሽከርካሪዎች ላይ የምናገኛቸው የማርሽ ዓይነቶች ማንዋልና አውቶማቲክ ማርሽ በመባል ይታወቃሉ።", en = "The gearbox types found on vehicles are known as manual and automatic." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Gearboxes are either manual, where the driver shifts with a clutch, or automatic, where the vehicle shifts by itself."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪው እየተንቀሳቀሰ የማርሹ ሴሌክተር D ላይ ቢሆን ካንቢዮው ይጎዳል።", en = "If the gear selector is in D while the vehicle is moving, the gearbox gets damaged." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "D (Drive) is the normal position for moving forward in an automatic; damage comes from shifting into P or R while moving."
          }
        , { topic = Vehicle
          , prompt = { am = "በአውቶማቲክ የሚንቀሳቀሱ ተሽከርካሪዎች በከተማ ክልል ከከተማ ክልል ውጪና ተሽከርካሪን ከቆመበት ለማስነሳትና እስከ ከፍተኛ ፍጥነት ለማንቀሳቀስ የምንጠቀመው ማርሹን በ L አቅጣጫ ሲሆን ነው።", en = "In automatic vehicles, both in and outside town, we move off and drive up to top speed with the selector in L." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Normal driving from standstill to top speed is done in D; L holds a low gear for steep hills or heavy loads."
          }
        , { topic = Vehicle
          , prompt = { am = "በአውቶማቲክ ማርሽ ላላቸው ተሽከርካሪዎች የማርሽ እጀታው 2(2/3)ሲገናኝ ዳገታማ በሆነ ቦታ ላይ ተጨማሪ ኃይል ለማግኘት እና ሞተር እንዳይጠፋ ይረዳል።", en = "In automatic vehicles, putting the selector in 2 (2/3) gives extra power on uphill roads and keeps the engine from stalling." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The 2 position keeps the gearbox in lower gears, so the engine stays in its stronger rev range on climbs instead of upshifting and labouring."
          }
        , { topic = Vehicle
          , prompt = { am = "በአውቶማቲክ ማርሽ ላይ ያለው በተን ጥቅሙ ማርሽን ለማስርና ወደ ሌላ ተፈላጊ ማርሽ ለማንቀሳቀስና ዘንጉን ለማላቀቅ ይረዳል።", en = "The button on an automatic gear lever is used to lock the selector and release the lever to move it to another gear." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The release button stops the selector being moved into P, R or low gears by accident; you press it to unlock the lever when changing position."
          }
        , { topic = TrafficRules
          , prompt = { am = "አሽከርካሪዎች ወደሚያቋርጡበት አቅጣጫ ተገቢውን የፍሬቻ ምልክት በበቂ ርቀት ማሳየት አለባቸው።", en = "Drivers must show the proper indicator signal well in advance in the direction they are turning." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Signalling early tells other road users what you intend to do so they can slow down or keep clear in time."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተጠጋግቶ ማሽከርከር ለአደጋ መፈጠር ምክንያት ሊሆን አይችልም።", en = "Driving too close to other vehicles cannot cause an accident." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Following too closely leaves no time or distance to stop if the vehicle ahead brakes, a leading cause of rear-end collisions."
          }
        , { topic = SafeDriving
          , prompt = { am = "አሽከርካሪዎች ወደ ፊትም ሆነ ወደ ኋላ በሚያሽከረክሩበት ጊዜ ከፊት ከኃላ ከቀኝና ከግራራ ያሉትን ተሽከርካሪዎች ጠብቆ ማሽከርከር ይኖርባቸዋል።", en = "Whether driving forward or reversing, drivers must keep watch on vehicles in front, behind, and to the right and left." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Hazards can come from any side, so keeping a safe space and constant watch all around the vehicle prevents collisions."
          }
        , { topic = Vehicle
          , prompt = { am = "አሽከርካሪዎች የተሽከርካሪውን ሞተር ሲያስነሱ የእጅ ፍሬን መያዝን ማረጋገጥ ይኖርባቸዋል።", en = "When starting the engine, drivers must make sure the handbrake is applied." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "With the handbrake on, the vehicle cannot roll or lurch forward if a gear is accidentally engaged when the engine starts."
          }
        , { topic = TrafficRules
          , prompt = { am = "ከመጋቢ መንገድ ወደ ዋና መንገድ የሚገባ አሽከርካሪ ቆሞ ቅድሚያ መስጠት አለበት።", en = "A driver entering a main road from a feeder road must stop and give way." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Traffic already on the main road has priority, so a driver joining from a side road must stop and wait for a safe gap."
          }
        , { topic = SafeDriving
          , prompt = { am = "አሽከርካሪዎች በመታጠፊያ ቦታና አቅጣጫን በሚቀይሩበት ሰዓት ፍጥነት መጨመር ይገባቸዋል።", en = "Drivers should speed up at turns and when changing direction." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Speed must be reduced before turning or changing direction to keep control and give time to react to other road users."
          }
        , { topic = TrafficRules
          , prompt = { am = "ቁልቁለት ለሚወርዱ ተሽከርካሪዎች ቅድሚያ መስጠት ከአንድ አሽከርካሪ የሚጠበቅ ስነ ምግባር ነው።", en = "Giving way to vehicles going downhill is the conduct expected of a driver." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "On a narrow slope the vehicle climbing uphill has priority, because restarting on an incline is harder; the descending driver should give way."
          }
        , { topic = Vehicle
          , prompt = { am = "የሞተር ጉልበት ከሚቀንስባቸው ምክንያቶች ውስጥ አንዱ የባትሪ መድከም ነው።", en = "A weak battery is one of the causes of reduced engine power." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Once the engine is running, the alternator supplies the electrics, so a weak battery affects starting rather than engine power; power loss comes from things like dirty filters or a worn clutch."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪን ጎማ ማዟዟር /መቀያየር/ ማለት አንድን ጎማ በአራቱም እግሮች በማዛወር መጠቀም ማለት ነው።", en = "Rotating a vehicle's tyres means using one tyre by moving it around all four wheel positions." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Tyre rotation means periodically swapping all the tyres between positions in a set pattern so they wear evenly, not moving a single tyre around."
          }
        , { topic = TrafficRules
          , prompt = { am = "የትራንስፖርት ህግና ደንብ ከሆኑት ጉዳዮች አንዱ የመንገዶችን አቅጣጫ ማመልከት ነው።", en = "Indicating the direction of roads is one of the matters covered by transport law and regulations." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Traffic regulations set out direction signs and markings so road users know where each road leads and which way traffic flows."
          }
        , { topic = SafeDriving
          , prompt = { am = "አንድን ተሽከርካሪ በምሽት ስናሽከረክር የማየት ችሎታን ይጨምራል", en = "Driving a vehicle at night increases one's ability to see." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "At night visibility is limited to what the headlights reach and glare from oncoming lights reduces it further, so speed must be lowered."
          }
        , { topic = Vehicle
          , prompt = { am = "የዲፈረንሻል ጥርሶች እንዳይጎዱ ጠመዝማዛ መንገዶች ላይ ፍጥነትን ቀንሶ ማሽከርከር ያስፈልጋል?", en = "Should you slow down on winding roads so the differential gears are not damaged?" }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "In bends the differential gears work hardest to let the wheels turn at different speeds, so taking curves fast puts heavy stress on them."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪው ተጨማሪ ጉልበት እንዲኖረው የፊት ወይም የኋላ እግር በጭቃ ከተያዘ በቀላሉ ለመወጣት የሚረዳ የሃይል አስተላላፊ ክፍል ዩኒቨርስ ጆይንት ነው?", en = "Is the universal joint the drivetrain part that gives the vehicle extra power to get out easily when a front or rear wheel is stuck in mud?" }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A universal joint only lets the propeller shaft transmit power at changing angles; extra traction in mud comes from the transfer case (reduction gear) or differential lock."
          }
        , { topic = Vehicle
          , prompt = { am = "የጎማ ንፋስ መጠን ከመጠን በታች መሆን የጎማ ዳርና ዳር ቶሎ ቶሎ እንዲያልቅ ያደርጋል።", en = "Under-inflated tyres make the tyre edges wear out quickly." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "With too little air the tyre sags in the middle and carries the load on its shoulders, so both edges of the tread wear fastest."
          }
        , { topic = Safety
          , prompt = { am = "የሚቀጣጠሉ ነገሮች ከምንላቸው ዓይነቶች ውስጥ አንዱ የሆነው?", en = "Which of these is a flammable substance?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ቡቴን ጋዝ", en = "Butane gas" }
                    , after =
                        [ { am = "ኦክስጅን", en = "Oxygen" }
                        , { am = "ሃይድሮጅን", en = "Hydrogen" }
                        , { am = "ውሃ", en = "Water" }
                        ]
                    }
          , explanation = "Butane is a fuel gas that burns readily; oxygen supports burning but is not itself the fuel."
          }
        , { topic = Safety
          , prompt = { am = "እሳትን ለመፍጠር የሚቻለው ከሚከተሉት ውስጥ በየትኛው ነው?", en = "Which of the following is needed to create fire?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኦክስጅን ውሃና ሰበቃ", en = "Oxygen, water and friction" }
                        , { am = "ጠጣር ፈሳሽና ጋዝ", en = "Solid, liquid and gas" }
                        ]
                    , correct = { am = "ኦክስጅን፣ ነዳጅና የሰበቃ ውጤት", en = "Oxygen, fuel and heat from friction" }
                    , after =
                        [ { am = "ኦክስጅን ፈሳሽና ጠጣር", en = "Oxygen, liquid and solid" }
                        ]
                    }
          , explanation = "Fire needs the three sides of the fire triangle: oxygen, fuel and heat; remove any one and the fire goes out."
          }
        , { topic = Safety
          , prompt = { am = "የተቀጣጣይ ባህሪ ያላቸው ነገሮች በስንት ዓይነት መልክ ሊገኙ ይችላሉ?", en = "In how many forms can flammable materials be found?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በሁለት", en = "Two" }
                        , { am = "በአራት", en = "Four" }
                        ]
                    , correct = { am = "በሦስት", en = "Three" }
                    , after =
                        [ { am = "በአንድ", en = "One" }
                        ]
                    }
          , explanation = "Flammable materials exist as solids, liquids or gases, which is also why fires are classed by fuel type."
          }
        , { topic = Safety
          , prompt = { am = "የተቀጣጠለን እሳት ለማጥፋት የምንጠቀምበት ዘዴ?", en = "What method do we use to put out a fire?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በማፈን", en = "Smothering" }
                        , { am = "በማቀዝቀዝ", en = "Cooling" }
                        , { am = "በማስራብ", en = "Starving (removing fuel)" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Smothering removes oxygen, cooling removes heat and starving removes fuel; each breaks the fire triangle, so all three work."
          }
        , { topic = Safety
          , prompt = { am = "ከፈሳሽ ነገሮችና በቤንዚን ምክንያት የተፈጠረውን እሳት ለማጥፋት የምንጠቀመው በምንድን ነው?", en = "What do we use to put out a fire caused by liquids and petrol?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ግፊት ያለው ውሃ", en = "Pressurised water" }
                        , { am = "በፎም", en = "Foam" }
                        , { am = "ድራይፓውደር", en = "Dry powder" }
                        ]
                    , correct = { am = "በፎም በካርቦን ዳይኦክሳይድና ግፊት ባለው ውሃ", en = "Foam, carbon dioxide and pressurised water" }
                    , after =
                        []
                    }
          , explanation = "Liquid fuel fires are fought by smothering the surface, which foam and carbon dioxide do by cutting off oxygen."
          }
        , { topic = Safety
          , prompt = { am = "ፎም፣ ግፊት ያለው ውሃና ካርቦንዳይ ኦክሳይድ የማጥፊያ መሳሪያዎች አገልግሎት የሚሰጡት በሁለተኛ ደረጃ ምደብ ሲሆን የቃጠሎ ዓይነትም?", en = "Foam, pressurised water and carbon dioxide extinguishers serve the second fire class; what type of burning is it?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለጠጣር", en = "Solids" }
                        ]
                    , correct = { am = "ለፈሳሽ", en = "Liquids" }
                    , after =
                        [ { am = "ለጋዝ", en = "Gases" }
                        , { am = "ለብረት ንጥረ ነገር", en = "Metals" }
                        ]
                    }
          , explanation = "The second fire class (class B) covers burning liquids such as petrol and oil."
          }
        , { topic = Safety
          , prompt = { am = "በኤሌክትሪክና በጋዝ ምክንያት የሚነሳውን እሳት ለማጥፋት የምንጠቀምበት መሳሪያ?", en = "Which extinguisher is used for fires caused by electricity and gas?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ካርቦንዳይ ኦክሳይድ", en = "Carbon dioxide" }
                        , { am = "ድራይፓውደር", en = "Dry powder" }
                        ]
                    , correct = { am = "ድራይፓውደርና ካርቦንዳይ ኦክሳይድ", en = "Dry powder and carbon dioxide" }
                    , after =
                        [ { am = "ፎም", en = "Foam" }
                        ]
                    }
          , explanation = "Dry powder and carbon dioxide do not conduct electricity and smother gas flames, whereas foam is water-based and conducts."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪውን የሞተር ዘይት መጠን ለመለካት የምንጠቀምበት መለኪያ", en = "The gauge used to measure a vehicle's engine oil level" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ዲፕስቲክ ወይም ሊቤሎ", en = "Dipstick (libelo)" }
                    , after =
                        [ { am = "ሀይድሮ ሜትር", en = "Hydrometer" }
                        , { am = "ቮልት ሜትር", en = "Voltmeter" }
                        , { am = "ቴስተር", en = "Tester" }
                        ]
                    }
          , explanation = "The dipstick reaches into the oil sump and its MIN and MAX marks show whether the oil level is correct; a hydrometer measures battery acid instead."
          }
        , { topic = Vehicle
          , prompt = { am = "በራዲያተርና ኤክስፖንሽን ታንከር ውስጥ የምንጨምረው ኬሚካል", en = "The chemical we add to the radiator and expansion tank" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "አንቲረስት ወይም ፀረ ዝገት", en = "Anti-rust (coolant additive)" }
                    , after =
                        [ { am = "የባትሪ አሲድ", en = "Battery acid" }
                        , { am = "የሞተር ዘይት", en = "Engine oil" }
                        , { am = "የባትሪ ውሀ", en = "Battery water" }
                        ]
                    }
          , explanation = "Anti-rust coolant additive protects the radiator and engine water passages from corrosion and scale."
          }
        , { topic = Vehicle
          , prompt = { am = "የአንድ ተሽከርካሪ የሞተር ዘይት ትክክለኛ ለማወቅ ተሽከርካሪው መቆም ያለበት።", en = "To check a vehicle's engine oil correctly, the vehicle must be parked on" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቁልቁለት ቦታ", en = "A downhill slope" }
                        , { am = "ዳገት ቦታ", en = "An uphill slope" }
                        ]
                    , correct = { am = "ቀጥተኛ ቦታ", en = "Level ground" }
                    , after =
                        [ { am = "ጉድጓድ ቦታ", en = "A pothole" }
                        ]
                    }
          , explanation = "On a slope the oil pools to one end of the sump, so the dipstick only reads true when the vehicle stands level."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ የጎማ ጥርስ ያላለቀ ከሆነ", en = "If a vehicle's tyre tread is not worn out" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "መሬትን ቆንጥጦ በመያዝ በቀላሉ መሪን ለማንቀሳቀስ ይረዳል", en = "It grips the road and makes steering easier" }
                        , { am = "ጭቃማ በሆኑ ቦታዎች በቀላሉ በጭቃ አይያዙም", en = "It does not get stuck easily in muddy places" }
                        , { am = "አሸዋማና ኮረኮንቻማ በሆኑ ቦታዎች በቀላሉ ለመሽከርከር አመቺ ነው", en = "It makes driving easier on sandy and gravel roads" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Deep tread channels away water and mud and bites into loose surfaces, giving grip and control on every kind of road."
          }
        , { topic = SafeDriving
          , prompt = { am = "ለማሽከርከር ስንዘጋጀ የጎንና የኀላ መመልከቻ መስታወት /ስፖኪዮ /ማስተካከል ለምን አስፈለገ።", en = "Why should the side and rear-view mirrors be adjusted when preparing to drive?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ከኃላ እና ከጎን ተሽከርካሪ መኖራቸው ለማየት", en = "To see whether there are vehicles behind and beside" }
                        , { am = "የምንጠቀመውን ተሽከርካሪ አካል እና ጭነት የጫኔ ከሆነ ለመቆጣጠር", en = "To keep an eye on our own vehicle's body and its load" }
                        , { am = "ዳገታማና ተራራራማ በሆኑ ቦታዎች በቀላሉ ለመሽከርከር አመቺ ነው", en = "It makes driving easier in hilly and mountainous areas" }
                        ]
                    , correct = { am = "ከኃላ ያሉ ተሽከርካሪዎችን ለማስቀደም፣ ለመቆጣጠር እና ለማሣለፍ ለማየት", en = "To see vehicles behind so we can let them pass, monitor them and overtake safely" }
                    , after =
                        []
                    }
          , explanation = "Properly set mirrors show traffic behind and alongside, which you need before giving way to, tracking or overtaking other vehicles."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪውን ቁልቁለት ላይ በማቆምና ማርሽ ዜሮ ላይ በማድረግ የትኛውን ተሽከርካሪውን ክፍል ለመፈተሽ ይረዳል።", en = "Stopping the vehicle on a downhill slope with the gear in neutral helps check which part?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሪሲዮን በትክክል መስራቱን", en = "That the clutch works properly" }
                        , { am = "መሪ በትክክል መስራቱን", en = "That the steering works properly" }
                        ]
                    , correct = { am = "የእጅ ፍሬን በትክክል መስራቱን ለማወቅ", en = "That the handbrake works properly" }
                    , after =
                        [ { am = "ሞተሩን ለማስነሳት ይረዳል", en = "It helps start the engine" }
                        ]
                    }
          , explanation = "In neutral nothing but the handbrake holds the vehicle on the slope, so if it does not roll the handbrake is working."
          }
        , { topic = TrafficRules
          , prompt = { am = "አንድ ተሽከርካሪ አቅጣጫውን ከመለወጡ ወይም ከመታጠፉ በፊት ሊያደርገው የሚገባው።", en = "What a driver should do before changing direction or turning." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ምልክቶችን ሣይጠቀም ወደፈለገበት መሄድ", en = "Go wherever they want without signalling" }
                        ]
                    , correct = { am = "ማስጠንቀቂያ ምልክት በፍሬቻና በእጅ ምልክት ማሳየት", en = "Give a warning with the indicator and hand signals" }
                    , after =
                        [ { am = "የትራፊኩን ሁኔታ አለመመልከት", en = "Not look at the traffic situation" }
                        , { am = "በፈለጉት ረድፍ ወደ ፈለጉበት መሄድ", en = "Go wherever they want from any lane" }
                        ]
                    }
          , explanation = "Signalling with the indicator or by hand warns other road users of the turn so they can adjust in time."
          }
        , { topic = SafeDriving
          , prompt = { am = "ተሽከርካሪን በቁልቁለት መንገድ ላይ በምናሽከረክርበት ጊዜ ምን ማድረግ አለብን።", en = "What must we do when driving down a slope?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የተሽከርካሪን ፍጥነት መቀነስና ከባድ ማርሽ ማስገባት", en = "Reduce speed and engage a low (heavy) gear" }
                        , { am = "ዳገት ለሚወጡ ተሽከርካሪዎች ቅድሚያ መስጠት", en = "Give way to vehicles climbing uphill" }
                        , { am = "የመንገዱን ስፋትና ባህሪ መገንዘብ", en = "Be aware of the road's width and character" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "On a descent a low gear and lower speed let the engine help brake, uphill traffic has priority, and judging the road's width prevents meeting trouble on narrow sections."
          }
        , { topic = SafeDriving
          , prompt = { am = "አሽከርካሪው ተሽከርካሪውን ከማቆሙ በፊት ምን ማድረግ አለበት", en = "What must a driver do before stopping the vehicle?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ምልክቶችን በበቂ ርቀት ላይ ማሳየት", en = "Signal from a sufficient distance" }
                        , { am = "ተሽከርካሪውን ፍጥነት ከቀላል ወደ ከባድ ማርሽ መለወጥ", en = "Shift down from a high gear to a low gear" }
                        , { am = "የሌሎችን እንቅስቃሴ በስፖኪዮ መመልከት", en = "Check other traffic in the mirrors" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Before stopping, check the mirrors, signal early and shift down as speed falls so following traffic is warned and the vehicle slows under control."
          }
        , { topic = Parking
          , prompt = { am = "አንድ አሽከርካሪ የተሽከርካሪውን ፊት ወደ ዳገታማ ስፍራ በሚያቆምበት ጊዜ አሽከርካሪው ማድረግ ያለበት", en = "What a driver must do when parking with the vehicle facing uphill" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የኋላ ማርሽ ያስገባል", en = "Engage reverse gear" }
                        ]
                    , correct = { am = "የእጅ ፍሬን በመያዝ እና 1ኛ ማርሽ ማስገባት እና መሪውን ወደ መንገድ ጠረዝ መጠምዘዝ", en = "Apply the handbrake, engage 1st gear and turn the wheel toward the road edge" }
                    , after =
                        [ { am = "ማርሹን ዜሮ በማድረግ የእጅ ፍሬን ይይዛል", en = "Put the gear in neutral and apply the handbrake" }
                        , { am = "መሪውን ቀጥ ማድረግ አለበት", en = "Keep the steering straight" }
                        ]
                    }
          , explanation = "Facing uphill, first gear stops the vehicle rolling back if the handbrake slips, and turning the wheels toward the edge means any roll ends against the kerb rather than into traffic."
          }
        , { topic = Vehicle
          , prompt = { am = "በተለያየ ዘዴ ነዳጅና አየር ወደ ሲሊንደር አስገብቶ አምቆና አቃጥሎ ሃይል የሚፈጥር መሳሪያ የትኛው ነው", en = "Which device draws fuel and air into the cylinder, compresses and burns them to produce power?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ኢንጅን ወይም ሞተር", en = "Engine (motor)" }
                    , after =
                        [ { am = "ሲሊንደር", en = "Cylinder" }
                        , { am = "ካርቡሬተር", en = "Carburettor" }
                        , { am = "ኢንጀክሽን ፓምፕ", en = "Injection pump" }
                        ]
                    }
          , explanation = "The engine is the whole unit that takes in fuel and air, compresses and ignites them, and turns the combustion into power; the cylinder, carburettor and injection pump are only parts of that process."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪዎች ጎማ ክፍል አገልግሎት ጊዜያቸው የሚያጥርበት ምክንያት", en = "Why does a vehicle's tyre wear out sooner?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የጎማ ንፋስ ከመጠን በላይ ሲሆን የዳርና ዳር ጠርዝ እንዲያልቅ ያደርጋል", en = "Over-inflation wears out both outer edges" }
                        ]
                    , correct = { am = "የጎማ ንፋስ ከመጠን በታች ሲሆን የዳርና ዳር ጠርዝ እንዲያልቅ ያደርጋል", en = "Under-inflation wears out both outer edges" }
                    , after =
                        []
                    }
          , explanation = "An under-inflated tyre sags in the middle so its weight rides on the shoulders, wearing both edges; over-inflation does the opposite and wears the centre."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ በቻርጂንግ ሲይስተም ውስጥ የማይካተተው", en = "Which of the following is not part of the charging system?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ዲናሞ", en = "Dynamo" }
                        ]
                    , correct = { am = "ዲስትሪቢዩተር", en = "Distributor" }
                    , after =
                        [ { am = "ሬጉሌተር", en = "Regulator" }
                        , { am = "ባትሪ", en = "Battery" }
                        ]
                    }
          , explanation = "The charging system is the dynamo/alternator, the voltage regulator and the battery it charges; the distributor belongs to the ignition system, sending spark to the plugs."
          }
        , { topic = Vehicle
          , prompt = { am = "ዘይት ወደ ማቀጣጠያ ክፍል እንዳይገባ የሚከላከል", en = "What stops oil from entering the combustion chamber?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኮምፕሬሽን ሪንግ", en = "Compression ring" }
                        , { am = "ላይነር", en = "Liner" }
                        , { am = "ኤግዞስት ቫልቭ", en = "Exhaust valve" }
                        ]
                    , correct = { am = "ኦይል ሪንግ", en = "Oil ring" }
                    , after =
                        []
                    }
          , explanation = "The oil control ring on the piston scrapes excess oil off the cylinder wall back to the sump so it does not get into the combustion chamber and burn."
          }
        , { topic = Vehicle
          , prompt = { am = "በተሽከርካሪ የኤሌክትሪክ ሲስተሞች ውስጥ ሞተርን ለማስነሳት የሚያገለግል መሳሪያ የትኛው ነው", en = "In a vehicle's electrical system, which device is used to start the engine?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቁልፍ", en = "Key" }
                        , { am = "ባትሪ", en = "Battery" }
                        ]
                    , correct = { am = "ሞተሪኖ", en = "Starter motor" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "The starter motor (ሞተሪኖ) uses battery current to crank the engine until it fires; the key only switches it on and the battery only supplies the power."
          }
        , { topic = Vehicle
          , prompt = { am = "በሃይል አስተላላፊ ክፍሎች ውስጥ የማይካተተው የትኛው ነው", en = "Which is not part of the power transmission system?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ትራንስሚሲዮን", en = "Transmission" }
                        , { am = "ዲፈረንሺያል", en = "Differential" }
                        , { am = "ካምቢዮ", en = "Gearbox" }
                        ]
                    , correct = { am = "ኢንጂን ወይም ሞተር", en = "Engine (motor)" }
                    , after =
                        []
                    }
          , explanation = "The engine produces the power; the transmission parts (gearbox, differential, shafts) only carry that power to the wheels."
          }
        , { topic = Vehicle
          , prompt = { am = "በማስገባት ምት ጊዜ አየርን ብቻ የሚያስገበው የሞተር ዓይነት ምን ይባላል?", en = "Which type of engine draws in only air on the intake stroke?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ተርባይን ሞተር", en = "Turbine engine" }
                        , { am = "የቤንዚን ሞተር", en = "Petrol engine" }
                        ]
                    , correct = { am = "የናፍጣ ሞተር", en = "Diesel engine" }
                    , after =
                        [ { am = "ባለጋዝ ሞተር", en = "Gas engine" }
                        ]
                    }
          , explanation = "A diesel engine takes in only air, compresses it until it is very hot, and then injects fuel which ignites from that heat; a petrol engine takes in an air-fuel mixture."
          }
        , { topic = Vehicle
          , prompt = { am = "የኤሌክትሪክ ሃይልን በማመንጨት በማባዛትና በማስተላለፍ በሲሊንደር ውስጥ እሳት እንዲፈጠርና ብሎም ሃይል እንዲያገኝ የሚያግዝ ዘዴ ምን በመባል ይታወቃል?", en = "What is the system that generates, multiplies and delivers electric power to create a spark in the cylinder so the engine produces power?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፊዩል ሲስተም", en = "Fuel system" }
                        ]
                    , correct = { am = "ኢግኒሽን ሲስተም", en = "Ignition system" }
                    , after =
                        [ { am = "ኩሊንግ ሲስተም", en = "Cooling system" }
                        ]
                    }
          , explanation = "The ignition system (coil, distributor, spark plugs) steps battery voltage up and delivers it as a spark at the right moment to ignite the mixture."
          }
        , { topic = Vehicle
          , prompt = { am = "ለሞተር መደረግ ያለበት ጥንቃቄ ምንድን ነው", en = "What care should be taken for the engine?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሞተር ከመነሳቱ በፊት በቂ ውኃና ተገቢ ውፍረቱን የጠበቀ የሞተር ዘይት መኖሩን ማረጋገጥ", en = "Before starting, check there is enough water and engine oil of the right viscosity" }
                        , { am = "በውሃ የሚቀዘቅዙ ሞተሮች ላይ በቂ ውሃ በራዲየተር ውስጥ መኖሩን ማረጋገጥ", en = "On water-cooled engines, check there is enough water in the radiator" }
                        , { am = "ሞተር እንደተነሳ ነዳጅ እየሰጡ አለማሞቅ", en = "Don't rev the engine to warm it right after starting" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Correct oil and coolant levels prevent wear and overheating, and revving a cold engine strains it before oil has circulated, so all three are proper engine care."
          }
        , { topic = Vehicle
          , prompt = { am = "አንድ አሽከርካሪ መኪና ለማስነሳት መጀመሪያ የሚያርገው ምንድን ነው", en = "What does a driver do first to start a car?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ማርሽ ማስገባት", en = "Engage a gear" }
                        , { am = "ቁልፍ አስገብቶ ማስነሳት", en = "Insert the key and start" }
                        ]
                    , correct = { am = "ማርሽን ዜሮ ላይ ማድረግ", en = "Put the gear in neutral" }
                    , after =
                        [ { am = "ሁሉም ስህተት ነው", en = "All are wrong" }
                        ]
                    }
          , explanation = "The gear must be in neutral before cranking, otherwise the car can lurch forward or backward the moment the engine starts."
          }
        , { topic = Vehicle
          , prompt = { am = "ፍሬን ከሚከተሉት ዘዴዎች በየትኛው ሊሰራ ይችላል?", en = "By which of the following methods can brakes work?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በመካኒካል", en = "Mechanically" }
                        , { am = "በዘይት", en = "Hydraulically (oil)" }
                        , { am = "በአየር", en = "By air" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Brakes can be operated by mechanical linkages (like the handbrake), by hydraulic fluid (most cars) or by compressed air (heavy trucks and buses)."
          }
        , { topic = Vehicle
          , prompt = { am = "በሥራ ላይ የነበረን የተሽከርካሪ ሞተር ለማጥፋት በቅድሚያ መከናወን ያለበት", en = "What should be done first to switch off a running engine?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሪሲዮንና ፍሬን መርገጥ", en = "Press the clutch and brake" }
                        , { am = "ማርሽ ዜሮ ማድረግና የእጅ ፍሬን መያዝ", en = "Put it in neutral and apply the handbrake" }
                        , { am = "ፍሪሲዮንና የእግር ፍሬን መልቀቅ", en = "Release the clutch and foot brake" }
                        ]
                    , correct = { am = "ማስነሻ ቁልፍን ወደ Lock አቅጣጫ ማዞር", en = "Turn the ignition key to Lock" }
                    , after =
                        []
                    }
          , explanation = "The engine is switched off by turning the ignition key back to the Lock position, which cuts the ignition and fuel."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/no-stopping.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "ለአጭር ሆነ ለረጅም ጊዜ ለማቆም የተከለከለ", en = "Stopping for a short or long time is prohibited" }
                    , after =
                        [ { am = "በመዘግየት ለማቆም የተከለከለ", en = "Stopping with delay is prohibited" }
                        , { am = "ለጭነት ተሽከርካሪ የተከለከለ", en = "Prohibited for goods vehicles" }
                        , { am = "የከተማ ክልል ወሰን መጨረሻ", en = "End of built-up area" }
                        ]
                    }
          , explanation = "A blue circle with a red border and a red X means no stopping at all, unlike the single-slash sign which only forbids parking."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/no-motor-vehicles.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለሞተር ብስክሌት የተከለከለ", en = "Prohibited for motorcycles" }
                        , { am = "ከሁለት እግር በላይ ላላቸው የሞተር ተሽከርካሪዎች ማለፍ የተከለከለ", en = "No entry for motor vehicles with more than two wheels" }
                        ]
                    , correct = { am = "ለባለ ሞተር ተሽከርካሪዎች ማለፍ የተከለከለ", en = "No entry for all motor vehicles" }
                    , after =
                        [ { am = "የሞተር ተሽከርካሪዎች መቅደም የተከለከለ ነው", en = "Motor vehicles may not overtake" }
                        ]
                    }
          , explanation = "Showing both a motorcycle and a car on one prohibition sign bans every motorised vehicle from entering."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/road-narrows-both-sides.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ጠባብ ድልድይ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Narrow bridge ahead, drive carefully" }
                        ]
                    , correct = { am = "በሁለቱም አቅጣጫ እየጠበበ የሚሄድ መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Road narrows on both sides ahead, drive carefully" }
                    , after =
                        [ { am = "መንገዱ በስተቀኝ በኩል እየጠበበ ስለሚሄድ ተጠንቅቀህ አሽከርክር", en = "Road narrows on the right, drive carefully" }
                        , { am = "ወደ ግራ በኩል እየጠበበ ስለሚሄድ ተጠንቅቀህ አሽከርክር", en = "Road narrows on the left, drive carefully" }
                        ]
                    }
          , explanation = "Both edge lines bend inward, so the carriageway gets narrower from both sides; slow down and be ready to let oncoming traffic through."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/fuel-station.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ነዳጅ መቅዳት የተከለከለ", en = "Refuelling prohibited" }
                        , { am = "ነዳጅ ጣቢያ አካባቢ ማቆም የተከለከለ", en = "No stopping near the fuel station" }
                        ]
                    , correct = { am = "የነዳጅ ማደያ ጣቢያ", en = "Fuel station" }
                    , after =
                        [ { am = "በነዳጅ ጣቢያ አካባቢ ማለፍ የተከለከለ", en = "No passing near the fuel station" }
                        ]
                    }
          , explanation = "Blue square signs are information signs, and the fuel pump symbol tells you a filling station is ahead."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/no-entry.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለሞተር ብስክሌት የተከለከለ", en = "Prohibited for motorcycles" }
                        , { am = "ከሁለት እግር በላይ ላላቸው የሞተር ተሽከርካሪዎች ማለፍ የተከለከለ", en = "No entry for motor vehicles with more than two wheels" }
                        , { am = "ለባለ ሞተር ተሽከርካሪዎች ማለፍ የተከለከለ", en = "No entry for all motor vehicles" }
                        ]
                    , correct = { am = "በእጅ ለሚገፉትም ጭምር ለማንኛውም ተሽከርካሪ ከአንድ አቅጣጫ የተዘጋ መንገድ", en = "Road closed from this direction to every vehicle, even hand-pushed ones" }
                    , after =
                        []
                    }
          , explanation = "The red circle with a white bar is 'no entry': the road is closed to all vehicles from this direction, usually because it is one-way the other way."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/no-left-turn.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "በስተግራ በኩል ወደኋላ ዞሮ መመለስ የተከለከለ ነው", en = "U-turn to the left is prohibited" }
                        ]
                    , correct = { am = "ወደግራ መታጠፍ የተከለከለ ነው", en = "Turning left is prohibited" }
                    , after =
                        [ { am = "ለባለ ሞተር ተሽከርካሪዎች ማለፍ የተከለከለ", en = "No entry for all motor vehicles" }
                        , { am = "በእጅ ለሚገፉትም ጭምር ለማንኛውም ተሽከርካሪ ከአንድ አቅጣጫ የተዘጋ መንገድ", en = "Road closed from this direction to every vehicle, even hand-pushed ones" }
                        ]
                    }
          , explanation = "A red slash across a left-turn arrow forbids turning left at the next junction; a U-turn ban shows a hooked arrow instead."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/road-works.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለአጭር ጊዜ የተዘጋ መንገድ", en = "Road closed for a short time" }
                        , { am = "መንገዱ እየተጠገነ ስለሆነ ማለፍ የተከለከለ", en = "Road under repair, passing prohibited" }
                        ]
                    , correct = { am = "መንገዱን የሚጠግኑ ሰራተኞች ስላሉ ፍጥነትህን በመቀነስ ተጠንቅቀህ", en = "Workers are repairing the road, slow down and take care" }
                    , after =
                        []
                    }
          , explanation = "The worker-with-shovel triangle warns of road works ahead: the road is open but people and machinery may be on it, so slow down."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የመገንዘብ ባህሪ የሚያጠቃልላቸው", en = "What does cognitive (perceptive) behaviour include?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "መረዳትን", en = "Understanding" }
                        , { am = "ማሰብን", en = "Thinking" }
                        , { am = "ምክንያት መስጠትን", en = "Reasoning" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Cognitive behaviour is the mental side of driving: understanding what you see, thinking about it and reasoning out a decision."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ጥሩ ስሜታዊ የቅንነት ባህሪ ያለው አሽከርካሪ የሚያሳየው ባህሪ የቱ ነው", en = "Which behaviour does a driver with good emotional sincerity show?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሌሎች የመንገድ ተጠቃሚዎች ሊሰሩት የሚችሉትን ስህተት ማሰብ", en = "Anticipating mistakes other road users might make" }
                        , { am = "ራስን ውድድር ውስጥ ማስገባት", en = "Putting yourself into competition" }
                        , { am = "ሌሎችን የማውገዝና የቁጣ ስሜት ያለማንጸባረቅ", en = "Not condemning others or showing anger" }
                        ]
                    , correct = { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                    , after =
                        []
                    }
          , explanation = "An emotionally mature driver expects others to make mistakes and stays calm without blaming them, rather than turning driving into a race."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የአእምሮአዊ ብቃት ማነስ መገለጫ የሆነው የቱ ነው", en = "Which is a sign of poor mental fitness?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሰራናቸውን ስህተት ማስታወስ", en = "Remembering the mistakes we made" }
                        , { am = "የማሽከርከር እንቅስቃሴ ስሜታችንና ሃሳባችንን በሚገባ ማወቅ", en = "Knowing our driving actions, feelings and thoughts well" }
                        ]
                    , correct = { am = "መንገዱ በሚፈቅደው የፍጥነት ልክ መሠረት ማሽከርከር ኋላቀርነት እንደሆነ ማሰብ", en = "Thinking that driving at the permitted speed is backward" }
                    , after =
                        [ { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "Seeing the speed limit as old-fashioned is a thinking error that leads to risk-taking; learning from mistakes and knowing your own state are signs of good mental fitness."
          }
        , { topic = SafeDriving
          , prompt = { am = "አሽከርካሪዎች አደጋ እንዳይፈጠር ሊያደርጉ የሚገባቸው ጥንቃቄ", en = "What precautions should drivers take to prevent accidents?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍጥነታቸውን መቀነስ", en = "Reduce their speed" }
                        , { am = "የተሽከርካሪውን ቴክኒካዊ ብቃትና አቋም ማወቅ", en = "Know the vehicle's technical condition" }
                        , { am = "የመንገዱን አጠቃላይ ሁኔታ መረዳት", en = "Understand the overall road conditions" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Crashes come from the driver, the vehicle and the road, so a safe driver controls speed, knows the vehicle's condition and reads the road."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ሞገደኛ አሽከርካሪ ከሚያሳያቸው አላስፈላጊ ባህሪያት ራስን ለማራቅና አደጋን ተከላክሎ ለማሽከርከር ማድረግ የሚገባን የቱ ነው", en = "What should we do to avoid the bad habits of aggressive drivers and drive defensively?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሊያዘገይ የሚያስችል ጉዳይ ካለ በቅድሚያ በስልክ ማሳወቅ", en = "If something may delay you, let people know by phone in advance" }
                        , { am = "አዝናኝና ለስላሳ ሙዚቃዎችን ተሽከርካሪው ውስጥ ድምጹን ዝቅ አድርጎ መክፈት", en = "Play relaxing soft music at low volume in the car" }
                        , { am = "ወደሚፈልጉበት ቦታ በሰዓቱ ለመድረስ በቂ ጊዜ መመደብ", en = "Allow enough time to arrive on time" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Aggressive driving usually comes from stress and hurry, so removing time pressure and keeping yourself calm all help prevent it."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ከማሽከርከር ባህሪ ስነ-ባህሪያት ዘርፎች ውስጥ አሉታዊ ህሊናዊ አስተሳሰብና አደገኛ የሆነ ባህሪ የትኛው ነው", en = "Among driving behaviour traits, which is a negative, dangerous mindset?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቀድሞ መገመት", en = "Anticipating ahead" }
                        ]
                    , correct = { am = "መቀደምን እንደ ሽንፈት መቁጠር", en = "Treating being overtaken as a defeat" }
                    , after =
                        [ { am = "ለጥሩ ባህሪ ራስን ማስገዛት", en = "Committing yourself to good behaviour" }
                        ]
                    }
          , explanation = "Seeing being overtaken as losing turns driving into a contest and leads to racing and risky overtakes; anticipation and self-discipline are positive traits."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ሞገደኛ አሽከርካሪ ሲያጋጥምዎት ማድረግ ያለብዎት", en = "What should you do when you encounter an aggressive driver?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፉክክር ውስጥ መግባት", en = "Compete with them" }
                        , { am = "የዓይን ለዓይን ግንኙነት ማድረግ", en = "Make eye contact" }
                        ]
                    , correct = { am = "ሁኔታውን ለህግ አስከባሪዎች ማሳወቅ", en = "Report it to law enforcement" }
                    , after =
                        [ { am = "መልስ አልተሰጠም", en = "Answer not given" }
                        ]
                    }
          , explanation = "Competing or making eye contact can escalate the confrontation; keep your distance and let the police deal with the dangerous driver."
          }
        , { topic = SafeDriving
          , prompt = { am = "በአንዳድ ላይ ተጽእኖ የሚያደርጉ የተፈጥሮ ህጎች የሚባሉት የትኞቹ ናቸው", en = "Which natural laws affect driving?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የመሬት ስበት", en = "Gravity" }
                        , { am = "ኢነርጂ", en = "Energy" }
                        , { am = "መሞንተም", en = "Momentum" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Gravity changes your speed on hills, kinetic energy grows with the square of speed, and momentum keeps a moving vehicle going, so all three govern how a car stops and handles."
          }
        , { topic = Vehicle
          , prompt = { am = "ማንኛውም የተሽከርካሪ ሞተር በተለይ ጠዋት ጠዋት በቁልፍ ስናስነሳ ሞተሩን ለ15 ደቂቃ በሚኒሞ ማስራት ለምን አስፈለገ?", en = "Why idle the engine for 15 minutes after starting it, especially in the morning?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የተሽከርካሪውን ሞተር ውስጣዊ ችግሩን ለመገንዘብ ወይም ለማወቅ", en = "To notice or detect internal engine problems" }
                        , { am = "በሞተሩ ውስጥ ያለው የሞተር ዘይት በየሲስተሙ እንዲዘዋወር ለማድረግ", en = "To let engine oil circulate through the system" }
                        , { am = "በራዲያተሩ ውስጥ ያለው ቀዝቃዛ ውሃ መካከለኛ ሙቀት እንዲደርስ", en = "To let the cold water in the radiator reach normal temperature" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "A short warm-up lets oil reach all moving parts, brings the coolant up to working temperature and gives you a chance to hear any abnormal noise before driving off."
          }
        , { topic = Vehicle
          , prompt = { am = "ባለአውቶማቲክ ተሽከርካሪዎችን ከቆሙበት በማስነሳትና ፍጥነታቸውንም ከፍተኛ በሆነ ፍጥነት እንደናሽከረክር የምንጠቀምበት የማርሽ አቅጣጫ የትኛው ነው", en = "In an automatic vehicle, which selector position is used to move off and drive at higher speeds?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "በ D አቅጣጫ", en = "D" }
                    , after =
                        [ { am = "በ L አቅጣጫ", en = "L" }
                        , { am = "በ P አቅጣጫ", en = "P" }
                        , { am = "በ N አቅጣጫ", en = "N" }
                        ]
                    }
          , explanation = "D (Drive) lets the gearbox change up through all forward gears automatically; L holds low gears, P locks the transmission and N is neutral."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪው ሞተር ከመጠን በላይ የሚሞቀው በምን ምክንያት ነው", en = "What makes a vehicle's engine overheat?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በቂ ውሃ በራዲያተር ውስጥ አለመኖር", en = "Not enough water in the radiator" }
                        , { am = "የሞተር ዘይት መጠን መቀነስ", en = "Low engine oil" }
                        , { am = "የራዲያተር ክዳን በአግባቡ አለመከደን", en = "Radiator cap not closed properly" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Coolant carries heat away and oil reduces friction heat; a loose radiator cap lets the system lose pressure and coolant, so any of these leads to overheating."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ከአሽከርካሪ ባህሪ ስነ-ባህሪያዊ ዘርፎች ውስጥ ስሜታዊ ኃላፊነት ያለው አሽከርካሪ የሚያሳየው", en = "Among driver behaviour traits, what does an emotionally responsible driver show?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ተግባር ሃሳብና እንቅስቃሴ ስነ-ምግባራዊና ሃይማኖታዊ አስተሳሰቦችን መጠቀም", en = "Applies ethical and religious values in actions, thoughts and movements" }
                        , { am = "በሌሎች ላይ አደጋንና ጉዳት ላለመፍጠር መጠንቀቅ", en = "Takes care not to cause danger or harm to others" }
                        , { am = "በመንገድ ላይ ለሚጠቀሙ ሰዎች ግብ አቅድና እንቅስቃሴ ስኬታማ እንዲሆን በቅንነት መተባበር", en = "Sincerely cooperates so other road users' plans and movements succeed" }
                        ]
                    , correct = { am = "ሁሉም መልስ ናቸው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Emotional responsibility means letting values guide your driving, protecting others from harm and cooperating with other road users."
          }
        , { topic = Vehicle
          , prompt = { am = "ፍሬን በትክክል እንዳይሰራ ምክንያት የሚሆነው በየትኛው ነው", en = "Which causes the brakes not to work properly?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የፍሬን ድራም መበላት", en = "Worn brake drum" }
                        , { am = "የፍሪሲዮን ሸራ መበላት", en = "Worn friction lining" }
                        , { am = "በዘይት መስመር ውስጥ አየር መግባት", en = "Air in the brake fluid line" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Worn drums and linings reduce friction, and air in the hydraulic line compresses so the pedal goes soft; each one weakens braking."
          }
        , { topic = SafeDriving
          , prompt = { am = "በምሽት ስናሽከረክር ልንከተላቸው የሚገቡ", en = "What should we follow when driving at night?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የግንባር መብራቶች የሌሎችን አይታ እንዳይከለክል መጠንቀቅ", en = "Make sure headlights don't dazzle others" }
                        , { am = "መንገድ ከመጀመራችን በፊት ንቁ መሆናችንን ማረጋገጥ", en = "Make sure we are alert before setting off" }
                        , { am = "ድካም ከተሰማህ እረፍት መውሰድ ያስፈልጋል", en = "Take a rest if you feel tired" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "At night visibility is poor and fatigue sets in, so avoid dazzling others, start out alert and stop to rest when tired."
          }
        , { topic = SafeDriving
          , prompt = { am = "በዝናባማና ጭጋጋማ የአየር ሁኔታ ለማሽከርከር ቢያስፈልግ የምንጠቀመው መብራት", en = "Which lights should be used when driving in rain and fog?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ረጅሙን መብራት", en = "High beam" }
                        , { am = "የፍሬን መብራት", en = "Brake light" }
                        ]
                    , correct = { am = "የጭጋግ መብራትና አጭር መብራት", en = "Fog lights and low beam" }
                    , after =
                        [ { am = "የሠሌዳ መብራት", en = "Number plate light" }
                        ]
                    }
          , explanation = "High beam reflects off rain and fog droplets and blinds you, so use low beam with fog lights, which shine low under the fog."
          }
        , { topic = TrafficRules
          , prompt = { am = "አንድ አሽከርካሪ ያለ እረፍት እንዲያሽከረክር የሚፈቀደው ለስንት ሰዓት ነው", en = "For how many hours may a driver drive without a rest?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለ7 ሰዓት", en = "7 hours" }
                        , { am = "ለ6 ሰዓት", en = "6 hours" }
                        , { am = "ለ5 ሰዓት", en = "5 hours" }
                        ]
                    , correct = { am = "ለ4 ሰዓት", en = "4 hours" }
                    , after =
                        []
                    }
          , explanation = "Fatigue builds steadily behind the wheel, so the rule limits continuous driving to 4 hours before a mandatory rest break."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የአሽከርካሪዎች አላስፈላጊ ባህሪያት የሚባሉት", en = "What are called undesirable driver behaviours?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሞገደኛነት", en = "Aggressiveness" }
                        , { am = "ራስ ወዳድነት", en = "Selfishness" }
                        , { am = "አለመረጋጋት", en = "Restlessness" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Aggression, selfishness and emotional instability all push drivers into risky decisions and conflict with other road users."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ትዕግሥት ያጣ አሽከርካሪ መገለጫው የቱ ነው", en = "Which is a sign of an impatient driver?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቀይ የትራፊክ ማስተላለፊያ መብራት መጣስ", en = "Running a red traffic light" }
                        , { am = "መሽሎክሎክ", en = "Weaving through traffic" }
                        , { am = "ተሽከርካሪን ተጠግቶ ማሽከርከር", en = "Tailgating" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Running red lights, weaving between lanes and tailgating are all ways an impatient driver tries to save a few seconds at others' expense."
          }
        , { topic = Vehicle
          , prompt = { am = "በሞተር አካባቢ ሊሰማ የሚችልን ድምጽ የሚቀንስና በካርቡሬተር በኩል የሚመጣን እሳትን አፍኖ የሚያስቀር ክፍል የቱ ነው", en = "Which part reduces noise around the engine and smothers flame coming back through the carburettor?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አቼሬላ / ነዳጅ መስጫ", en = "Accelerator" }
                        ]
                    , correct = { am = "ደብራተር ወይም አየር ማጣሪያ", en = "Air filter" }
                    , after =
                        [ { am = "ሳልቫትዮ/ የነዳጅ ታንከር", en = "Fuel tank" }
                        , { am = "ካርቡሬተር", en = "Carburettor" }
                        ]
                    }
          , explanation = "Besides cleaning intake air, the air filter housing muffles intake noise and acts as a flame arrester if the engine backfires through the carburettor."
          }
        , { topic = Vehicle
          , prompt = { am = "ማለስለሻ ክፍል ጥቅሙ", en = "What is the lubrication system used for?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለማለስለስ ይጠቅማል", en = "To lubricate" }
                        , { am = "ለማቀዝቀዝ ይጠቅማል", en = "To cool" }
                        , { am = "ለማጽዳት ይጠቅማል", en = "To clean" }
                        ]
                    , correct = { am = "ሁሉም መልስ ነው", en = "All of the above" }
                    , after =
                        []
                    }
          , explanation = "Engine oil reduces friction between moving parts, carries heat away from them and washes dirt and metal particles to the filter."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪ መሠረታዊ ክፍል ያልሆነው የቱ ነው", en = "Which is not a main part of a vehicle?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሞተር", en = "Engine" }
                        ]
                    , correct = { am = "ዲናሞ", en = "Dynamo" }
                    , after =
                        [ { am = "ቦዲ", en = "Body" }
                        , { am = "ቻሲስ", en = "Chassis" }
                        ]
                    }
          , explanation = "A vehicle's main sections are the engine, the body and the chassis; the dynamo is just one component of the electrical system."
          }
        , { topic = Vehicle
          , prompt = { am = "የአንድን ተሽከርካሪ የሞተር ሙቀት የምናውቀው", en = "How do we know a vehicle's engine temperature?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በስፒዶ ሜትር", en = "Speedometer" }
                        , { am = "ኦይል ጌጅ", en = "Oil gauge" }
                        ]
                    , correct = { am = "ቴምፕሬቸር ጌጅ", en = "Temperature gauge" }
                    , after =
                        [ { am = "አርፒኤም", en = "RPM gauge" }
                        ]
                    }
          , explanation = "The temperature gauge reads the coolant temperature; the speedometer shows speed, the oil gauge oil pressure and the RPM gauge engine revolutions."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ ትክክል የሆነው የትኛው ነው", en = "Which of the following is correct?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "የሞተርን ዙር ወይም ድምጽ አዳምጦ ማርሽ መቀየር", en = "Change gear by listening to engine revs or sound" }
                    , after =
                        [ { am = "በቁልቁለት መንገድ ላይ እግርን ፍሪሲዮን ፔዳል ላይ አስደግፎ ማሽከርከር", en = "Rest your foot on the clutch pedal going downhill" }
                        , { am = "ፍሪሲዮን ፔዳል በፍጥነት መንጭቆ መልቀቅ", en = "Release the clutch pedal quickly with a jerk" }
                        , { am = "ፍሪሲዮን በመጠኑ ረግጦ ማርሽ ማስገባት", en = "Press the clutch partially and engage gear" }
                        ]
                    }
          , explanation = "Engine speed and sound tell you when the engine needs a higher or lower gear; riding, snapping or half-pressing the clutch wears it and causes jerks or gear grinding."
          }
        , { topic = Vehicle
          , prompt = { am = "ከተሽከርካሪ ሲስተሞች ውስጥ በጣም አስፈላጊው የትኛው ነው", en = "Which vehicle system is the most important?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፊውል ሲስተም", en = "Fuel system" }
                        , { am = "ኤሌክትሪክ ሲስተም", en = "Electrical system" }
                        , { am = "የማለስለሻ ሲስተም", en = "Lubrication system" }
                        ]
                    , correct = { am = "ሁሉም እኩል አስፈላጊ ነው", en = "All are equally important" }
                    , after =
                        []
                    }
          , explanation = "The vehicle only runs when every system works together; a failure in fuel, electrics or lubrication will each stop or damage it."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪን የራዲያተር ውሃ መጠኑን ስንከታተል ውሃው አለመፍሰሱን ማረጋገጥ ይገባል።", en = "When checking the radiator water level, you should also make sure no water is leaking." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A falling coolant level usually means a leak somewhere, and topping up without finding it leads to overheating later."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪውን የሞተር ዘይት መጠን ካነሰ፣ ከወፈረ፣ ከቀጠነና ከቆሸሸ መቀየርና መሙላት ያስፈልጋል።", en = "If the engine oil is low, too thick, too thin or dirty, it must be topped up or changed." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Oil that is low, degraded or dirty can no longer lubricate and cool the engine properly, so it must be topped up or replaced."
          }
        , { topic = Vehicle
          , prompt = { am = "የከባድ ተሽከርካሪዎችን ኤንጂን ብሬክ /ፍሬና ሞተር/ ተሽከርካሪውን ሙሉ በሙሉ ለማቆም ያገለግላል", en = "The engine brake on heavy vehicles is used to bring the vehicle to a complete stop." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "An engine brake only slows the vehicle, mainly on long descents, to spare the service brakes. Stopping fully still needs the foot brake."
          }
        , { topic = Vehicle
          , prompt = { am = "የውሃ ፓምፕ ቤልት /ቺንጋ/ በጣም መላላት ወይም መወጠር የለበትም።", en = "The water pump belt should be neither too loose nor too tight." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A loose belt slips and the pump and alternator under-perform, causing overheating; an over-tight belt wears the pump bearings and belt."
          }
        , { topic = SafeDriving
          , prompt = { am = "አሽከርካሪው ተሽከርካሪውን ሲያሽከረክር ከጎንና በኋላ የሚንቀሳቀሱትን ተሽከርካሪዎች እንቅስቃሴ ለመቆጣጠር የጎን መመልከቻ /ስፖኪዮ/ ይጠቀማል።", en = "While driving, the driver uses the side mirrors to keep track of vehicles moving beside and behind." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Side mirrors cover the areas beside and behind the car that you can't see looking forward, so check them before changing lane or turning."
          }
        , { topic = Safety
          , prompt = { am = "ደረቅ ዱቄት አሸዋ ለሁሉም የእሳት ቃጠሎ ለማጥፊያነት እንጠቀምበታለን?", en = "Can dry powder sand be used to put out every type of fire?" }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "No single agent suits every fire class; each extinguishing agent works on specific fire types, so you choose by what is burning."
          }
        , { topic = Vehicle
          , prompt = { am = "አንድ አሽከርካሪ የተሽከርካሪውን /ጎማ የንፋስ መጠን በየጊዜው ማረጋገጥ አይጠበቅበትም።", en = "A driver does not need to check the tyre pressure regularly." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Wrong tyre pressure causes uneven wear, poor braking and pulling to one side, so pressure should be checked regularly."
          }
        , { topic = Safety
          , prompt = { am = "የተሽከርካሪውን ሞተር በትክክል እየሰራ ከሆነ ፍሬን በአግባቡ አለመስራት ብዙም ለአደጋ አያጋልጥም።", en = "If the engine is running well, brakes that don't work properly are not much of an accident risk." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A healthy engine does nothing to stop the car; faulty brakes are one of the most direct causes of crashes."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪው የሞተር ዘይት መቅጠን /መቆሸሽ/ ሞተሩ ሊነክስ ይችላል?", en = "Can thin or dirty engine oil cause the engine to seize?" }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Thin or dirty oil can't keep a film between moving metal parts, so friction and heat rise until the parts weld together and the engine seizes."
          }
        , { topic = Vehicle
          , prompt = { am = "የተሽከርካሪውን የሞተር ዘይት ማየትና መፈተሽ ሲባል የዘይቱን ውፍረትና ቅጥነት፣ መቆሸሹንና መጠኑን ማረጋገጥ ማለት ነው።", en = "Checking the engine oil means checking its thickness, cleanliness and level." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Oil can fail by running low, thinning, thickening or getting dirty, so a proper check covers level, viscosity and condition."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/customs.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለአጭር ሆነ ለረጅም ጊዜ ለማቆም የተከለከለ", en = "No stopping or parking" }
                        , { am = "በመዘግየት ለማቆም የተከለከለ", en = "No waiting" }
                        , { am = "ለጭነት ተሽከርካሪ የተከለከለ", en = "No goods vehicles" }
                        ]
                    , correct = { am = "ጉምሩክ ስለሆነ ሳይፈተሽ ማለፍ የተከለከለ", en = "Customs: no passing without inspection" }
                    , after =
                        []
                    }
          , explanation = "\"Dogana\" means customs. The red-ringed prohibitory sign tells you not to drive past the customs post without stopping to be checked."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/no-vehicles.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "ለአጭር ሆነ ለረጅም ጊዜ ለማቆም የተከለከለ", en = "No stopping or parking" }
                        , { am = "በመዘግየት ለማቆም የተከለከለ", en = "No waiting" }
                        , { am = "ለጭነት ተሽከርካሪ የተከለከለ", en = "No goods vehicles" }
                        ]
                    , correct = { am = "ማንኛውም ተሽከርካሪ በሞተር፤ በእንስሳት፤ በእጅ የሚገፉትን ጭምር ማለፍ የተከለከለ", en = "No vehicles of any kind, including animal-drawn and hand-pushed ones" }
                    , after =
                        []
                    }
          , explanation = "An empty red ring closes the road to every vehicle, whether motorised, animal-drawn or pushed by hand."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/traffic-signals-ahead.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "መንገዱ ለጊዜው ዝግ ነው", en = "The road is temporarily closed" }
                        ]
                    , correct = { am = "የትራፊክ መብራት ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Traffic lights ahead, drive carefully" }
                    , after =
                        [ { am = "ለጭነት ተሽከርካሪ የተከለከለ", en = "No goods vehicles" }
                        , { am = "ለጊዜው የትራፊክ መብራት አይሰራም", en = "The traffic lights are temporarily out of order" }
                        ]
                    }
          , explanation = "The warning triangle with a signal head warns that traffic lights are coming up, possibly where you wouldn't expect them, so be ready to stop."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/other-danger.svg"
          , answer =
                Choice
                    { before =
                        []
                    , correct = { am = "አደገኛ መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Dangerous road ahead, drive carefully" }
                    , after =
                        [ { am = "ጠባብ ድልድይ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Narrow bridge ahead, drive carefully" }
                        , { am = "ለጭነት ተሽከርካሪ የተከለከለ", en = "No goods vehicles" }
                        , { am = "ለጊዜው የትራፊክ መብራት አይሰራም", en = "The traffic lights are temporarily out of order" }
                        ]
                    }
          , explanation = "The exclamation mark is the general danger sign, used for a hazard that has no specific symbol of its own."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/slippery-road.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "አደገኛ መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Dangerous road ahead, drive carefully" }
                        , { am = "ጠባብ ድልድይ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Narrow bridge ahead, drive carefully" }
                        ]
                    , correct = { am = "የሚያንሸራትት መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Slippery road ahead, drive carefully" }
                    , after =
                        [ { am = "ተሽከርካሪው የተበላሸ ስለሆነ ተጠንቅቀህ አሽከርክር", en = "A vehicle has broken down, drive carefully" }
                        ]
                    }
          , explanation = "The skidding car warns that the surface ahead is slippery, so slow down and avoid sudden braking or steering."
          }
        , { topic = RoadSigns
          , prompt = { am = "የዚህ ምልክት ትርጉም ምንድነው", en = "What does this sign mean?" }
          , figure = Just "/signs/winding-road.svg"
          , answer =
                Choice
                    { before =
                        [ { am = "መጀመሪያ ወደ ቀኝ ቀጥሎ ወደ ግራ ተጠንቅቀህ አሽከርክር", en = "Bend to the right then to the left, drive carefully" }
                        , { am = "መጀመሪያ ወደ ግራ ቀጥሎ ወደ ቀኝ ተጠንቅቀህ አሽከርክር", en = "Bend to the left then to the right, drive carefully" }
                        , { am = "የሚያንሸራትት መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Slippery road ahead, drive carefully" }
                        ]
                    , correct = { am = "ጠመዝማዛ መንገድ ስለሚያጋጥምህ ተጠንቅቀህ አሽከርክር", en = "Winding road ahead, drive carefully" }
                    , after =
                        []
                    }
          , explanation = "A wavy arrow in a warning triangle signals a series of bends ahead, so reduce speed before entering them."
          }
        , { topic = SafeDriving
          , prompt = { am = "አንድን ተሽከርካሪ ረዥም ርቀት ወደ ኋላ ማሽከርከር የሚያስከትለው ችግር የለም።", en = "Reversing a vehicle over a long distance causes no problems." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "When reversing you can't see well and steering is less precise, so reverse only as far as you need to."
          }
        , { topic = TrafficRules
          , prompt = { am = "ተሽከርካሪን በምናስቀድምበት ጊዜ ፈቃደኛ መሆናችንን የምንገልጸው የቀኝ ፍሬቻ በማሳየት ማሳወቅ አለብን።", en = "When letting a vehicle overtake, we show we are willing by switching on the right indicator." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The right indicator tells the driver behind that you are keeping to the right and leaving the left side clear for them to pass."
          }
        , { topic = TrafficRules
          , prompt = { am = "ማንኛውም አሽከርካሪ ከመጋቢ መንገድ ወደ ዋና መንገድ ሲገባ በዋናው መንገድ ውስጥ ላሉ ተሽከርካሪዎች ቅድሚያ መስጠት አለበት።", en = "A driver entering a main road from a feeder road must give way to vehicles on the main road." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Traffic already on the main road has priority, so a driver joining from a side road waits for a safe gap."
          }
        , { topic = TrafficRules
          , prompt = { am = "ማንኛውም አሽከርካሪ ከመጋቢ መንገድ ወደ ዋና መንገድ ሲገባ በዋናው መንገድ ውስጥ ላሉ ተሽከርካሪዎች ቅድሚያ መስጠት የለበትም።", en = "A driver entering a main road from a feeder road does not have to give way to vehicles on the main road." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Vehicles on the main road have priority; anyone joining from a side road must give way to them."
          }
        , { topic = TrafficRules
          , prompt = { am = "ተሽከርካሪን ለመቅደም ቢያስፈልግ መቅደም የሚቻለው በግራ በኩል ነው።", en = "If you need to overtake a vehicle, you may only do so on the left." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Ethiopia drives on the right, so overtaking is done on the left, on the side facing oncoming traffic, where the overtaken driver expects it."
          }
        , { topic = TrafficRules
          , prompt = { am = "ተሽከርካሪን ለመቅደም ቢያስፈልግ መቅደም የሚቻለው በቀኝ በኩል ነው።", en = "If you need to overtake a vehicle, you may do so on the right." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "In right-hand traffic you overtake on the left; passing on the right puts you in the other driver's blind spot."
          }
        , { topic = Vehicle
          , prompt = { am = "የአንድን ተሽከርካሪ ሞተር ለማስነሳት የእጅ ፍሬን መያዝ አስፈላጊ አይደለም።", en = "It is not necessary to apply the handbrake when starting a vehicle's engine." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The handbrake keeps the car from rolling or lurching if it is in gear or on a slope when the engine starts."
          }
        ]
    }
