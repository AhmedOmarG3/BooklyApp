import 'package:bookly/Features/splash/presention/views/widgets/spalsh_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SpalshViewBody());
  }
}
