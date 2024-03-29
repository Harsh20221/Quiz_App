import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary( this.summarydata,{super.key});   //TODO: Write super.key after summary data inside parenthesis 
    final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
  
    return Column(
      children: summarydata.map((data) { //? Summarydata is defined here at line 4
        return Row(
          children: [
            Expanded(child: Column(  //* Here Expanded is used to expand the column to the entire width of the screen such that the contents do not Overlap 
                  children: [  //* Here the below code is helping to display the summary of the quiz
                    Text(((data['questions_index'] as int) + 1).toString()),  //TODO: Make sure to type the correct name of the data key as initialised inside results_screen.dart , do not type 'questions' as 'question' inside the data string 
                      //? Here we are Converting a int to string using toString() method
                    Text(data['questions'] as String),  //? Here we are converting a string to int using as int 
                    const SizedBox(height: 5),
                    Text(data['correctanswers'] as String), 
                    Text(data['user_answers'] as String)
                  ],
                ),
            ),
          ], ///* Here we are adding 1 to the index of the question because our index starts from 0 and we want to display the question number starting from 1
        );
      }).toList(),//? Here we are converting the map to list, map returns a iterable so we are converting it to list
    );
  }
}
