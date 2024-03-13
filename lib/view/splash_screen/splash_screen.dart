// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../core/constants/color_contants.dart';
import 'package:quizapp/view/quiz_screen/quiz_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => QuizScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Center(
          child: Text("QuizApp",
              style: TextStyle(
                  color: ColorConstant.primaryWhite,
                  fontSize: 30,
                  fontWeight: FontWeight.bold))),
    );
  }
}
