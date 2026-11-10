module Quizzes exposing (all)

import Quiz exposing (Quiz)
import Quizzes.Quiz1
import Quizzes.Quiz2
import Quizzes.Quiz3
import Quizzes.Quiz4


all : List Quiz
all =
    [ Quizzes.Quiz1.quiz
    , Quizzes.Quiz2.quiz
    , Quizzes.Quiz3.quiz
    , Quizzes.Quiz4.quiz
    ]
