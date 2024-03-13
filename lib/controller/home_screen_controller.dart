import 'package:quizapp/model/quiz_screen_models/question_model.dart';

class HomeScreenController {
  static List<QuestionModel> questions = [
    QuestionModel(
      question: "What is the capital of France?",
      optionList: ["Paris", "Berlin", "London", "Madrid"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Which planet is known as the Red Planet?",
      optionList: ["Mars", "Jupiter", "Venus", "Mercury"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "What is the chemical symbol for water?",
      optionList: ["H2O", "CO2", "NaCl", "O2"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "What is the main building block of a Flutter application?",
      optionList: ["Widgets", "Components", "Modules", "Views"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Which programming language is used to develop Flutter apps?",
      optionList: ["Dart", "Java", "Swift", "Kotlin"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "What does the 'setState' method do in Flutter?",
      optionList: [
        "Updates the UI",
        "Resets the state of the entire application",
        "Clears the state of the current widget",
        "None of the above"
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question:
          "What command is used to create a new Flutter project from the command line?",
      optionList: [
        "flutter create",
        "flutter new",
        "create flutter",
        "new flutter"
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question:
          "What is the purpose of the 'pubspec.yaml' file in a Flutter project?",
      optionList: [
        "To manage dependencies",
        "To store user preferences",
        "To define the layout of the user interface",
        "To specify the app's entry point"
      ],
      correctAnswerIndex: 0,
    ),
  ];
}
