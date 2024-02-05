//! This File  Contains the questions structure  for the quiz , Use the quiz_questions function inside questions.dart file to create questions 
 //TODO--NOTE!!! The lines marked with TODO in this entire project were serious bugs that  I had to fix in order to make the code work.
class quiz_questions {
  const quiz_questions(this.text , this.answers);
  final String text;
  final List <String> answers ; //! Do not write String as string , the S will be capital 
  List<String> getShuffledAnswers(){
    final shuffledAnswers= List.of( answers);//? answers is defined here in this file
    shuffledAnswers.shuffle();  
    return shuffledAnswers;
  }
}