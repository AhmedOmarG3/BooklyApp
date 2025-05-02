import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/splash/presention/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SpalshViewBody extends StatefulWidget {
  const SpalshViewBody({super.key});

  @override
  State<SpalshViewBody> createState() => _SpalshViewBodyState();
}

class _SpalshViewBodyState extends State<SpalshViewBody> with SingleTickerProviderStateMixin {
  @override
  
 late AnimationController animationController;
 late Animation<Offset> animation;

 @override
 void initState() {
    animationController=AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation=Tween<Offset>(begin:const  Offset(0,2),end: const Offset(0,0)).animate(animationController);
    animationController.forward();
    super.initState();
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(animation: animation),
      ],
    );
  }
}
