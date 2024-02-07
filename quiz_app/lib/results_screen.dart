import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class results_screen extends StatelessWidget {
  const results_screen({super.key, required this.chosennanswer});
  final List<String>
      chosennanswer; //? Here we are taking the chosennanswer as a parameter from the quiz_screen.dart
  List<Map<String, Object>> getSummaryData() {
    //* Here Map are collection of key value pairs , where key is the name of the variable and value is the value of the variable
    //* Make sure to not confuse Map with map as Map when in Uppercase is a collection of key value pairs and map when in lowercase is a function that is used to transform the elements of the list
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosennanswer.length; i++) {
      summary.add({
        'questions_index': i,
        'questions': questions[i].text,
        'correctanswers': questions[i].answers[0],
        'user_answers': chosennanswer[i]
      });
    } //? chosenanswer is defined here at line 8
    return summary;
  } //TODO: Do not forget to add return summary in the end of the function ///TODO: Make sure to add [i] index value  after chosennanswer

  //? Here we are making summary of the quiz , we have specified answers as 0 because we have our first answer always as the correct answer
  @override
  Widget build(context) {
    final summarydata =
        getSummaryData(); //? Here we are calling the getSummaryData to use it's values here // get sumary data is defined inside here at line 8
    final numtotalquestions = questions
        .length; //? questions is defined inside questions.dart at line 4
    final numcorrectquestions = summarydata.where((data) {
      return data['user_answers'] == data['correctanswers'];
    }).length; //? summarydata is defined here at line 20
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("You Answered $numcorrectquestions out of $numtotalquestions"),
            QuestionsSummary(summarydata),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text("Restart Quiz"))
          ], //? QuestionsSummary is defined insided questions_summary.dart at line 3
          //? summarydata is defined here at line 20
        ),
      ),
    );
  }
}
