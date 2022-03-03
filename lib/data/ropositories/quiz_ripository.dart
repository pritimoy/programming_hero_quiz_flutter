
import 'package:programming_hero_quiz_flutter/data/models/quiz.dart';
import 'package:programming_hero_quiz_flutter/data/services/quiz_service.dart';

class QuizRepository {
  QuizService quizService;

  QuizRepository(this.quizService);

  static Future<Quizes> getQuiz() =>
      QuizService.getQuizes();

}