

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMessege extends StatelessWidget {
  const CustomErrorMessege({super.key, required this.errMessage});
final String errMessage;
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(errMessage,style: Styles.titleSize18,textAlign:  TextAlign.center,));
  }
}