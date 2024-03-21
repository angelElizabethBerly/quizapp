// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quizapp/controller/home_screen_controller.dart';
import 'package:quizapp/model/quiz_screen_models/question_model.dart';
import 'package:quizapp/view/result_screen/result_screen.dart';
import '../../../core/constants/color_contants.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.selectedCategory});
  final String selectedCategory;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int? selectedAnswerIndex;
  int rightAnswerCount = 0;
  int wrongAnswerCount = 0;

  @override
  Widget build(BuildContext context) {
    List<QuestionModel> questions;
    if (widget.selectedCategory == "Sports") {
      questions = HomeScreenController.sportsQuestions;
    } else if (widget.selectedCategory == "Chemistry") {
      questions = HomeScreenController.chemistryQuestions;
    } else if (widget.selectedCategory == "Math") {
      questions = HomeScreenController.mathQuestions;
    } else {
      questions = HomeScreenController.historyQuestions;
    }
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
                  child: Text(questions[currentQuestionIndex].question,
                      style: TextStyle(
                          color: ColorConstant.primaryWhite, fontSize: 20)),
                ),
                SizedBox(height: 30),
                Column(
                    children: List.generate(
                        questions[currentQuestionIndex].optionList.length,
                        (index) => InkWell(
                              onTap: () {
                                if (selectedAnswerIndex == null) {
                                  selectedAnswerIndex = index;
                                  if (selectedAnswerIndex ==
                                      questions[currentQuestionIndex]
                                          .correctAnswerIndex) {
                                    rightAnswerCount++;
                                  } else {
                                    wrongAnswerCount++;
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
                                          color:
                                              optionColor(index, questions))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        questions[currentQuestionIndex]
                                            .optionList[index],
                                        style: TextStyle(
                                            color:
                                                optionColor(index, questions)),
                                      ),
                                      Icon(buildIcons(index, questions),
                                          color: optionColor(index, questions))
                                    ],
                                  ),
                                ),
                              ),
                            ))),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    if (selectedAnswerIndex != null) {
                      if (currentQuestionIndex < questions.length - 1) {
                        currentQuestionIndex++;
                        selectedAnswerIndex = null;
                        setState(() {});
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                    rightAnswerCount: rightAnswerCount,
                                    wrongAnswerCount: wrongAnswerCount,
                                    totalQns: questions.length)));
                      }
                    } else {
                      if (currentQuestionIndex < questions.length - 1) {
                        currentQuestionIndex++;
                        setState(() {});
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                    rightAnswerCount: rightAnswerCount,
                                    wrongAnswerCount: wrongAnswerCount,
                                    totalQns: questions.length)));
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
                      child: Text(selectedAnswerIndex != null ? "Next" : "Skip",
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

  Color optionColor(int index, List<QuestionModel> questions) {
    if (index == questions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      //to show green for right answer when selected answer is null
      return ColorConstant.primaryGreen;
    } else if (selectedAnswerIndex == index) {
      if (selectedAnswerIndex ==
          questions[currentQuestionIndex].correctAnswerIndex) {
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

  IconData? buildIcons(int index, List<QuestionModel> questions) {
    if (index == questions[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Icons.done;
    } else if (selectedAnswerIndex == index) {
      if (selectedAnswerIndex !=
          questions[currentQuestionIndex].correctAnswerIndex) {
        return Icons.close;
      }
    } else {
      return null;
    }
  }
}
