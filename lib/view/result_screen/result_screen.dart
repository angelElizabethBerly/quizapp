// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/controller/home_screen_controller.dart';
import 'package:quizapp/core/constants/color_contants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.rightAnswerCount});
  final int rightAnswerCount;

  @override
  Widget build(BuildContext context) {
    final percentage =
        (rightAnswerCount / HomeScreenController.questions.length) * 100;
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Center(
          child: Text("Your score is \n${percentage.round()}% ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorConstant.primaryWhite,
                  fontSize: 35,
                  fontWeight: FontWeight.bold))),
    );
  }
}
