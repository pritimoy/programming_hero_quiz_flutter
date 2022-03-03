import 'package:flutter/material.dart';
import 'package:programming_hero_quiz_flutter/data/viewmodel/quiz_view_model.dart';
import 'package:programming_hero_quiz_flutter/features/quiz/home_screen.dart';
import 'package:programming_hero_quiz_flutter/features/quiz/quiz_screen.dart';
import 'package:programming_hero_quiz_flutter/utils/constants.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const PHQuizApp());
}

class PHQuizApp extends StatefulWidget {
  const PHQuizApp({Key? key}) : super(key: key);

  @override
  _PHQuizAppState createState() => _PHQuizAppState();
}

class _PHQuizAppState extends State<PHQuizApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QuizViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppConstant.primaryColor,
          splashColor: AppConstant.primaryColor,
          scaffoldBackgroundColor: AppConstant.primaryColor,
          backgroundColor: AppConstant.primaryColor,
          textTheme: GoogleFonts.nunitoTextTheme(),
        ),
        home: HomeScreen(),
        routes: {
          '/home': (context) => HomeScreen(),
          '/quiz': (context) => QuizScreen(),
        },
      ),
    );
  }
}