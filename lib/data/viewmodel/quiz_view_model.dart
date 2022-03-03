import 'package:flutter/material.dart';
import 'package:programming_hero_quiz_flutter/data/models/questions.dart';
import 'package:programming_hero_quiz_flutter/data/models/quiz.dart';
import 'package:programming_hero_quiz_flutter/data/ropositories/quiz_ripository.dart';

class QuizViewModel extends ChangeNotifier {
  ///get quiz data
  getQuiz() async {
    Quizes quizes = await QuizRepository.getQuiz();
  }
}