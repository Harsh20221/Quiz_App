import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answerbutton.dart';
import 'package:quiz_app/data/questions.dart';

//TODO--NOTE!!! The lines marked with TODO in this entire project were serious bugs that  I had to fix in order to make the code work.
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(
      {super.key,
      required this.onSelectAnswer}); //! The name of the class will be same as the file name ,
  //TODO: Make sure to add required with onSelectAnswer when defining it inside  const QuestionsScreen along with super.key
  final void Function(String answer) onSelectAnswer;
  //!! Make sure to define the void Function () after the const QuestionsScreen

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerquestion(String selectedanswers) {
    widget.onSelectAnswer(selectedanswers);  //! Make sure to write it as widget  not Widget , W is going to be in small letters 
//? on select answer is defined here in this file at line 12
    setState(() {
      ////TODO:!!!!!!!!!!!!!!!!!!!!VERY VERY IMPORTANT -- Make sure to write setState like this --
      //TODO setState((){}); or else it'll not work and you won't be able to change the screen

      currentQuestionIndex++;
    });
  }

  @override
  Widget build( context) {
    final currentquestions = questions[
        currentQuestionIndex]; //? This is how you'll access the list of objects from the other file
    return SizedBox(  //? currrentQuestionsindex is defined here at line 22

        ///! MAKE SURE TO RETURN SIZED BOX HERE to get the full screen
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(
              40), //! Margin will always be inside Container and not inside SizedBox , use wrap with container to get margin
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, //? This is used to align the column in the center
            crossAxisAlignment: CrossAxisAlignment.stretch,

            ///TODO: use crossAlisAlignment.stretch  to have buttons with equal width , if you use centre then the buttons will not be of equal width
            children: [
              Text(
                currentquestions.text,
                style: GoogleFonts.lato(  ///? Use GoogleFonts.lato to change the font style , it is defined from gooogle font library 
                    textStyle: const TextStyle(
                        fontSize: 30,  
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                textAlign: TextAlign.center,),
              const SizedBox(height: 30),

              ///TODO: close the return AnswerButton ( AnswerText : answers, onTap: (){}); with a semicolon
              ...currentquestions.getShuffledAnswers().map((answer) { //? getshuffledAnswers is defined inside quizquestions.dart file
                return AnswerButton(
                    answertext: answer, //? answer is defined inside quiz.dat at line 26
                    onTap: () {  //? onTap is defined inside answerbutton file at line 7
                      answerquestion(answer);  //? string answer is defined inside quiz.dat at line 26 
                    });
              }), //! Use the spread operator to access the list of answers
            ],

            ///!Using ... currentquestions.getshuffledAnswers.map method n, we are coonvertting it into a list of widgets
          ),
        ));
  }
}





































//* This sections contains common Doubts and Queries regarding this code
/* ///?111111111111111  `State<QuestionsScreen> createState()` is a rule for a Flutter widget named `QuestionsScreen`. This rule says: 
"When you need to remember changes (like user input or data from the internet), 
use the instructions I'll provide in `createState()` to keep track of those changes.
So, ///?`createState()` is like a memory box for the `QuestionsScreen` widget. 
It helps the widget remember things that can change over time. 
/?The actual instructions for what to remember and how to handle changes would be inside the `createState()` method, 
which is not shown in your selected code. */

/*//?2222222222222222 in very simple terms, `super.key` is like a special tag or label you can give to your
 `QuestionsScreen` when you create it. 
//?This `key` helps Flutter to identify that specific `QuestionsScreen` later on.
//? It's like if you had a bunch of boxes and you put a unique label on one of them so 
//you could find it easily later*/

/* //?333333333333In this code, `@override` is used to tell Dart that we're intentionally replacing or "overriding"
 a method from a parent class with a new one.
////?In simple terms, think of it like this: You have a basic recipe (the parent class) for making a sandwich that says 
///you need to add lettuce.
///? But in your version of the recipe (the child class), you want to use spinach instead of lettuce. 
///?So you "override" the part of the recipe 
///?that adds lettuce with a new part that adds spinach. The `@override` is just a note to say "Hey,
///? I know the original recipe said lettuce, but I'm intentionally using spinach instead."

///?In your code, `@override` is used twice:
///
1. //?In the `Quiz` class, `@override` is used before `createState()`. T
his means you're providing your own version of the `createState()`
 method that comes from the `StatefulWidget` class (the parent class).
2. //?In the `_QuizState` class, `@override` is used before `build()`. 
This means you're providing your own version of the `build()` method that comes from the 
`State` class (the parent class). */
