import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:programming_hero_quiz_flutter/utils/constants.dart';
import 'package:programming_hero_quiz_flutter/widgets/custom_gradient_button.dart';
import 'package:programming_hero_quiz_flutter/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage(
                  'assets/images/phq_logo.png',
                ),
                width: MediaQuery.of(context).size.width * 0.70,
              ),
            ),
            CustomText(
              text: 'Quiz',
              textStyle: AppTextStyle.xxxLargeBoldWhitTextStyle,
              top: 2.0,
              bottom: 32.0,
            ),
            CustomText(
                text: 'Highscore',
                textStyle: AppTextStyle.xLargeBoldWhiteTextStyle,
                bottom: 2.0),
            CustomText(
                text: '500 Point',
                textStyle: AppTextStyle.largeBoldWhiteTextStyle,
                bottom: 40.0),
            CustomGradientButton(
              buttonText: 'Start',
              isGradient: false,
              buttonHeight: 42.0,
              buttonColor: Colors.white,
              isBorder: false,
              buttonWidth: MediaQuery.of(context).size.width * 0.6,
              borderRadius: 8,
              buttonTextStyle: AppTextStyle.xLargeBoldBlackTextStyle,
              onTap: () {
                Navigator.pushNamed(context, '/quiz');
                // Navigator.pushNamed(context, AppRoutes.appSignIn);
              },
            ),
          ],
        ),
      ),
    );
  }
}