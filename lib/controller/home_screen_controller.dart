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

  static List<QuestionModel> sportsQuestions = [
    QuestionModel(
      question: "Who won the FIFA World Cup in 2018?",
      optionList: ["Brazil", "Germany", "France", "Spain"],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: "Which sport does Serena Williams play?",
      optionList: ["Tennis", "Golf", "Basketball", "Swimming"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Which country won the most Olympic gold medals in 2016?",
      optionList: ["USA", "China", "Russia", "Great Britain"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Who is known as 'The Greatest' in boxing?",
      optionList: [
        "Floyd Mayweather",
        "Mike Tyson",
        "Muhammad Ali",
        "Manny Pacquiao"
      ],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: "Which team has won the most Super Bowl titles?",
      optionList: [
        "Pittsburgh Steelers",
        "New England Patriots",
        "Dallas Cowboys",
        "San Francisco 49ers"
      ],
      correctAnswerIndex: 0,
    ),
  ];

  static List<QuestionModel> chemistryQuestions = [
    QuestionModel(
      question: "What is the atomic number of Carbon?",
      optionList: ["6", "8", "12", "14"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Which element is the most abundant in the universe?",
      optionList: ["Hydrogen", "Oxygen", "Carbon", "Helium"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "What is the chemical symbol for Gold?",
      optionList: ["Ag", "Au", "Hg", "Pt"],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: "What is the pH of pure water at room temperature?",
      optionList: ["6", "7", "8", "9"],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question: "Which gas is known as laughing gas?",
      optionList: ["Oxygen", "Nitrous Oxide", "Carbon Dioxide", "Methane"],
      correctAnswerIndex: 1,
    ),
  ];

  static List<QuestionModel> mathQuestions = [
    QuestionModel(
      question: "What is the value of pi (π)?",
      optionList: ["3.14", "3.141", "3.1415", "3.14159"],
      correctAnswerIndex: 3,
    ),
    QuestionModel(
      question: "What is the result of 5 * 8?",
      optionList: ["30", "35", "40", "45"],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: "What is the square root of 64?",
      optionList: ["6", "7", "8", "9"],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: "What is the value of 2^3?",
      optionList: ["4", "6", "8", "10"],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question: "What is the result of 15 - 7?",
      optionList: ["6", "7", "8", "9"],
      correctAnswerIndex: 1,
    ),
  ];

  static List<QuestionModel> historyQuestions = [
    QuestionModel(
      question: "Who was the first president of the United States?",
      optionList: [
        "George Washington",
        "Thomas Jefferson",
        "Abraham Lincoln",
        "John Adams"
      ],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "In which year did World War I begin?",
      optionList: ["1914", "1916", "1918", "1920"],
      correctAnswerIndex: 0,
    ),
    QuestionModel(
      question: "Who was the last ruler of the Mughal Empire in India?",
      optionList: ["Shah Jahan", "Aurangzeb", "Akbar", "Babur"],
      correctAnswerIndex: 1,
    ),
    QuestionModel(
      question:
          "Which ancient civilization is known for building the Great Wall of China?",
      optionList: [
        "Roman Empire",
        "Mayan Civilization",
        "Chinese Empire",
        "Inca Civilization"
      ],
      correctAnswerIndex: 2,
    ),
    QuestionModel(
      question:
          "Who was the first female Prime Minister of the United Kingdom?",
      optionList: [
        "Margaret Thatcher",
        "Theresa May",
        "Indira Gandhi",
        "Angela Merkel"
      ],
      correctAnswerIndex: 0,
    ),
  ];
}
