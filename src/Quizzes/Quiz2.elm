module Quizzes.Quiz2 exposing (quiz)

import Quiz exposing (Answer(..), Quiz, Topic(..))


quiz : Quiz
quiz =
    { id = "quiz-2"
    , title = { am = "ፈተና 2", en = "Quiz 2" }
    , minutes = 100
    , first =
        { topic = DriverBehavior
        , prompt = { am = "ሞገደኛ አሽከርካሪ ላለመሆን መደረግ ከሚገባቸው ክንዋኔዎች ውስጥ የማይካተተው፤", en = "Which is NOT among the actions to take to avoid being an aggressive driver?" }
        , figure = Nothing
        , answer =
            Choice
                { before =
                    [ { am = "ከተቻለ የጉዞን ፕሮግራም በስራ መግቢያና መውጫ ሰዓት ላይ አለማድረግ", en = "If possible, don't schedule trips at rush hour" }
                    , { am = "ሊያዘገይ የሚችል ጉዳይ ካለ በቅድሚያ በስልክ መግለፅ", en = "If something may delay you, let people know by phone in advance" }
                    , { am = "አዝናኝና ለስላሳ ሙዚቃዎችን ድምፅን ዝቅ በማድረግ ማዳመጥ", en = "Listen to pleasant, soft music at low volume" }
                    , { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                    ]
                , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                , after = []
                }
        , explanation = "All three are recommended ways to keep yourself from driving aggressively, so none of them is the exception."
        }
    , rest =
        [ { topic = Safety
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
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Fires in flammable liquids such as petrol and oil are Class B. In the Amharic lettering that is class ለ, which is the third option here."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ሞገደኛ አሽከርካሪ ሲያጋጥም መደረግ ከሚገባቸው ክንዋኔዎች ውስጥ የማይካተተው ተግባር፤", en = "When you meet an aggressive driver, which action is NOT recommended?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ረድፍን ላለመልቀቅ ሲሉ ፉክክር ውስጥ አለመግባት", en = "Don't compete to keep your lane" }
                        , { am = "የዓይን ለዓይን ግንኙነት ያለማድረግ", en = "Avoid eye contact" }
                        , { am = "ሳይበሳጩ ሁኔታዎችን መከታተል", en = "Watch the situation calmly" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "Not competing for your lane, avoiding eye contact and staying calm are all recommended when you meet an aggressive driver, so none of them is the exception."
          }
        , { topic = DriverBehavior
          , prompt = { am = "------ ፍላጎትን፣ አመለካከትን፣ እሴትን መነሳሳትንና ማንኛውንም ግብ ያለመ የሰዎች ድርጊት ያጠቃልላል።", en = "___ includes needs, attitudes, values, motivation, and any goal-directed human action." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የመገንዘብ ባህሪ", en = "Cognitive behavior" }
                        ]
                    , correct = { am = "የስሜት ባህሪ", en = "Affective (emotional) behavior" }
                    , after =
                        [ { am = "የክህሎት ባህሪ", en = "Skill (psychomotor) behavior" }
                        , { am = "ዝግጁነት", en = "Readiness" }
                        , { am = "ስነ-ባህሪ", en = "Behavioral science" }
                        ]
                    }
          , explanation = "Needs, attitudes, values and motivation are matters of feeling, so they belong to affective (emotional) behaviour."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የአልኮል መጠጥ ጠጥቶ የሚያሽከረክር አሽከርካሪ ላይ የማይታየው፤", en = "What is NOT seen in a driver who drives after drinking?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለትራፊክ ህግጋት ግንዛቤ አለመኖር", en = "Lack of awareness of traffic rules" }
                        , { am = "የራስን የአነዳድ ስህተቶች አለመቀበል", en = "Not admitting their own driving mistakes" }
                        , { am = "ለትራፊክ ምልክት ተገዢ አለመሆን", en = "Not obeying traffic signs" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "A driver who has been drinking shows all of these. They lose awareness of the rules, deny their mistakes and ignore signs, so none of them is the exception."
          }
        , { topic = DriverBehavior
          , prompt = { am = "መጠጥ ሊጠጣ ያሰበ አሽከርካሪ ሊከተለው የሚገባ አማራጭ፤", en = "What should a driver who plans to drink do?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በጣም ሳያምሹ ለማሽከርከር መሞከር", en = "Try to drive home before it gets too late" }
                        , { am = "የህዝብ ትራንስፖርት መጠቀም", en = "Use public transport" }
                        , { am = "ብዙ መጠጥ ያልወሰደ ጓደኛዎ አብሮት ካለ እንዲያሽከረክር ማድረግ", en = "Let a friend who hasn't drunk much drive" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    , correct = { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                    , after = []
                    }
          , explanation = "Use public transport or let a companion who has not been drinking drive. Trying to drive home early is still driving after drinking."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ስለ ባህሪ ትክክል የሆነው፤", en = "What is correct about behavior?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አስተሳሰብ ነው", en = "It is a way of thinking" }
                        , { am = "የድርጊት ውጤት ነው", en = "It is the result of action" }
                        , { am = "በቀጥታም ሆነ በተዘዋዋሪ መንገድ ሊቃኝ፣ ሊመዘገብ እና ሊለካ ይችላል", en = "It can be observed, recorded, and measured directly or indirectly" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "Behaviour is a way of thinking, it is the result of action, and it can be observed, recorded and measured, so all three statements are correct."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የማሽከርከር ስነ-ባህሪያዊ ጉዳዮች ውስጥ የማይካተተው፤", en = "Which is NOT one of the behavioral (psychological) aspects of driving?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ዝግጁነት", en = "Readiness" }
                        , { am = "መረጃ የመሰብሰብ ብቃትን ማዳበር", en = "Developing information-gathering ability" }
                        , { am = "መነሳሳት/መነቃቃት", en = "Motivation/arousal" }
                        ]
                    , correct = { am = "ማካፈል", en = "Sharing" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Readiness, gathering information and motivation are among the psychological aspects of driving. Sharing is a communication skill, not one of them."
          }
        , { topic = SafeDriving
          , prompt = { am = "በሰዓት ከ40 ኪ.ሜ እስከ 50 ኪ.ሜ የሚያሽከረክር አሽከርካሪ ከሚከተለው ተሽከርካሪ በ ---- ሜ. መራቅ አለበት።", en = "At 40–50 km/h, a driver must stay ___ m behind the vehicle ahead." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "15", en = "15 m" }
                        ]
                    , correct = { am = "20", en = "20 m" }
                    , after =
                        [ { am = "30", en = "30 m" }
                        , { am = "36", en = "36 m" }
                        , { am = "10", en = "10 m" }
                        ]
                    }
          , explanation = "The following distance taught for 40 to 50 km/h is 20 m."
          }
        , { topic = SafeDriving
          , prompt = { am = "ለአደጋ መንስኤ የማይሆነው፤", en = "Which does NOT cause accidents?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሌሎች የፍሬቻ መብራትን በአግባቡ እንደሚጠቀሙ ማሰብ", en = "Assuming others use turn signals properly" }
                        , { am = "እግረኞች ህግን ያከብራሉ ብሎ እርግጠኛ መሆን", en = "Being sure pedestrians obey the law" }
                        ]
                    , correct = { am = "እግረኞች በእድሜና በፍላጎት እንደሚለያዩ ማሰብ", en = "Keeping in mind that pedestrians differ in age and needs" }
                    , after =
                        [ { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Remembering that pedestrians differ in age and needs makes you more careful. Assuming that other drivers and pedestrians will always follow the rules is what leads to accidents."
          }
        , { topic = TrafficRules
          , prompt = { am = "ከኋላ ተርፎ የሚወጣ ጭነት ከተሽከርካሪ አካል ከ ---- ሜትር መብለጥ የለበትም።", en = "A load sticking out at the rear must not extend more than ___ m beyond the vehicle body." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "2", en = "2 m" }
                    , after =
                        [ { am = "1", en = "1 m" }
                        , { am = "3", en = "3 m" }
                        , { am = "5", en = "5 m" }
                        , { am = "4", en = "4 m" }
                        ]
                    }
          , explanation = "A load may stick out at most 2 m beyond the back of the vehicle."
          }
        , { topic = DriverBehavior
          , prompt = { am = "በትራፊክ እንቅስቃሴ ውስጥ የማያገለግለው፤", en = "Which sense is NOT used in traffic?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "መቅመስ", en = "Taste" }
                    , after =
                        [ { am = "ማሽተት", en = "Smell" }
                        , { am = "ማየት", en = "Sight" }
                        , { am = "መዳሰስ", en = "Touch" }
                        , { am = "መስማት", en = "Hearing" }
                        ]
                    }
          , explanation = "Sight, hearing, touch and even smell, for example a burning smell, help a driver. Taste plays no part in driving."
          }
        , { topic = TrafficRules
          , prompt = { am = "ከከተማ ክልል ውጪ ለመጠምዘዝ ወይም ለማቆም በ---- ሜትር ክልል ከመድረስ በፊት ፍሬቻ ማሳየት ይገባል።", en = "Outside urban areas, you must signal ___ m before turning or stopping." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "15", en = "15 m" }
                        , { am = "20", en = "20 m" }
                        , { am = "30", en = "30 m" }
                        ]
                    , correct = { am = "50", en = "50 m" }
                    , after =
                        [ { am = "10", en = "10 m" }
                        ]
                    }
          , explanation = "Outside towns you must signal at least 50 m before turning or stopping."
          }
        , { topic = Parking
          , prompt = { am = "የመንገዱ ስፋት ከ ---- ሜትር ካልበለጠ በስተቀር ከቆመ ተሽከርካሪ ትይዩ ማቆም የተከለከለ ነው።", en = "Parking alongside a parked vehicle (double parking) is prohibited unless the road is wider than ___ m." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "10", en = "10 m" }
                        ]
                    , correct = { am = "12", en = "12 m" }
                    , after =
                        [ { am = "15", en = "15 m" }
                        , { am = "20", en = "20 m" }
                        , { am = "8", en = "8 m" }
                        ]
                    }
          , explanation = "Stopping beside an already parked vehicle is only allowed where the road is more than 12 m wide."
          }
        , { topic = SafeDriving
          , prompt = { am = "አንድ አሽከርካሪ ረጅም የግምባር መብራት ሲበራበት መውሰድ ያለበት እርምጃ፤", en = "What should a driver do when an oncoming car's high beams are shining at them?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የራሱን የግምባር መብራት አጭር ረጅም በማብራት መልዕክት ማስተላለፍ", en = "Flash their own headlights low/high as a signal" }
                        , { am = "ፍጥነቱን በመቀነስ የቀኝ ጠርዙን መያዝ", en = "Slow down and keep to the right edge" }
                        , { am = "ፍጥነቱን በመቀነስ የራሱን የግምባር መብራት ማጥፋት", en = "Slow down and switch off their own headlights" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "According to the answer key all three are correct responses to being dazzled. Slowing down and keeping to the right edge is the one that keeps you safe."
          }
        , { topic = TrafficRules
          , prompt = { am = "ወደመስቀለኛ መንገድ የቀኝ ረድፉን ይዞ የመጣ አሽከርካሪ፤", en = "A driver approaching an intersection in the right lane:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ወደግራ መታጠፍ አለበት", en = "Must turn left" }
                        ]
                    , correct = { am = "ወደቀኝ መታጠፍ አለበት", en = "Must turn right" }
                    , after =
                        [ { am = "ዞሮ መመለስ ይችላል", en = "May make a U-turn" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The right lane at an intersection is for turning right. Left turns and U-turns are made from the left lane."
          }
        , { topic = Vehicle
          , prompt = { am = "ጐማ የኃይል አስተላላፊ ክፍል ነው።", en = "The tire is part of the power transmission system." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Tyres belong to the running gear along with the wheels. The power transmission system ends at the axles."
          }
        , { topic = TrafficRules
          , prompt = { am = "አዲስ የአሽከርካሪ ብቃት ማረጋገጫ ፈቃድ ለማግኘት ማመልከቻ ውስጥ የማያስፈልገው፤", en = "What is NOT required when applying for a new driver's license?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የትምህርት መረጃ", en = "Education record" }
                        , { am = "የልደት ምስክር ወረቀት ወይም ፓስፖርት", en = "Birth certificate or passport" }
                        , { am = "የቀበሌ የነዋሪነት መታወቂያ", en = "Kebele residence ID" }
                        , { am = "የጤና ምርመራ ውጤት", en = "Medical exam result" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "An education record, a birth certificate or passport, a kebele ID and a medical result are all required, so none of them is the exception."
          }
        , { topic = TrafficRules
          , prompt = { am = "ስለ አዲሱ የአሽከርካሪ ብቃት ማረጋገጫ ፈቃድ ስለየምድቡ ተፈላጊ የዕድሜ መስፈርት ትክክል ያልሆነው፤", en = "Under the new license system, which minimum age by category is NOT correct?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ለአውቶሞቢልና ሞተር ሳይክል ዕድሜ 18", en = "Automobile and motorcycle: 18" }
                        ]
                    , correct = { am = "ለባለ ሦስት እግር ተሽከርካሪ ዕድሜ 18", en = "Three-wheeler: 18" }
                    , after =
                        [ { am = "ለህዝብ አንድ ማመላለሻ ዕድሜ 22", en = "Public 1: 22" }
                        , { am = "ለደረቅ ጭነት አንድ ዕድሜ 22", en = "Dry Cargo 1: 22" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "The answer key marks the three-wheeler entry as the incorrect one. The other ages listed are right."
          }
        , { topic = TrafficRules
          , prompt = { am = "በህዝብ አንድ የአሽከርካሪ ብቃት ማረጋገጫ ፈቃድ ምድብ፤", en = "With a Public 1 license:" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "እስከ 20 መቀመጫ ያለው ተሽከርካሪ ማሽከርከር ይቻላል", en = "You may drive vehicles with up to 20 seats" }
                    , after =
                        [ { am = "እስከ 45 መቀመጫ ያለው ተሽከርካሪ ማሽከርከር ይቻላል", en = "You may drive vehicles with up to 45 seats" }
                        , { am = "ማንኛውንም ተሽከርካሪ ማሽከርከር ይቻላል", en = "You may drive any vehicle" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        , { am = "ሁሉም መልስ ናቸው", en = "All are correct" }
                        ]
                    }
          , explanation = "A Public 1 licence covers passenger vehicles with up to 20 seats."
          }
        , { topic = TrafficRules
          , prompt = { am = "አዲሱ የአሽከርካሪ ብቃት ማረጋገጫ ፈቃድ ፀንቶ የሚቆየው ለሦስት ዓመት ነው።", en = "The new driver's license is valid for three years." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false, so three years is not the validity period."
          }
        , { topic = TrafficRules
          , prompt = { am = "ተሳፋሪዎች የራሳቸውን እቃ ራሳቸው መጫንና ማውረድ አለባቸው።", en = "Passengers must load and unload their own luggage." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false. Handling passengers' luggage is the job of the vehicle's crew."
          }
        , { topic = TrafficRules
          , prompt = { am = "ከባድ ጥፋት ውስጥ የሚካተተው፤", en = "Which counts as a serious offense?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የአሽከርካሪ ብቃት ማረጋገጫ ሳይዙ ማሽከርከር ነው", en = "Driving without a license" }
                        , { am = "የአሽከርካሪ ብቃት ማረጋገጫ የእድሳት ጊዜ አሳልፎ መቅረብ ነው", en = "Presenting the license for renewal after the renewal date" }
                        ]
                    , correct = { am = "የአሽከርካሪ ብቃት ማረጋገጫ ሳያሳድሱ ማሽከርከር ነው", en = "Driving without renewing the license" }
                    , after =
                        [ { am = "ከምድብ ውጪ ማሽከርከር ነው", en = "Driving a vehicle outside your license category" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Driving on a licence that has not been renewed is classed as a serious offence."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አንድ አሽከርካሪ ዝግጁ መሆን አለበት ሲባል፤", en = "\"A driver must be ready\" means:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የተሽከርካሪ ፍተሻ ማድረግ አለበት ማለት ነው", en = "They must inspect the vehicle" }
                        , { am = "የመንገድ ሁኔታን ማወቅ አለበት ማለት ነው", en = "They must know the road conditions" }
                        , { am = "የአየርና የትራፊክ ሁኔታ ተፅእኖን መገመትና ማወቅ አለበት ማለት ነው", en = "They must anticipate and know the effects of weather and traffic" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Being ready covers all three. The driver checks the vehicle, knows the road, and anticipates the effect of weather and traffic."
          }
        , { topic = DriverBehavior
          , prompt = { am = "------ መረጃን ከአካባቢያችን በስሜት ህዋሳቶቻችን የመቀበል፣ የመለወጥና ወደአእምሮ የመላክ ሂደት ነው።", en = "___ is the process of receiving information from our surroundings through our senses, converting it, and sending it to the brain." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "መገንዘብ", en = "Perception" }
                    , after =
                        [ { am = "ትኩረት", en = "Attention" }
                        , { am = "ማስተዋል", en = "Awareness" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Perception is the process of taking in information through the senses, converting it and passing it to the brain."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ከ80%–90% አካባቢን ለማወቅና ስለአካባቢ መረጃ ለመሰብሰብ የሚጠቅመው፤", en = "Which sense provides 80–90% of what we learn about our surroundings?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ዓይን ነው", en = "The eye" }
                    , after =
                        [ { am = "ጆሮ ነው", en = "The ear" }
                        , { am = "መዳሰስ ነው", en = "Touch" }
                        , { am = "ማሽተት ነው", en = "Smell" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The eyes supply about 80 to 90 percent of the information a driver gets about the surroundings."
          }
        , { topic = SafeDriving
          , prompt = { am = "የጉዞ መነሻና መድረሻ ቦታዎችን ለይቶ የማወቅ ጠቀሜታ፤", en = "What is the benefit of knowing your trip's starting point and destination?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የጉዞ ሰዓትን በአግባቡ ለመጠቀም ይረዳል", en = "Helps you use travel time well" }
                        , { am = "በማረፊያ ቦታዎች ላይ በቂ እረፍት ለመውሰድ ይረዳል", en = "Helps you take enough rest at stopping places" }
                        , { am = "የተረጋጋ ስሜት ይፈጥራል", en = "Gives a calm state of mind" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "Knowing where you start and where you are going lets you use your time well, plan rest stops and drive in a calm state of mind."
          }
        , { topic = SafeDriving
          , prompt = { am = "ከሚከተሉት ውስጥ ለትራፊክ አደጋ መንስኤ የማይሆነው፤", en = "Which of these does NOT cause traffic accidents?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የጤንነት ሁኔታ", en = "Health condition" }
                        , { am = "የቴክኒክ ችሎታ ብቃት", en = "Technical skill level" }
                        , { am = "ችግሮችን የመፍታትና የመቆጣጠር ብቃት", en = "Ability to solve problems and stay in control" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "Health, technical skill and the ability to solve problems and stay in control can each contribute to an accident when they are poor, so none of them is the exception."
          }
        , { topic = FirstAid
          , prompt = { am = "በአንድ ጊዜ በሰውና በንብረት ላይ አደጋ የተከሰተ ከሆነ ሊደረግ የሚገባው የቅድሚያ እርዳታ አሰጣጥ ሂደት፤", en = "When an accident harms both people and property at the same time, what should the first-aid response be?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በንብረት ላይ የደረሰን አደጋ እንዳይባባስ መከላከል", en = "Keep the damage to property from getting worse" }
                        ]
                    , correct = { am = "ለተጎዳው ሰው እርዳታ መስጠት", en = "Help the injured person" }
                    , after =
                        [ { am = "ስለአደጋው መረጃን መያዝ", en = "Record information about the accident" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "People come first. Help the injured before dealing with property or collecting information."
          }
        , { topic = Vehicle
          , prompt = { am = "ኦነርስ ማንዋል /የአጠቃቀም ማንዋል/ ላይ ከሚገኙ መረጃዎች ውስጥ የሞተርና የቻንሲ ቁጥር መግለጫ አንዱ ነው።", en = "The owner's manual includes a description of the engine and chassis numbers." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false. The owner's manual explains how to use and look after the vehicle."
          }
        , { topic = Speed
          , prompt = { am = "እስከ 7500 ኪ.ግ የሚመዝን ተሽከርካሪ ከከተማ ክልል ውጭ በሁለተኛ ደረጃ መንገድ የሚፈቀድለት ከፍተኛ የፍጥነት ወሰን በሰዓት 60 ኪ.ሜ ነው።", en = "For a vehicle weighing up to 7,500 kg, the speed limit on a second-class road outside urban areas is 60 km/h." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "60 km/h is the limit given for vehicles up to 7,500 kg on second-class roads outside towns."
          }
        , { topic = TrafficLights
          , prompt = { am = "ቢጫ የትራፊክ ማስተላለፊያ መብራት ከአረንጓዴው ቀጥሎ ሲበራ ወደ መገናኛው መንገድ በመምጣት ላይ ያሉ አሽከርካሪዎች ይቆማሉ።", en = "When the yellow light comes on after green, drivers approaching the intersection stop." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Yellow after green means stop. Drivers still approaching the junction must stop, and only those already too close to stop safely carry on."
          }
        , { topic = Safety
          , prompt = { am = "በብረት ንጥረ ነገሮች ላይ የሚነሳን እሳት ለማጥፋት የሚያገለግለው የእሳት ማጥፊያ መሣሪያ፤", en = "What is used to put out fires involving metals?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ድራይ ፓውደር", en = "Dry powder" }
                        , { am = "ደረቅ አሸዋና አፈር", en = "Dry sand and soil" }
                        , { am = "ውሃ", en = "Water" }
                        , { am = "ፎም", en = "Foam" }
                        ]
                    , correct = { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                    , after = []
                    }
          , explanation = "Metal fires are put out with dry powder or with dry sand and soil. Water and foam can make a metal fire worse."
          }
        , { topic = FirstAid
          , prompt = { am = "ዝግ ስብራት በደረሰበት የሰውነት አካል ላይ ከውጪ የመድማት /የመቁሰል/ ምልክት ይታያል።", en = "A closed fracture shows external bleeding or a wound." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "In a closed fracture the skin is not broken, so there is no outside wound or bleeding. That is the sign of an open fracture."
          }
        , { topic = FirstAid
          , prompt = { am = "ስለመጀመሪያ ህክምና ዕርዳታ አሰጣጥ ትክክል የሆነው፤", en = "What is correct about giving first aid?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "መደበኛ የህክምና ዕርዳታን ሊተካ አይችልም", en = "It cannot replace regular medical treatment" }
                    , after =
                        [ { am = "መደበኛ የህክምና ዕርዳታን ይተካል", en = "It replaces regular medical treatment" }
                        , { am = "ከመደበኛ ህክምና ዕርዳታ በኋላ በየጊዜው የሚሰጥ ነው", en = "It is given regularly after medical treatment" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "First aid is immediate help until proper treatment is available. It does not replace medical care."
          }
        , { topic = DriverBehavior
          , prompt = { am = "------ መረዳትን፣ ማሰብን፣ ምክንያት መስጠትንና የሰዎች ድርጊትን ማጤንን ያካትታል።", en = "___ includes understanding, thinking, reasoning, and considering people's actions." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የስሜት ባህሪ", en = "Affective behavior" }
                        , { am = "ዝግጁነት", en = "Readiness" }
                        , { am = "የክህሎት ባህሪ", en = "Skill behavior" }
                        ]
                    , correct = { am = "አእምሮአዊ /የመገንዘብ/ ባህሪ", en = "Mental/cognitive behavior" }
                    , after =
                        [ { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "Understanding, thinking and reasoning are mental activities, so they belong to cognitive behaviour."
          }
        , { topic = RoadSigns
          , prompt = { am = "የአገልግሎት መስጫ ተቋማትን ለማመልከት የሚተከል የዓለም አቀፍ የመንገድ ዳር ምልክት ቀለሙ ውሃ ሰማያዊ ሆኖ ቅርጹ ክብ ነው።", en = "International signs for service facilities are light blue and circular." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Signs for service facilities are blue rectangles. Blue circles are mandatory signs."
          }
        , { topic = TrafficRules
          , prompt = { am = "ከከተማ ክልል ውጪ ሁለተኛ ደረጃ አውራ ጎዳና የሚባለው ወረዳን ከወረዳ የሚያገናኝ ጥርጊያ የሆነ መንገድ ማለት ነው።", en = "Outside urban areas, a \"second-class highway\" is a paved road connecting one woreda to another." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false, so that is not the definition of a second-class highway."
          }
        , { topic = Safety
          , prompt = { am = "የተበላሸን ተሽከርካሪ በመንገድ ላይ ለማቆም ከፊትና ከኋላ በ20ሜ ክልል አንፀባራቂ ምልክት ማስቀመጥ አለብን።", en = "When stopping a broken-down vehicle on the road, reflective warning signs must be placed within 20 m in front and behind." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false, so 20 m is not the required distance for the warning signs."
          }
        , { topic = TrafficRules
          , prompt = { am = "ወደመስቀለኛ መንገድ እየተጠጋን በሄድን ቁጥር በ30 ሜትር ክልል መቅደም ብቻ ይፈቀዳል።", en = "When approaching an intersection, overtaking within 30 m is allowed only by sounding the horn." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Overtaking within 30 m of an intersection is prohibited. Sounding the horn does not make it allowed."
          }
        , { topic = TrafficLights
          , prompt = { am = "አረንጓዴ የእግረኞች ማስተላለፊያ መብራት ሲበራ ተሽከርካሪዎች በጥንቃቄ ማለፍ ይችላሉ።", en = "When the green pedestrian light is on, vehicles may pass carefully." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "A green pedestrian light means people are crossing, so vehicles must wait."
          }
        , { topic = RoadSigns
          , prompt = { am = "ዝቅተኛ የፍጥነት ወሰንን የሚያሳይ ምልክት ከ------ የዓለም አቀፍ የመንገድ ዳር ምልክት ውስጥ ይካተታል።", en = "A minimum speed limit sign belongs to the ___ international road signs." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሚከለክሉ", en = "Prohibitory" }
                        , { am = "የሚያስጠነቅቁ", en = "Warning" }
                        , { am = "አቅጣጫ አመልካች", en = "Direction" }
                        , { am = "ቅድሚያ የሚያሰጡ", en = "Priority" }
                        ]
                    , correct = { am = "የሚያስገድዱ", en = "Mandatory" }
                    , after = []
                    }
          , explanation = "A minimum speed sign is a blue circle, which makes it a mandatory sign."
          }
        , { topic = SafeDriving
          , prompt = { am = "ከቆምክበት ለመነሳት የተሽከርካሪህ የፍሬቻ ወይም የፍሬን መብራት ለሌሎች ተሽከርካሪዎች የማይታይ መስሎ ከታየህ፤", en = "When pulling away from a stop, if your turn signal or brake light might not be visible to others:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የማስጠንቀቂያ ድምፅ መጠቀም", en = "Use the horn" }
                        , { am = "የጎን መብራት መጠቀም", en = "Use side lights" }
                        ]
                    , correct = { am = "የእጅ ምልክት መጠቀም", en = "Use hand signals" }
                    , after =
                        [ { am = "የአደጋ መብራት መጠቀም", en = "Use hazard lights" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "If your lights might not be seen, give the signal by hand."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የስነ-ባህሪ ግቦች ውስጥ የማይካተተው፤", en = "Which is NOT one of the goals of behavioral science?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ባህሪን መግለፅ", en = "Describing behavior" }
                        , { am = "ወቅታዊ ባህሪን ከግምት ውስጥ በመክተት የወደፊቱን መተንበይ", en = "Predicting future behavior from current behavior" }
                        , { am = "ባህሪን ማሻሻል", en = "Improving behavior" }
                        , { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "Describing, predicting and improving behaviour are all goals of behavioural science, so none of them is the exception."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አሽከርካሪዎች በሚያሽከረክሩበት ወቅት የሚያሳዩትን ባህሪ የሚያጠና የስነ-ባህሪ ዘርፍ ------ ይባላል።", en = "The branch of behavioral science that studies how drivers behave while driving is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ስነ-ባህሪ", en = "Behavioral science" }
                        , { am = "ባህሪ", en = "Behavior" }
                        ]
                    , correct = { am = "የማሽከርከር ስነ-ባህሪ", en = "Driving behavior science" }
                    , after =
                        [ { am = "ስነ-ልቦና", en = "Psychology" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Driving behaviour science is the branch that studies how drivers behave at the wheel."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የሞገደኛ አነዳድ ሂደትን ገላጭ የሆነው፤", en = "What describes how aggressive driving happens?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "አሽከርካሪው በሌሎች ላይ የሚያደርሰውን አደጋ ለመቀነስ የሚያስችለው ባህሪ ተፅእኖ ስር ሲወድቅ ነው", en = "When the behavior that helps the driver reduce danger to others gets overwhelmed" }
                    , after =
                        [ { am = "የተሽከርካሪው የቴክኒክ ብቃት ያልተሟላበት ሂደት ነው", en = "When the vehicle's technical condition is inadequate" }
                        , { am = "የአየር ሁኔታና የመንገደኞች እንቅስቃሴ ለአደጋ በሚያጋልጥ መልኩ በሚሆንበት ጊዜ ነው", en = "When weather and road users' movement create risk" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Aggressive driving happens when the self-control that keeps a driver from endangering others is overwhelmed."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የሞገደኛ አሽከርካሪ ፈርጆች ውስጥ አንዱ ከሆነው «ትዕግስት ማጣት እና ትኩረት አለመስጠትን» የማያሳየው አማራጭ፤", en = "Which option does NOT show \"impatience and inattention,\" one type of aggressive driving?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የትራፊክ ማስተላለፊያ መብራትን ተእዛዝን አለማክበር", en = "Disobeying traffic lights" }
                        , { am = "ከፊት ለፊት ያለን ተሽከርካሪ በጣም ተጠግቶ ማሽከርከር", en = "Tailgating the vehicle ahead" }
                        , { am = "አስፈላጊውን የትራፊክ ምልክት ለሌሎች አሽከርካሪዎች አለማሳየት", en = "Not signaling to other drivers" }
                        ]
                    , correct = { am = "ጥሩምባን በተደጋጋሚ በማስጮህ በምልክት መሳደብና ማስፈራራት", en = "Insulting or threatening with repeated honking and gestures" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Insults, threats and repeated honking belong to the hostile, road-rage type. The other three are examples of impatience and inattention."
          }
        , { topic = DriverBehavior
          , prompt = { am = "------ በአእምሮ አዛዥነትና በአካል እንቅስቃሴ የሚፈፀሙ ማናቸውንም ባህሪ ያጠቃልላል።", en = "___ includes any behavior carried out through mental control and body movement." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አእምሮአዊ /የመገንዘብ/ ባህሪ", en = "Cognitive behavior" }
                        , { am = "የስሜት ባህሪ", en = "Affective behavior" }
                        ]
                    , correct = { am = "የክህሎት ባህሪ", en = "Skill behavior" }
                    , after =
                        [ { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Skill behaviour covers actions carried out by the mind and body working together, such as steering and changing gear."
          }
        , { topic = DriverBehavior
          , prompt = { am = "መልካም ያልሆነ ስሜትን ለመቆጣጠር የማያስችለው አማራጭ፤", en = "Which does NOT help control negative emotions?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ስሜታችንን ለመቆጣጠር በማንችልበት ሁኔታ ውስጥ ስንገባ አለማሽከርከር", en = "Not driving when we can't control our emotions" }
                        ]
                    , correct = { am = "መልካም ያልሆኑ ስሜቶችን የሚቀሰቅሱ ሁኔታዎችን ለይቶ አለማወቅ", en = "Not identifying situations that trigger negative emotions" }
                    , after =
                        [ { am = "በማሽከርከር ውስጥ መጥፎ ባህሪያት እንዳይጠናከሩ እድል አለመስጠት", en = "Not letting bad driving habits take hold" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "To control negative emotions you need to identify what triggers them. Failing to do that does not help."
          }
        , { topic = Vehicle
          , prompt = { am = "በሞተር ሳይክል ላይ ከፊት እግር የሚገጠም ፍሬን ከኋለኛው እግር ፍሬን በ75 በመቶ የበለጠ ኃይል አለው።", en = "On a motorcycle, the front-wheel brake is 75% more powerful than the rear-wheel brake." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "On a motorcycle most of the stopping power comes from the front brake, because the weight shifts forward under braking."
          }
        , { topic = Safety
          , prompt = { am = "ከአደጋ ውጤት ውስጥ የማይካተተው፤", en = "Which is NOT a consequence of accidents?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አካባቢያዊ ብክለት", en = "Environmental pollution" }
                        , { am = "የሰዎች መመረዝ", en = "People being poisoned" }
                        , { am = "ማህበራዊና ስነ-ልቦናዊ ቀውስ", en = "Social and psychological trauma" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    , correct = { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                    , after = []
                    }
          , explanation = "Pollution, poisoning and social and psychological harm are all consequences of accidents, so none of them is the exception."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ የተሽከርካሪ ተሸካሚ ክፍል ያልሆነው፤", en = "Which is NOT part of the vehicle's suspension?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ፕሮፔለር ሻፍት /ትራንስሚሲዮን/", en = "Propeller shaft" }
                    , after =
                        [ { am = "ሊፍ እስፕሪንግ /ባሌስትራ/", en = "Leaf spring" }
                        , { am = "ኮይል እስፕሪንግ /ጥቅል ሞላ/", en = "Coil spring" }
                        , { am = "ኤር ባግ እስፕሪንግ /በአየር የሚሠራ/", en = "Air spring" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The propeller shaft carries power to the axle, so it is part of the transmission. The springs are suspension parts."
          }
        , { topic = SafeDriving
          , prompt = { am = "የአሽከርካሪዎች የጉዞ ዕቅድ ውስጥ ሊካተት የሚገባው፤", en = "What should a driver's trip plan include?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የጉዞ ርቀትን ማወቅ", en = "Knowing the trip distance" }
                        , { am = "የአገልግሎት መስጫ ተቋማት የሚገኙበትን ቦታ ማወቅ", en = "Knowing where service facilities are" }
                        , { am = "የአካባቢ ባህልን ማወቅ", en = "Knowing the local culture" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "A trip plan includes the distance, where service facilities are and the local culture along the way."
          }
        , { topic = Parking
          , prompt = { am = "ወደነዳጅ ማደያ አካባቢ ከ------ ሜትር ባነሰ ክልል ውስጥ አቁሞ መሄድ የተከለከለ ነው።", en = "Parking and leaving your vehicle within ___ m of a fuel station is prohibited." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "12", en = "12 m" }
                    , after =
                        [ { am = "20", en = "20 m" }
                        , { am = "15", en = "15 m" }
                        , { am = "30", en = "30 m" }
                        , { am = "50", en = "50 m" }
                        ]
                    }
          , explanation = "You may not park and leave a vehicle within 12 m of a fuel station."
          }
        , { topic = RoadMarkings
          , prompt = { am = "በጥቁርና ነጭ ቀለም የተቀቡ ትክል ድንጋዮች ወይም በመንገድ ላይ የሚተከሉ አንፀባራቂ ምልክቶች ጠቀሜታ፤", en = "What are black-and-white roadside posts or reflective road markers for?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ማቆም እንዳለብን ትዕዛዝ ይሰጣሉ", en = "They order you to stop" }
                        ]
                    , correct = { am = "አደገኛ መታጠፊያ ወይም ገደላማ አካባቢ መኖሩን ያሳውቃሉ", en = "They mark a dangerous bend or a steep drop" }
                    , after =
                        [ { am = "በፍጥነት ማለፍ እንደሚቻል መረጃን ይሰጣሉ", en = "They show that you may pass at speed" }
                        , { am = "የከተማ መዳረሻ መሆኑን ያሳውቃሉ", en = "They mark the edge of a town" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Black and white posts and reflectors mark the edge of the road at dangerous bends and steep drops."
          }
        , { topic = SafeDriving
          , prompt = { am = "አደጋን ለመከላከል የተሰማሩ ተሽከርካሪዎችን ከ------ ሜትር ባነሰ ርቀት ተጠግቶ ማሽከርከር የተከለከለ ነው።", en = "Following emergency vehicles (deployed to deal with an emergency) closer than ___ m is prohibited." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "100", en = "100 m" }
                    , after =
                        [ { am = "200", en = "200 m" }
                        , { am = "50", en = "50 m" }
                        , { am = "25", en = "25 m" }
                        , { am = "30", en = "30 m" }
                        ]
                    }
          , explanation = "You may not follow an emergency vehicle on duty closer than 100 m."
          }
        , { topic = Parking
          , prompt = { am = "ተሽከርካሪ በቆመበት ጊዜ በማንኛውም ሁኔታ የሚከለከል ድርጊት የሆነው፤", en = "What is prohibited in all circumstances when a vehicle is parked?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የማስጠንቀቂያ ድምፅ ማሰማት", en = "Sounding the horn" }
                    , after =
                        [ { am = "የውስጥ መብራት መጠቀም", en = "Using the interior light" }
                        , { am = "የአደጋ መብራት መጠቀም", en = "Using the hazard lights" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Sounding the horn while parked is prohibited in every case."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ በተሽከርካሪ የኃይል አስተላላፊ ክፍሎች ውስጥ የማይካተተው፤", en = "Which is NOT part of the vehicle's power transmission system?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፍሪሲዮን", en = "Clutch" }
                        ]
                    , correct = { am = "ሾክ አብዞርቨር /አሞርዛቶር/", en = "Shock absorber" }
                    , after =
                        [ { am = "ዲፈረንሻል", en = "Differential" }
                        , { am = "አክስል /ሸሚያስ/", en = "Axle" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The shock absorber is a suspension part. The clutch, differential and axle all carry power to the wheels."
          }
        , { topic = Vehicle
          , prompt = { am = "ግሎው ፕላግ የቤንዚን ሞተር ክፍል ነው።", en = "The glow plug is a part of a gasoline engine." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Glow plugs heat the combustion chamber of a diesel engine. Petrol engines use spark plugs."
          }
        , { topic = DriverBehavior
          , prompt = { am = "ውጤታማ የመግባባት ክህሎቶች ውስጥ የሚካተተው አማራጭ፤", en = "Which is part of effective communication skills?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "መቻቻል", en = "Tolerance" }
                        , { am = "ማካፈል፣ አዛኝ መሆን", en = "Sharing, being empathetic" }
                        , { am = "መደራደር", en = "Negotiating" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "Tolerance, sharing and empathy, and negotiating are all part of communicating well."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር በማቀዝቀዣ ዘዴው በስንት ይከፈላል?", en = "Into how many types are engines divided by cooling method?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በ1", en = "1" }
                        , { am = "በ2", en = "2" }
                        , { am = "በ3", en = "3" }
                        ]
                    , correct = { am = "በ4", en = "4" }
                    , after =
                        [ { am = "በ5", en = "5" }
                        ]
                    }
          , explanation = "The answer key gives four types of engine by cooling method."
          }
        , { topic = TrafficRules
          , prompt = { am = "ማንኛውም አሽከርካሪ ከመገናኛ /አደባባይ/ መንገድ በ---- ሜትር ርቀት የሚሄድበትን አቅጣጫ መምረጥ አለበት።", en = "Every driver must choose their direction ___ m before an intersection or roundabout." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "50", en = "50 m" }
                    , after =
                        [ { am = "30", en = "30 m" }
                        , { am = "15", en = "15 m" }
                        , { am = "12", en = "12 m" }
                        , { am = "4", en = "4 m" }
                        ]
                    }
          , explanation = "Choose your lane and direction 50 m before an intersection or roundabout."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የማሽከርከር መርህዎችንና መረጃዎችን ማወቅና በአእምሮ መያዝ፤", en = "Knowing and remembering driving principles and information:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ስሜታዊ ጥንቃቄን ያሳያል", en = "Shows emotional caution" }
                        ]
                    , correct = { am = "አእምሯዊ ብቃትን ያሳያል", en = "Shows mental (cognitive) competence" }
                    , after =
                        [ { am = "ክህሎታዊ ጥንቃቄን ያሳያል", en = "Shows skill-based caution" }
                        , { am = "ስሜታዊ ኃላፊነት ነው", en = "Is an emotional responsibility" }
                        , { am = "አእምሮአዊ ኃላፊነት ነው", en = "Is a mental responsibility" }
                        ]
                    }
          , explanation = "Knowing and remembering principles and information is a matter of knowledge, so it shows mental (cognitive) competence."
          }
        , { topic = DriverBehavior
          , prompt = { am = "የሞገደኛ አሽከርካሪ ባህሪን የማያሳየው አማራጭ፤", en = "Which does NOT show aggressive-driver behavior?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ሰዎችንና ንብረትን ከአደጋ የሚጠብቅና የሚከላከል የማሽከርከር ምናባዊ ዕቅድን መከተል", en = "Following a mental driving plan that protects people and property from harm" }
                    , after =
                        [ { am = "በከባድ ህመም እየተሰቃዩ ማሽከርከር", en = "Driving while suffering from a serious illness" }
                        , { am = "የትራፊክ ህጎችን ያለማክበር፣ የተሳሳተ ግምትና ማጠቃለያ መስጠት", en = "Ignoring traffic rules; making wrong judgments and conclusions" }
                        , { am = "በጭንቀት ውስጥ ሆኖ ማሽከርከር", en = "Driving while stressed" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "Following a mental driving plan that protects people and property is the opposite of aggressive driving."
          }
        , { topic = Safety
          , prompt = { am = "አሽከርካሪዎች ለተባባሰ አደጋ እንዳይጋለጡ ከሚያስፈልጉ የግል መጠበቂያ መሣሪያዎች ውስጥ አንዱ የሆነው፤", en = "Which is one of the personal protective items drivers need so they aren't exposed to further danger?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ጓንቶች", en = "Gloves" }
                        , { am = "ካፖርት", en = "Coat" }
                        , { am = "አንፀባራቂ ምልክት", en = "Reflective marker" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Gloves, a coat and a reflective marker are all personal protective items a driver should carry."
          }
        , { topic = DriverBehavior
          , prompt = { am = "------ በስሜት ህዋሳቶቻችን አማካኝነት ከሚደርሱን መረጃዎች መካከል ዋናውና ተፈላጊውን የመምረጥ ሂደት ነው።", en = "___ is the process of selecting the main, needed information from what reaches us through our senses." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ማስተዋል", en = "Awareness" }
                        , { am = "መገንዘብ", en = "Perception" }
                        ]
                    , correct = { am = "ትኩረት", en = "Attention" }
                    , after =
                        [ { am = "ዝግጁነት", en = "Readiness" }
                        , { am = "መነሳሳት", en = "Motivation" }
                        ]
                    }
          , explanation = "Attention is the process of picking out the information that matters from everything the senses take in."
          }
        , { topic = Vehicle
          , prompt = { am = "ኬሚካል ኃይልን ወደኤሌክትሪካል ኃይል የሚቀይር ክፍል ------ ይባላል።", en = "The part that converts chemical energy into electrical energy is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ዲስትሪቢውተር", en = "Distributor" }
                        , { am = "ዲናሞ", en = "Dynamo" }
                        ]
                    , correct = { am = "ባትሪ", en = "Battery" }
                    , after =
                        [ { am = "ፑንቲና", en = "Contact points" }
                        , { am = "ስታርተር ሞተር", en = "Starter motor" }
                        ]
                    }
          , explanation = "The battery turns chemical energy into electrical energy."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ፒስተንና ኮሎን የሚያገናኝ ክፍል ነው።", en = "___ is the part that connects the piston to the crankshaft." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ፒስተን ፒን", en = "Piston pin" }
                        ]
                    , correct = { am = "ኮኔክቲንግ ሮድ /ቤላ/", en = "Connecting rod" }
                    , after =
                        [ { am = "ፋሻ", en = "Piston ring" }
                        , { am = "አልብሮካም", en = "Camshaft" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The connecting rod links the piston to the crankshaft. The piston pin joins the piston to the rod."
          }
        , { topic = Vehicle
          , prompt = { am = "አስቸጋሪ በሆነ ጭቃና በሚያስጥም አሸዋማ መንገድ የምንጠቀመው የሬዱታ ማርሽ ዓይነት /H₄/ ነው።", en = "On difficult mud and sinking sand, the transfer-case (reduction) gear to use is H4 (4WD high)." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The answer key marks this true."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ ለፍሬን ብቃት መቀነስ ምክንያት የማይሆነው፤", en = "Which does NOT reduce braking performance?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ከመጠን በላይ ጭነት", en = "Overloading" }
                        , { am = "የእግር ፍሬን ይዞ ለረጅም ጊዜ መቆየት", en = "Holding the foot brake for a long time" }
                        , { am = "ቁልቁለት መንገድ ላይ በተደጋጋሚ ፍሬን በመያዝ ፍጥነትን ለመቀነስ መሞከር", en = "Braking repeatedly to slow down on a downhill" }
                        ]
                    , correct = { am = "በድንገት ፍሬን ያለመያዝ", en = "Not braking suddenly" }
                    , after =
                        [ { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Avoiding sudden braking does not harm the brakes. Overloading, holding the brake for long periods and repeated braking downhill all overheat and weaken them."
          }
        , { topic = DriverBehavior
          , prompt = { am = "አካላዊ ሁኔታ የአንድን አሽከርካሪ ባህሪ ሊለውጥ ይችላል ሲባል፤", en = "\"Physical condition can change a driver's behavior\" means:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የአሽከርካሪውን አስተሳሰብ ሊሆን ይችላል", en = "It could be the driver's way of thinking" }
                        , { am = "የማርሽ አጠቃቀሙና የመሪ አያያዙን ለማለት ነው", en = "It refers to gear use and steering handling" }
                        ]
                    , correct = { am = "የድካምና የህመም ስሜት ሊሆን ይችላል", en = "It could be fatigue or illness" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        , { am = "«ለ» እና «ሐ» መልስ ናቸው", en = "ለ and ሐ are correct" }
                        ]
                    }
          , explanation = "Physical condition means the state of the driver's body, such as tiredness or illness."
          }
        , { topic = DriverBehavior
          , prompt = { am = "በማሽከርከር ወቅት ለሰዎች ወይም ለነገሮች ያሉን ስሜቶች ከሚፈልገው በላይ በሚሆንበት ወቅት የሚከሰት የባህሪ ለውጥ፤", en = "A behavior change that happens when our feelings toward people or things become excessive while driving:" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "በውርስ የሚመጣ ባህሪ ይባላል", en = "Is called inherited behavior" }
                        ]
                    , correct = { am = "ኃይለ-ስሜት ውጥረትን ያሳያል", en = "Shows emotional tension" }
                    , after =
                        [ { am = "አካላዊ ሁኔታን ያሳያል", en = "Shows physical condition" }
                        , { am = "«ሀ» እና «ለ»", en = "ሀ and ለ" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "When feelings toward people or things become excessive, the change in behaviour comes from emotional tension."
          }
        , { topic = DriverBehavior
          , prompt = { am = "------ በትምህርትና ስልጠና የተገኘን እውቀት፣ ክህሎትና አስተሳሰብን በመጠቀም ለህብረተሰብ ተገቢውን አገልግሎት መስጠት የሚያስችል የስራ መስክ ነው።", en = "___ is a field of work that uses knowledge, skills, and thinking gained through education and training to serve society properly." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የሙያ ስነ-ምግባር", en = "Professional ethics" }
                        , { am = "ስነ-ምግባር", en = "Ethics" }
                        ]
                    , correct = { am = "ሙያ", en = "Profession" }
                    , after =
                        [ { am = "ስነ-ባህሪ", en = "Behavioral science" }
                        , { am = "ባህሪ", en = "Behavior" }
                        ]
                    }
          , explanation = "A profession is a field of work that applies knowledge and skill gained through education and training to serve society."
          }
        , { topic = Vehicle
          , prompt = { am = "ፍሪሲዮን የሞተሩን ኃይል ወደ ካምቢዮ እንዲተላለፍና እንዲቋረጥ ለማድረግ ያገለግላል።", en = "The clutch connects and disconnects engine power to the gearbox." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The clutch connects the engine to the gearbox and disconnects it when you press the pedal."
          }
        , { topic = Vehicle
          , prompt = { am = "በሊሾ ጎማ ለረጅም ጊዜ መጠቀም ለሞተር ሙቀት መጨመር ምክንያት ይሆናል።", en = "Using bald tires for a long time causes the engine to overheat." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "The answer key marks this true."
          }
        , { topic = Vehicle
          , prompt = { am = "ከተሽከርካሪ ጭስ የሚወገድ ያልተቃጠለ ነዳጅና መርዛማ ኬሚካሎችን ወደውሃ እና ካርቦንዳይኦክሳይድ የሚለውጥ ክፍል ------ ይባላል።", en = "The part that converts unburned fuel and toxic chemicals in the exhaust into water and carbon dioxide is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "ካታሊክ ኮንቨርተር", en = "Catalytic converter" }
                    , after =
                        [ { am = "ማፍለር", en = "Muffler" }
                        , { am = "ቴልፓይፕ /ጭስ ማውጫ/", en = "Tailpipe" }
                        , { am = "ኤግዞስት ማኒፎልድ", en = "Exhaust manifold" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The catalytic converter turns unburned fuel and toxic gases in the exhaust into water and carbon dioxide."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ከሞተር የሚወጣውን ከፍተኛ ድምፅ ወደውጭ እንዳይወጣ የሚያፍን ክፍል ነው።", en = "___ is the part that muffles the engine's loud noise." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ቴልፓይፕ", en = "Tailpipe" }
                        , { am = "ኤግዞስት ማኒፎልድ", en = "Exhaust manifold" }
                        ]
                    , correct = { am = "ማፍለር", en = "Muffler" }
                    , after =
                        [ { am = "ካታሊክ ኮንቨርተር", en = "Catalytic converter" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The muffler, also called the silencer, reduces the noise of the exhaust."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ የቤንዚን ሞተር ነዳጅ አስተላላፊ ክፍል ያልሆነው፤", en = "Which is NOT part of a gasoline engine's fuel delivery system?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ካርቡሬተር", en = "Carburetor" }
                        , { am = "የነዳጅ ማጣሪያ", en = "Fuel filter" }
                        ]
                    , correct = { am = "ኢንጀክተር ኖዝል", en = "Injector nozzle" }
                    , after =
                        [ { am = "የነዳጅ መስመር", en = "Fuel line" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The injector nozzle is treated as a diesel engine part. The carburettor, fuel filter and fuel line belong to the petrol system."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ከፊት ትንሽ ነጣ ያለና ከኋላ ደግሞ ቀይ ፈዘዝ ያለ መብራት ሲሆን ጥቅሙም ተላላፊዎች የቆመ ተሽከርካሪ መኖሩን አውቀው እንዲጠነቀቁ ያደርጋል።", en = "___ is a dim white light at the front and a dim red light at the rear; it warns road users that a vehicle is parked so they take care." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የፍሬን መብራት", en = "Brake light" }
                        , { am = "የአደጋ መብራት /ሀዛርድ ላይት/", en = "Hazard light" }
                        , { am = "የፍሬቻ መብራት", en = "Turn signal" }
                        , { am = "የአደጋ መብራት", en = "Hazard light" }
                        ]
                    , correct = { am = "የማቆሚያ /ፓርኪንግ/ መብራት", en = "Parking light" }
                    , after = []
                    }
          , explanation = "Parking lights are the dim white lights at the front and dim red lights at the rear that show a parked vehicle."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ከኢግኒሽን ኮይል /ቦቢና/ የተቀበለውን የተባዛ የኤሌክትሪክ ኃይል በካንዴላ ገመዶች አማካኝነት ወደ ካንዴላ የሚያስተላልፍ ክፍል ነው።", en = "___ sends the stepped-up electric power from the ignition coil to the spark plugs through the plug wires." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ስታርተር ሞተር /ሞተሪኖ/", en = "Starter motor" }
                        ]
                    , correct = { am = "ዲስትሪቢውተር /አቫንስ/", en = "Distributor" }
                    , after =
                        [ { am = "ዲናሞ", en = "Dynamo" }
                        , { am = "ባትሪ", en = "Battery" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The distributor sends the high voltage from the ignition coil to each spark plug in turn."
          }
        , { topic = Vehicle
          , prompt = { am = "------ በተሽከርካሪ ላይ የሚያርፈውን ጭነትና የተሽከርካሪን አጠቃላይ ክብደት የሚሸከም ክፍል ነው።", en = "___ is the part that carries the load and the total weight of the vehicle." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ባሌስትራ", en = "Leaf spring" }
                        , { am = "ቻንሲ", en = "Chassis" }
                        ]
                    , correct = { am = "ጎማ", en = "Tire" }
                    , after =
                        [ { am = "ቦዲ /አካል/", en = "Body" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "The answer key gives the tyre, since the tyres are what finally carry the vehicle and its load on the road. Many sources would say the chassis."
          }
        , { topic = Vehicle
          , prompt = { am = "በጉዞ ወቅት የባትሪ አመልካች መብራት ሲበራ መወሰድ ያለበት ክንውን፤", en = "What should you do when the battery warning light comes on during a trip?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሞተርን ቶሎ በማጥፋት የባትሪን ውሃና አሲድ መጠን መፈተሽ", en = "Turn off the engine right away and check the battery's water and acid level" }
                        , { am = "ተሽከርካሪን በማቆም ስታርተር ሞተር /ሞተሪኖ/ መፈተሽ", en = "Stop and check the starter motor" }
                        ]
                    , correct = { am = "ሞተርን ሳያጠፉ ባትሪ ቻርጅ ለማድረግ ወደባለሙያ መሄድ", en = "Go to a mechanic without turning off the engine, to get the battery charging fixed" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The light means the battery is not being charged. If you switch off the engine it may not start again, so drive to a mechanic."
          }
        , { topic = Vehicle
          , prompt = { am = "በጉዞ ወቅት የዘይት አመልካች መብራት ሲበራ መወሰድ ያለበት እርምጃ፤", en = "What should you do when the oil warning light comes on during a trip?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሞተርን ቶሎ በማጥፋት ጊዜ ሳይባክን የዘይት መጠንን መፈተሽ", en = "Turn off the engine and check the oil level immediately" }
                        , { am = "ሞተርን ሳናጠፋ ወደባለሙያ መሄድና ዘይትን ማስፈተሽ", en = "Drive to a mechanic without turning off the engine and have the oil checked" }
                        ]
                    , correct = { am = "ሞተርን ቶሎ በማጥፋት ተሽከርካሪ እንዲያርፍበት ጊዜ ትንሽ በመጠበቅ የዘይት መጠንን መፈተሽ", en = "Turn off the engine right away, wait a little for it to settle, then check the oil level" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Low oil pressure can destroy the engine. Switch off at once, let the oil settle for a moment and then check the level."
          }
        , { topic = Vehicle
          , prompt = { am = "በአየር የሚቀዘቅዙ የሞተር አይነቶች ራዲያተር ይጠቀማሉ።", en = "Air-cooled engines use a radiator." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Air-cooled engines are cooled by air flowing over fins. A radiator belongs to a liquid-cooled engine."
          }
        , { topic = Safety
          , prompt = { am = "ከሚከተሉት ውስጥ እሳት እንዲባባስ ምክንያት የማይሆነው፤", en = "Which does NOT make a fire worse?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኦክስጅን", en = "Oxygen" }
                        , { am = "ሙቀት", en = "Heat" }
                        , { am = "ተቀጣጣይ ነገሮች", en = "Flammable materials" }
                        ]
                    , correct = { am = "ቅዝቃዜ", en = "Cold" }
                    , after =
                        [ { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "Fire feeds on oxygen, heat and fuel. Cold takes heat away."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ተሽከርካሪ በሰዓት ምን ያህል ኪሎ ሜትር እየተጓዘ እንደሆነ የሚያመለክት መሣሪያ ነው።", en = "___ is the instrument that shows how many kilometers per hour the vehicle is traveling." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኦዶ ሜትር", en = "Odometer" }
                        ]
                    , correct = { am = "ስፒዶ ሜትር", en = "Speedometer" }
                    , after =
                        [ { am = "ታኮ ሜትር", en = "Tachometer" }
                        , { am = "ትሪፕ ኦዶ ሜትር", en = "Trip odometer" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "The speedometer shows speed in kilometres per hour. The odometer shows distance travelled."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ የአየር ብክለትን ለመቀነስ ጥንቃቄ የሚያስፈልገው፤", en = "Which of these requires care to reduce pollution?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የዘይት ማጣሪያ በመቀየር ወቅት", en = "When changing the oil filter" }
                        , { am = "ባትሪ", en = "The battery" }
                        , { am = "ራዲያተር ውሃ በሚቀየርበት ወቅት", en = "When changing radiator water" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "«ሀ» እና «ሐ» መልስ ናቸው", en = "ሀ and ሐ are correct" }
                        ]
                    }
          , explanation = "Used oil filters, batteries and old coolant all pollute, so each needs care when it is handled or replaced."
          }
        , { topic = Vehicle
          , prompt = { am = "በቤንዚን ሞተር ላይ የሞተር ማስነሻ ቁልፍን /On/ የሚለው ላይ አድርጎ ለረጅም ጊዜ መቆየት የሚያስከትለው ችግር፤", en = "On a gasoline engine, what happens if the ignition key is left on \"On\" for a long time?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የባትሪን ኃይል ይጨርሳል", en = "It drains the battery" }
                        , { am = "ሞተሪኖ /ስታርተር ሞተርን/ ያቃጥላል", en = "It burns out the starter motor" }
                        , { am = "የሞተር ማስነሻ ቁልፍን ይጎዳል", en = "It damages the ignition key" }
                        , { am = "ኢግንሺን ኮይል እንዲቃጠል ያደርጋል", en = "It burns out the ignition coil" }
                        ]
                    , correct = { am = "«ሀ» እና «መ» መልስ ናቸው", en = "ሀ and መ are correct" }
                    , after = []
                    }
          , explanation = "Leaving the ignition on without the engine running drains the battery and can burn out the ignition coil."
          }
        , { topic = Vehicle
          , prompt = { am = "የመሪ ዘይት ሲጎድል ለመሙላት መደረግ የሚገባው፤", en = "What should you do when topping up low power-steering fluid?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የፊት ጎማን ወደቀኝ ማዞር", en = "Turn the front wheels to the right" }
                        , { am = "የመሪ እጀታን ወደግራ ማዞር", en = "Turn the steering wheel to the left" }
                        ]
                    , correct = { am = "የፊት ጎማን ቀጥ በማድረግ", en = "Keep the front wheels straight" }
                    , after =
                        [ { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Keep the front wheels pointing straight ahead when topping up the power steering fluid."
          }
        , { topic = Vehicle
          , prompt = { am = "------ ዲናሞ ከፍተኛ የሆነ የኤሌክትሪክ ኃይል እንዳያስተላልፍ የሚቆጣጠር መሣሪያ ነው።", en = "___ is the device that stops the dynamo from sending too much electrical power." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ኮንዴንሰር", en = "Condenser" }
                        , { am = "ፑንቲ", en = "Contact points" }
                        , { am = "አቫንስ", en = "Distributor" }
                        ]
                    , correct = { am = "ሬጉሌተር", en = "Regulator" }
                    , after =
                        [ { am = "ባትሪ", en = "Battery" }
                        ]
                    }
          , explanation = "The regulator limits the charging output so the battery and electrical parts are not overcharged."
          }
        , { topic = Vehicle
          , prompt = { am = "በራዲያተር ውሃ ላይ ዘይት መሰል ነገር የሚታይ ከሆነ የጋስኬት ችግር ወይም የቴስታታ መሰንጠቅን ይጠቁማል።", en = "An oily substance in the radiator water indicates a gasket problem or a cracked cylinder head." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "The answer key marks this false. Many mechanics would treat oil in the radiator water as a sign of a failed head gasket or a cracked cylinder head."
          }
        , { topic = Vehicle
          , prompt = { am = "በቅዝቃዜ ወቅት የባትሪ ኃይል ሊቀንስ አይችልም።", en = "Battery power cannot drop in cold weather." }
          , figure = Nothing
          , answer = TrueFalse False
          , explanation = "Cold weather reduces a battery's power."
          }
        , { topic = Vehicle
          , prompt = { am = "የዲስትሪቢውተር /አቫንስ/ ክፍል ሲሆን የኤሌክትሪክ ኃይልን በመክፈትና በመዘጋት ወደካንዴላ ገመድ የሚያስተላልፍና የሚያቋርጥ ክፍል ------ ይባላል።", en = "The distributor part that passes and interrupts electric current toward the spark plug wires by opening and closing is called ___." }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "አልተርኔተር", en = "Alternator" }
                        , { am = "ሮተር", en = "Rotor" }
                        , { am = "ኢግኒሽን ኮይል", en = "Ignition coil" }
                        , { am = "ኮንዴንሰር", en = "Condenser" }
                        ]
                    , correct = { am = "ፑንቲና", en = "Contact points" }
                    , after = []
                    }
          , explanation = "The contact points open and close to interrupt the current in the distributor."
          }
        , { topic = Vehicle
          , prompt = { am = "ከሚከተሉት ውስጥ ለባትሪ ውሃ ቶሎ ቶሎ መጨረስ መንስኤ የሚሆነው፤", en = "What makes battery water run out quickly?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የሬጉሌተር ብልሽት", en = "Regulator failure" }
                    , after =
                        [ { am = "የካንዴላ ገመዶች መላላት", en = "Loose spark plug wires" }
                        , { am = "የፑንቲና ችግር", en = "Contact points problem" }
                        , { am = "የስታርተር ሞተር ብልሽት", en = "Starter motor failure" }
                        , { am = "ሁሉም", en = "All" }
                        ]
                    }
          , explanation = "A faulty regulator overcharges the battery, which boils off its water."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር በማይነሳበት ሁኔታ መብራትና ሬድዮ /ቴፕ/ ከፍቶ ለረጅም ጊዜ መቆየት የሚያስከትለው ችግር፤", en = "What happens if the lights and radio are left on for a long time while the engine is off?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "የዲናሞ ብልሽትና መድከም ነው", en = "Dynamo failure and weakening" }
                        ]
                    , correct = { am = "የባትሪ መድከም ነው", en = "The battery runs down" }
                    , after =
                        [ { am = "የስታርተር ሞተር ብልሽት ነው", en = "Starter motor failure" }
                        , { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "With the engine off nothing recharges the battery, so the lights and radio run it down."
          }
        , { topic = Vehicle
          , prompt = { am = "ዳሽ ቦርድ ላይ ከሚገኙ መሣሪያዎች አንዱ የማይሠራ ከሆነ የመጀመሪያ ስራችን መሆን ያለበት፤", en = "If one of the dashboard instruments stops working, what should we do first?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የፊውዝ ሳጥኑን በመክፈት የተቃጠለ ፊውዝ መኖሩን ማረጋገጥ ነው", en = "Open the fuse box and check for a blown fuse" }
                    , after =
                        [ { am = "የተቃጠለ ፊውዝ ካለ በሽቦ በመቀጠል ማስተካከል", en = "If a fuse is blown, fix it by bridging it with wire" }
                        , { am = "የባትሪን ተርሚናል ማጠባበቅ", en = "Tighten the battery terminals" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "Check the fuse box for a blown fuse first. Never bridge a fuse with wire."
          }
        , { topic = Vehicle
          , prompt = { am = "ተሽከርካሪን ከዳገት ወደታች መውረድ ሲጀምር የፓቴንሻል ኢነርጂ ወደ ኪኔቲክ ኢነርጂ ይቀየራል።", en = "When a vehicle starts going downhill, potential energy turns into kinetic energy." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "A vehicle at the top of a slope has potential energy, which turns into kinetic energy as it rolls down."
          }
        , { topic = Vehicle
          , prompt = { am = "ስለባትሪ ተግባር ትክክል የሆነው፤", en = "What is correct about the battery's function?" }
          , figure = Nothing
          , answer =
                Choice
                    { before =
                        [ { am = "ሞተርን ለማስነሳት የኤሌክትሪክ ኃይል ይሰጣል", en = "It supplies power to start the engine" }
                        , { am = "ሞተር በማይነሳበት ወቅት ለተለያዩ የኤሌክትሪክ ክፍሎች ኃይል ይሰጣል", en = "It powers electrical parts while the engine is off" }
                        , { am = "ዲናሞ /አልተርኔተር/ በማይሠራበት ወቅት ለተለያዩ ክፍሎች የኤሌክትሪክ ኃይል ይሰጣል", en = "It powers parts when the dynamo/alternator isn't working" }
                        ]
                    , correct = { am = "ሁሉም", en = "All" }
                    , after =
                        [ { am = "«ሀ» እና «ለ» መልስ ናቸው", en = "ሀ and ለ are correct" }
                        ]
                    }
          , explanation = "The battery starts the engine, powers the electrics when the engine is off and supplies them when the alternator is not charging."
          }
        , { topic = Vehicle
          , prompt = { am = "በተሽከርካሪ ላይ የአየር ማጣሪያ /ዳብራተር/ በእርጥብና በደረቅ ሊሠራ ይችላል።", en = "A vehicle's air filter can be either the wet type or the dry type." }
          , figure = Nothing
          , answer = TrueFalse True
          , explanation = "Air filters come in wet (oil bath) and dry (paper element) types."
          }
        , { topic = Vehicle
          , prompt = { am = "ሞተር ተነስቶ ተገቢው ማርሽ ገብቶለት የማይሄድ ከሆነ፣ ችግሩ ምን ሊሆን ይችላል?", en = "If the engine is running and the right gear is engaged but the vehicle won't move, what could the problem be?" }
          , figure = Nothing
          , answer =
                Choice
                    { before = []
                    , correct = { am = "የፍሪሲዮን ሸራ ማለቅ", en = "Worn-out clutch plate" }
                    , after =
                        [ { am = "የባትሪ መድከም", en = "Weak battery" }
                        , { am = "የጎማ ማለቅ", en = "Worn tires" }
                        , { am = "ሁሉም", en = "All" }
                        , { am = "መልሱ አልተሰጠም", en = "The answer is not given" }
                        ]
                    }
          , explanation = "A worn clutch plate slips, so engine power does not reach the wheels even with a gear engaged."
          }
        ]
    }
