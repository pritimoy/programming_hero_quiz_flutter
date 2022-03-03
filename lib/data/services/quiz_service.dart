
import 'package:programming_hero_quiz_flutter/data/models/quiz.dart';
import 'package:programming_hero_quiz_flutter/network/api_call.dart';

class QuizService {
  final ApiCall apiCall;
  QuizService(this.apiCall);

  static Future<Quizes> getQuizes() {
    return ApiCall().getQuiz();
  }
}