module Quizzes exposing (all)

import Quiz exposing (Quiz)
import Quizzes.Quiz1
import Quizzes.Quiz2
import Quizzes.Quiz3
import Quizzes.Quiz4
import Quizzes.Quiz5
import Quizzes.Quiz6
import Quizzes.Quiz7


all : List Quiz
all =
    [ Quizzes.Quiz1.quiz
    , Quizzes.Quiz2.quiz
    , Quizzes.Quiz3.quiz
    , Quizzes.Quiz4.quiz
    , Quizzes.Quiz5.quiz
    , Quizzes.Quiz6.quiz
    , Quizzes.Quiz7.quiz
    ]
