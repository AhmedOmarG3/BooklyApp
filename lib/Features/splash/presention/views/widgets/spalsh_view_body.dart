import 'package:bookly/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class SpalshViewBody extends StatelessWidget {
  const SpalshViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child:
        Image.asset(AssetsData.logo)
      
    );
  }
}
