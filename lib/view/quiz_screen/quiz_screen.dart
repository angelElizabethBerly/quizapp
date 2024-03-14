// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quizapp/controller/home_screen_controller.dart';
import 'package:quizapp/view/result_screen/result_screen.dart';
import '../../../core/constants/color_contants.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int? selectedAnswerIndex;
  int rightAnswerCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: ColorConstant.primaryBlueGrey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                      HomeScreenController
                          .questions[currentQuestionIndex].question,
                      style: TextStyle(
                          color: ColorConstant.primaryWhite, fontSize: 20)),
                ),
                SizedBox(height: 30),
                Column(
                    children: List.generate(
                        HomeScreenController
                            .questions[currentQuestionIndex].optionList.length,
                        (index) => InkWell(
                              onTap: () {
                                if (selectedAnswerIndex == null) {
                                  selectedAnswerIndex = index;
                                  if (selectedAnswerIndex ==
                                      HomeScreenController
                                          .questions[currentQuestionIndex]
                                          .correctAnswerIndex) {
                                    rightAnswerCount++;
                                  }
                                  print(rightAnswerCount);
                                  setState(() {});
                                }
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: optionColor(index))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        HomeScreenController
                                            .questions[currentQuestionIndex]
                                            .optionList[index],
                                        style: TextStyle(
                                            color: optionColor(index)),
                                      ),
                                      Icon(buildIcons(index),
                                          color: optionColor(index))
                                    ],
                                  ),
                                ),
                              ),
                            ))),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    if (selectedAnswerIndex != null) {
                      if (currentQuestionIndex <
                          HomeScreenController.questions.length - 1) {
                        currentQuestionIndex++;
                        selectedAnswerIndex = null;
                        setState(() {});
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                    rightAnswerCount: rightAnswerCount)));
                      }
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorConstant.primaryBlue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text("Next",
                          style: TextStyle(
                              color: ColorConstant.primaryWhite,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color optionColor(int index) {
    if (index ==
            HomeScreenController
                .questions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      //to show green for right answer when selected answer is null
      return ColorConstant.primaryGreen;
    } else if (selectedAnswerIndex == index) {
      if (selectedAnswerIndex ==
          HomeScreenController
              .questions[currentQuestionIndex].correctAnswerIndex) {
        //to show green if selected answer is correct
        return ColorConstant.primaryGreen;
      } else {
        //to show red if selected answer is wrong
        return ColorConstant.primaryRed;
      }
    } else {
      //to show default color
      return ColorConstant.primaryWhite;
    }
  }

  IconData? buildIcons(int index) {
    if (index ==
            HomeScreenController
                .questions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Icons.done;
    } else if (selectedAnswerIndex == index) {
      if (selectedAnswerIndex !=
          HomeScreenController
              .questions[currentQuestionIndex].correctAnswerIndex) {
        return Icons.close;
      }
    } else {
      return null;
    }
  }
}
