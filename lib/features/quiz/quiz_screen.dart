import 'package:flutter/material.dart';
import 'package:programming_hero_quiz_flutter/data/models/answers.dart';
import 'package:programming_hero_quiz_flutter/data/viewmodel/quiz_view_model.dart';
import 'package:programming_hero_quiz_flutter/utils/constants.dart';
import 'package:programming_hero_quiz_flutter/widgets/custom_gradient_button.dart';
import 'package:programming_hero_quiz_flutter/widgets/custom_text.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    QuizViewModel quizViewModel = context.watch<QuizViewModel>();
    // quizViewModel.getValue();
    double containerHeight = MediaQuery.of(context).size.width;
    print('=========${quizViewModel.currentQuestion}');
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 60.0,
              ),
              UpperSection(
                totalQuestion: quizViewModel.totalQuestion,
                totalScore: quizViewModel.totalScore,
                currentQuestion: quizViewModel.currentQuestionNo,
              ),
              QuestionSection(
                containerHeight: containerHeight,
                point: quizViewModel.questionPoint,
                imageUrl: quizViewModel.imageUrl,
                questionString: quizViewModel.questionString,
              ),
              SizedBox(
                height: 8.0,
              ),
              AnswerSection(
                quizViewModel: quizViewModel,
                a: quizViewModel.options?.a,
                b: quizViewModel.options?.b,
                c: quizViewModel.options?.c,
                d: quizViewModel.options?.d,
              ),
              SizedBox(
                height: 12,
              ),
              CustomGradientButton(
                buttonText: 'next',
                isGradient: false,
                buttonColor: Colors.white,
                isBorder: true,
                borderColor: Colors.white,
                buttonWidth: 100.0,
                borderRadius: 8,
                buttonTextStyle: AppTextStyle.largeBoldBlueTextStyle,
                onTap: () {
                  quizViewModel.increaseIndex();
                  // Navigator.pushNamed(context, AppRoutes.appSignIn);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnswerSection extends StatelessWidget {
  const AnswerSection({
    this.a,
    this.b,
    this.c,
    this.d,
    Key? key,
    required this.quizViewModel,
  }) : super(key: key);

  final QuizViewModel quizViewModel;

  final String? a, b, c, d;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 18.0, right: 18.0, bottom: 6.0, top: 6.0),
            child: CustomGradientButton(
              buttonText: a!,
              isGradient: false,
              buttonColor: Colors.white,
              isBorder: true,
              borderColor: quizViewModel.aColor,
              buttonWidth: MediaQuery.of(context).size.width,
              borderRadius: 8,
              buttonTextStyle: AppTextStyle.largeBoldBlueTextStyle,
              onTap: () {
                quizViewModel.pressedAns("A");
                // Navigator.pushNamed(context, AppRoutes.appSignIn);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 18.0, right: 18.0, bottom: 6.0, top: 6.0),
            child: CustomGradientButton(
              buttonText: b!,
              isGradient: false,
              buttonColor: Colors.white,
              isBorder: true,
              borderColor: quizViewModel.bColor,
              buttonWidth: MediaQuery.of(context).size.width,
              borderRadius: 8,
              buttonTextStyle: AppTextStyle.largeBoldBlueTextStyle,
              onTap: () {
                quizViewModel.pressedAns("B");
                // Navigator.pushNamed(context, AppRoutes.appSignIn);
              },
            ),
          ),
          c != null
              ? Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, right: 18.0, bottom: 6.0, top: 6.0),
                  child: CustomGradientButton(
                    buttonText: c!,
                    isGradient: false,
                    buttonColor: Colors.white,
                    isBorder: true,
                    borderColor: quizViewModel.cColor,
                    buttonWidth: MediaQuery.of(context).size.width,
                    borderRadius: 8,
                    buttonTextStyle: AppTextStyle.largeBoldBlueTextStyle,
                    onTap: () {
                      quizViewModel.pressedAns("C");
                      // Navigator.pushNamed(context, AppRoutes.appSignIn);
                    },
                  ),
                )
              : Container(),
          d != null
              ? Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, right: 18.0, bottom: 6.0, top: 6.0),
                  child: CustomGradientButton(
                    buttonText: d!,
                    isGradient: false,
                    buttonColor: Colors.white,
                    isBorder: true,
                    borderColor: quizViewModel.dColor,
                    buttonWidth: MediaQuery.of(context).size.width,
                    borderRadius: 8,
                    buttonTextStyle: AppTextStyle.largeBoldBlueTextStyle,
                    onTap: () {
                      quizViewModel.pressedAns("D");
                      // Navigator.pushNamed(context, AppRoutes.appSignIn);
                    },
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

class QuestionSection extends StatelessWidget {
  const QuestionSection({
    Key? key,
    this.point,
    this.imageUrl,
    this.questionString,
    required this.containerHeight,
  }) : super(key: key);

  final double containerHeight;
  final int? point;
  final String? imageUrl;
  final String? questionString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Container(
        height: containerHeight - 30,
        width: containerHeight - 30,
        decoration: AppConstant.smallRectDecoration,
        child: Column(
          children: [
            CustomText(
                text: '$point Point',
                textStyle: AppTextStyle.largeBoldBlueTextStyle,
                bottom: 12.0,
                top: 12.0),
            imageUrl != null
                ? Image(
                    height: containerHeight * 0.4,
                    width: containerHeight * 0.4,
                    image: NetworkImage(imageUrl!),
                  )
                : Container(),
            CustomText(
                text: questionString!,
                textStyle: AppTextStyle.largeBoldBlueTextStyle,
                bottom: 12.0,
                top: 12.0,
                left: 8.0,
                right: 8.0,
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

class UpperSection extends StatelessWidget {
  const UpperSection({
    this.totalQuestion,
    this.currentQuestion,
    this.totalScore,
    Key? key,
  }) : super(key: key);
  final int? totalQuestion, currentQuestion, totalScore;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'Question: $currentQuestion/$totalQuestion',
              textStyle: AppTextStyle.largeBoldBlueTextStyle,
            ),
            CustomText(
              text: 'Score: $totalScore',
              textStyle: AppTextStyle.largeBoldBlueTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}