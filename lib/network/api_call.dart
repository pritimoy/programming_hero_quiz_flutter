import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:programming_hero_quiz_flutter/data/models/quiz.dart';

class ApiCall {
  var baseUrl = "https://herosapp.nyc3.digitaloceanspaces.com";
  var quiz = "/quiz.json";

  Future<Quizes> getQuiz() async {
    final quizUrl = Uri.parse('$baseUrl/quiz.json');
    final headers = {"Content-type": "application/json"};
    final quizResponse = await http.get(quizUrl, headers: headers);
    print('=============${quizResponse.statusCode}');
    if (quizResponse.statusCode == 200) {
      return Quizes.fromJson(json.decode(quizResponse.body));
    } else {
      throw Exception("Error getting quiz");
    }
  }
}