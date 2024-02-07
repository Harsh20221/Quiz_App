import 'package:flutter/material.dart';
class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary( this.summarydata,{super.key});   //TODO: Write super.key after summary data inside parenthesis 
    final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summarydata.map((data) { //? Summarydata is defined here at line 4
        return Row(
          children: [  //* Here the below code is helping to display the summary of the quiz
            Text(((data['question'] as int) + 1).toString()), //? Here we are Converting a int to string using toString() method
          ], ///* Here we are adding 1 to the index of the question because our index starts from 0 and we want to display the question number starting from 1
        );
      }).toList(),//? Here we are converting the map to list, map returns a iterable so we are converting it to list
    );
  }
}
