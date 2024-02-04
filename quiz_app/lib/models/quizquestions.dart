//! This File  Contains the questions structure  for the quiz , Use the quiz_questions function inside questions.dart file to create questions 
class quiz_questions {
  const quiz_questions(this.text , this.answers);
  final String text;
  final List <String> answers ; //! Do not write String as string , the S will be capital 
  List<String> getShuffledAnswers(){
    final getShuffledAnswers= List.of( answers);
    getShuffledAnswers.shuffle();
    return getShuffledAnswers;
  }
}