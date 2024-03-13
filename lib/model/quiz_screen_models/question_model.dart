class QuestionModel {
  String question;
  List<String> optionList;
  int correctAnswerIndex;

  QuestionModel(
      {required this.question,
      required this.optionList,
      required this.correctAnswerIndex});
}
