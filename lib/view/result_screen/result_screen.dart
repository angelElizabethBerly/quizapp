// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizapp/controller/home_screen_controller.dart';
import 'package:quizapp/core/constants/color_contants.dart';
import 'package:quizapp/view/category_screen/category_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.rightAnswerCount,
      required this.wrongAnswerCount,
      required this.totalQns});
  final int rightAnswerCount;
  final int wrongAnswerCount;
  final int totalQns;

  @override
  Widget build(BuildContext context) {
    final percentage = (rightAnswerCount / totalQns) * 100;
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Congrats!",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: "\n${percentage.round()}% score",
                          style: TextStyle(color: ColorConstant.primaryGreen))
                    ])),
          ),
          SizedBox(height: 15),
          Text(
            """Correct Answers: $rightAnswerCount \nWrong Answers: $wrongAnswerCount \nSkipped Questions: ${totalQns - rightAnswerCount - wrongAnswerCount}""",
            textAlign: TextAlign.center,
            style: TextStyle(color: ColorConstant.primaryWhite, fontSize: 15),
          ),
          SizedBox(height: 15),
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  side: MaterialStatePropertyAll(BorderSide(
                      color: ColorConstant.primaryWhite, width: 2.5)),
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.orange)),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => CategoryScreen()));
              },
              child: Text(
                "Restart",
                style: TextStyle(
                    color: ColorConstant.primaryWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ))
        ],
      ),
    );
  }
}
