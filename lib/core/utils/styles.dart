import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const titleSize20 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: kFontFamily);
  static const titleSize18 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, fontFamily: kFontFamily);

  static const titleSize16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
}
