import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton(
      {Key? key,
      required this.onTap,
      required this.buttonText,
      this.buttonHeight,
      this.buttonColor,
      this.buttonWidth,
      this.buttonTextStyle,
      required this.isGradient,
      this.gradientEndC = const Color(0xff4348C8),
      this.gradientStartC = const Color(0xff253477),
      this.borderRadius = 10.0,
      this.isBorder = true,
      this.isShadow = false,
      this.borderColor})
      : super(key: key);
  final Function() onTap;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final Color? buttonColor;
  final double? borderRadius;
  final double? buttonWidth;
  final bool isGradient;
  final double? buttonHeight;
  final Color? gradientStartC;
  final Color? gradientEndC;
  final bool isBorder;
  final bool isShadow;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Container(
          height: buttonHeight,
          width: buttonWidth,
          padding: const EdgeInsets.all(4.0),
          decoration: isGradient
              ? BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      gradientStartC!,
                      gradientEndC!,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(borderRadius!),
                )
              : BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(borderRadius!),
                  border: isBorder
                      ? Border.all(width: 1.2, color: borderColor!)
                      : Border.all(width: 0.0, color: buttonColor!),
                  boxShadow: [
                    isShadow
                        ? BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 1), // changes position of shadow
                          )
                        : const BoxShadow(
                            color: Colors.transparent,
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 0),
                          ),
                  ],
                ),
          child: Center(
            child: Text(
              buttonText,
              style: buttonTextStyle,
              // softWrap: false,
              // overflow: TextOverflow.ellipsis,
              // maxLines: 1,
            ),
          ),
        ),
      ),
    );
  }
}