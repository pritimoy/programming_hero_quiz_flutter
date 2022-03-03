import 'package:flutter/material.dart';
import 'package:programming_hero_quiz_flutter/utils/constants.dart';
import 'package:programming_hero_quiz_flutter/widgets/custom_gradient_button.dart';
import 'package:programming_hero_quiz_flutter/widgets/custom_text.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 60.0,
                ),
                Container(
                  height: 52.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Question: 2/10',
                          textStyle: AppTextStyle.largeBoldBlueTextStyle,
                        ),
                        CustomText(
                          text: 'Score: 300',
                          textStyle: AppTextStyle.largeBoldBlueTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16.0),
                  child: Container(
                    height: containerHeight - 30,
                    width: containerHeight - 30,
                    decoration: AppConstant.smallRectDecoration,
                    child: Column(
                      children: [
                        CustomText(
                            text: '100 Point',
                            textStyle: AppTextStyle.largeBoldBlueTextStyle,
                            bottom: 12.0,
                            top: 12.0),
                        Image(
                          height: containerHeight * 0.4,
                          width: containerHeight * 0.4,
                          image:
                              AssetImage('assets/images/question_images.jpg'),
                        ),
                        CustomText(
                            text:
                                'What is this logo? What is this logo What is this logo?',
                            textStyle: AppTextStyle.largeBoldBlueTextStyle,
                            bottom: 12.0,
                            top: 12.0,
                            left: 8.0,
                            right: 8.0,
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, right: 18.0, bottom: 8.0, top: 8.0),
                        child: CustomGradientButton(
                          buttonText: 'CSS Hello this is test option',
                          isGradient: false,
                          buttonColor: Colors.white,
                          isBorder: true,
                          borderColor: Colors.white,
                          buttonWidth: MediaQuery.of(context).size.width,
                          borderRadius: 8,
                          buttonTextStyle: AppTextStyle.largeBoldBlueTextStyle,
                          onTap: () {
                            Navigator.pushNamed(context, '/quiz');
                            // Navigator.pushNamed(context, AppRoutes.appSignIn);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, right: 18.0, bottom: 8.0, top: 8.0),
                        child: CustomGradientButton(
                          buttonText: 'CSS Hello this is test option',
                          isGradient: false,
                          buttonColor: Colors.white,
                          isBorder: true,
                          borderColor: Colors.white,
                          buttonWidth: MediaQuery.of(context).size.width,
                          borderRadius: 8,
                          buttonTextStyle: AppTextStyle.largeBoldBlueTextStyle,
                          onTap: () {
                            Navigator.pushNamed(context, '/quiz');
                            // Navigator.pushNamed(context, AppRoutes.appSignIn);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, right: 18.0, bottom: 8.0, top: 8.0),
                        child: CustomGradientButton(
                          buttonText: 'CSS Hello this is test option',
                          isGradient: false,
                          buttonColor: Colors.white,
                          isBorder: true,
                          borderColor: Colors.white,
                          buttonWidth: MediaQuery.of(context).size.width,
                          borderRadius: 8,
                          buttonTextStyle: AppTextStyle.largeBoldBlueTextStyle,
                          onTap: () {
                            Navigator.pushNamed(context, '/quiz');
                            // Navigator.pushNamed(context, AppRoutes.appSignIn);
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}