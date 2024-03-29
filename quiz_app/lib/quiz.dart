import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'start_sceen.dart';
import 'questions_screen.dart';
import 'results_screen.dart';
 //TODO--NOTE!!! The lines marked with TODO in this entire project were serious bugs that  I had to fix in order to make the code work.
///! This is how you will import the file from another dart file
//TODO: Please do not forget to do this import for all the dart files

class Quiz extends StatefulWidget {
const Quiz({super.key});
@override
State<Quiz> createState() {
return _QuizState();
}
}
class _QuizState extends State<Quiz> {  ///* This is the state class ,  we are defining a new class here to shange the screen 
 List <String> selectedanswers = [];  //TODO: This is the list of selected answers , Make sure to not assign it as final because we'll be resseting it 
  var activescreen = 'start-screen';   //? This is the variable which will be used to change the screen
   //* Here we are initialising activescreen with start-screen

  void switchScreen() {  
    setState(() {
      activescreen = 'questions-screen';  //? Here we are changing activescreen to questions-screen
    });  //? Activescreen is also defined here in this file too  , // Active screen is defined here at line 18
  }
  void chooseAnswer(String answer){  //! This is the function to choose the answer  
    selectedanswers.add(answer);  //? Selected answers is defined here in this file 
if ( selectedanswers.length==questions.length){  //! This is the condition to check if the length of the selected answers is equal to the length of the questions
setState(() {
activescreen='results_screen';  //! This is the condition to change the screen to start-screen
});
     ////// selectedanswers=[];  //! This is the condition to reset the selected answers
    }  
  //? selected answers is defined here in this file AT LINE 17
  }
  @override  
  //TODO: Don't Forget to use the @override keyword  before the build method
  Widget build(context) {   
//* In the earlier approach instead of defining this as ---" Widget screenwidget"
//* what we did 
//* is we defined a variable to change state 
//* and then we use ternirary operartor to change the screen
//*but in this  approach we are defining a widget to change the screen
//* we have written  this -----Widget screenwidget = Startscreen(switchScreen);
//* as an extra statement to use if else loop 
 Widget screenwidget=Startscreen(switchScreen);
 if(activescreen=='questions-screen'){ ///! This is the new   method to change the screen
    screenwidget=QuestionsScreen(onSelectAnswer: chooseAnswer,) //TODO: Do not forget to pass chooseanswer inside onselectanswer
     ;}  ///? onSelectAnswer is defined inside questions_screen.dart at line 12 //? chooseAnswer is defined here in this file at line 26
   //? switchscrren is defined here at line 22

   if (activescreen=='results_screen'){  //! This is the new method to change the screen
     screenwidget=results_screen(chosennanswer:selectedanswers);}  //! This is the new method to change the screen
   //? chosennanswer is defined inside results_screen.dart at line 4 , it is the list of selected answers
   //? selectedanswers is defined here at line 18 
    return MaterialApp(  
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF480366), Color(0xFFA60AF4)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child:
          screenwidget),),);}}  //* This statement will be used in the new 
          //*approach to change the screen
        
        ///!This code below is the alternate method to change the screen  just replace the screenwidget in child with active screen , 
        ///!currently we are not using the alternate method 
         ///'  //* This is how ternary operator is used in the code
         //*  condition ? value_if_true : value_if_false
              ///  activescreen == 'start-screen' ? Startscreen(switchScreen) : QuestionsScreen(onSelectAnswer: chooseAnswer ),   //? on Select answer is defined inside questions_screen.dart at line 12
                                                           //?switchscrren is defined here at line 22  //? chooseAnswer is defined here in this file at line 26
   ///     ),                 
  ///    ),
 ///   );
  ///}}
/////
///??? THIS SECTON CONTAINS COMMON DOUBTS REGARDING THIS CODE 
///?In this code, `@override` is used to tell Dart that we're intentionally replacing or "overriding"
///?a method from a parent class with a new one.In simple terms, think of it like this: You have a basic recipe (the parent class) for making a sandwich that says you need to add lettuce. But in your version of the recipe (the child class), you want to use spinach instead of lettuce. So you "override" the 
///?part of the recipe that adds lettuce with a new part that adds spinach. 
///?The `@override` is just a note to say "Hey, I know the original recipe said lettuce, but I'm intentionally using spinach instead.In your code, `@override` is used twice:1. In the `Quiz` class, `@override` is used before `createState()`. This means you're providing your own version of the `createState()` 
///?method that comes from the `StatefulWidget` class (the parent class).2. In the `_QuizState` class, `@override` is used before `build()`. This means you're providing your own version of the `build()` method that comes from the `State` class (the parent class).\
 