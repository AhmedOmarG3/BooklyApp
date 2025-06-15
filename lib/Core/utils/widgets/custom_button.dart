import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonColor,
    this.bottomRightRadius = 0,
    this.bottomLeftRadius = 0,
    this.topRightRadius = 0,
    this.topLeftRadius = 0,
    required this.text,
    required this.textColor,
  });
  final Color buttonColor;
  final double bottomRightRadius;
  final double bottomLeftRadius;
  final double topRightRadius;
  final double topLeftRadius;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll(
            Size(width(context) * 0.45, hieght(context) * 0.06)),
        backgroundColor: WidgetStatePropertyAll(buttonColor),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(topLeftRadius),
                bottomLeft: Radius.circular(bottomLeftRadius),
                topRight: Radius.circular(topRightRadius),
                bottomRight: Radius.circular(bottomRightRadius)))),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: Styles.titleSize20.copyWith(color: textColor),
      ),
    );
  }
}
