// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quizapp/controller/home_screen_controller.dart';
import '../../../core/constants/color_contants.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int? selectedAnswerIndex;
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
                                          color: selectedAnswerIndex == index
                                              ? (selectedAnswerIndex ==
                                                      HomeScreenController
                                                          .questions[
                                                              currentQuestionIndex]
                                                          .correctAnswerIndex)
                                                  ? Colors.green
                                                  : Colors.red
                                              : ColorConstant.primaryWhite)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        HomeScreenController
                                            .questions[currentQuestionIndex]
                                            .optionList[index],
                                        style: TextStyle(
                                            color: ColorConstant.primaryWhite),
                                      ),
                                      Icon(Icons.circle_outlined,
                                          color: ColorConstant.primaryWhite)
                                    ],
                                  ),
                                ),
                              ),
                            ))),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    if (currentQuestionIndex <
                        HomeScreenController.questions.length - 1) {
                      currentQuestionIndex++;
                      selectedAnswerIndex = null;
                      setState(() {});
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
}
