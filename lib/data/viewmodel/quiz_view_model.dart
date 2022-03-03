import 'package:flutter/material.dart';
import 'package:programming_hero_quiz_flutter/data/models/answers.dart';
import 'package:programming_hero_quiz_flutter/data/models/questions.dart';
import 'package:programming_hero_quiz_flutter/data/models/quiz.dart';
import 'package:programming_hero_quiz_flutter/data/ropositories/quiz_ripository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuizViewModel extends ChangeNotifier {
  // QuizViewModel() {
  //   getQuiz();
  // }

  List<Questions>? _questionsList;
  List<Answers>? _answerList;
  Answers? _answers;
  int _currentQuestion = 0;
  int _currentQuestionNo = 1;
  int _totalQuestion = 0;
  int _totalScore = 0;
  int? _questionPoint;
  int _heighScore = 0;
  String? _questionString;
  String? _imageString;
  String? _correctAns;
  Color? _aColor = Colors.white;
  Color? _bColor = Colors.white;
  Color? _cColor = Colors.white;
  Color? _dColor = Colors.white;

  List<Questions>? get questionsList => _questionsList;
  List<Answers>? get answerList => _answerList;
  int get currentQuestion => _currentQuestion;
  int get currentQuestionNo => _currentQuestionNo;
  int get totalQuestion => _totalQuestion;
  int get totalScore => _totalScore;
  int get heighScore => _heighScore;
  String? get questionString => _questionString;
  String? get imageUrl => _imageString;
  int? get questionPoint => _questionPoint;
  Answers? get options => _answers;
  Color? get aColor => _aColor;
  Color? get bColor => _bColor;
  Color? get cColor => _cColor;
  Color? get dColor => _dColor;
  String? get correctAns => _correctAns;

  QuizViewModel() {
    getQuiz();
    // getValue();
    configSharedPref();
    getHighScore();
  }

  ///get quiz data
  getQuiz() async {
    Quizes quizes = await QuizRepository.getQuiz();

    _questionsList = quizes.questions;
    _totalQuestion = _questionsList!.length;
    Questions que = _questionsList![1];
    print('+++++++++++${que.correctAnswer}');
    getValue();

    // print('First Question ${questionList![1].question}');
    return questionsList;
    notifyListeners();
  }

  getValue() {
    _questionString = _questionsList![_currentQuestion].question;
    _imageString = questionsList![_currentQuestion].questionImageUrl;
    _questionPoint = questionsList![_currentQuestion].score;
    _answers = questionsList![_currentQuestion].answers;
    _correctAns = questionsList![_currentQuestion].correctAnswer;
    _aColor = Colors.white;
    _bColor = Colors.white;
    _cColor = Colors.white;
    _dColor = Colors.white;
    savedHighScore();

    notifyListeners();
  }

  pressedAns(String value) {
    switch (value) {
      case "A":
        if (_correctAns == "A") {
          _totalScore = _totalScore + _questionPoint!;
          _aColor = Colors.green;
        } else {
          _aColor = Colors.red;
        }
        notifyListeners();
        print("A");
        break;
      case "B":
        if (_correctAns == "B") {
          _totalScore = _totalScore + _questionPoint!;
          _bColor = Colors.green;
        } else {
          _bColor = Colors.red;
        }
        notifyListeners();
        print("B");
        break;
      case "C":
        if (_correctAns == "C") {
          _totalScore = _totalScore + _questionPoint!;
          _cColor = Colors.green;
          print('===========c');
        } else {
          _cColor = Colors.red;
        }
        notifyListeners();
        print("C");
        break;
      case "D":
        if (_correctAns == "D") {
          _totalScore = _totalScore + _questionPoint!;
          _dColor = Colors.green;
        } else {
          _aColor = Colors.red;
        }
        notifyListeners();
        print("D");
        break;
    }
  }

  configSharedPref() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.getInt("Score") ?? sharedPreferences.setInt("Score", 0);
  }

  getHighScore() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _heighScore = sharedPreferences.getInt("Score")!;
    notifyListeners();
  }

  savedHighScore() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    if (_totalScore > sharedPreferences.getInt("Score")!) {
      sharedPreferences.getInt("Score");
    }
    notifyListeners();
  }

  correctScore() {}

  increaseIndex() {
    if (_questionsList!.length > _currentQuestion) {
      _currentQuestion = _currentQuestion + 1;
      _currentQuestionNo = _currentQuestionNo + 1;
      getValue();
    }
    notifyListeners();
  }
}