import 'package:flutter/material.dart';
import 'start_sceen.dart';
import 'questions_screen.dart';

///! This is how you will import the file from another dart file
//! Please do not forget to do this import for all the dart files

class Quiz extends StatefulWidget {
const Quiz({super.key});
@override
State<Quiz> createState() {
return _QuizState();
}
}
class _QuizState extends State<Quiz> {
  var activescreen = 'start-screen';   //? This is the variable which will be used to change the screen
   //* Here we are initialising activescreen with start-screen

  void switchScreen() {
    setState(() {
      activescreen = 'questions-screen';  //? Here we are changing activescreen to questions-screen
    });
  }

  @override  
  //TODO: Don't Forget to use the @override keyword  before the build method
  Widget build(context) {    
    ///* In the earlier approach instead of defining this Widget screenwidget what we did  is we defined a variable to change state 
    ///* and then we use ternirary operartor to change the screen
    ///*but in this approach we are defining a widget to change the screen
    ///* we have written  this -----Widget screenwidget = Startscreen(switchScreen); as an extra statement to use if else loop 
  ; Widget screenwidget=Startscreen(switchScreen);
  if(activescreen=='questions-screen'){ ///! This is an Alternate method to change the screen
    screenwidget=const QuestionsScreen() ;}
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
          child:screenwidget),),);}} 
        








        ///!This code below is the alternate method to change the screen  just replace the screenwidget in chile with active screen 
         ///activescreen == 'start-screen'  //* This is how ternary operator is used in the code
//*  condition ? value_if_true : value_if_false

            /// ? Startscreen(switchScreen)
       ////       : const QuestionsScreen(), 
        //),
      //),
    ///);
  ///}
/////
///??? THIS SECTON CONTAINS COMMON DOUBTS REGARDING THIS CODE 
///?In this code, `@override` is used to tell Dart that we're intentionally replacing or "overriding"
///?a method from a parent class with a new one.In simple terms, think of it like this: You have a basic recipe (the parent class) for making a sandwich that says you need to add lettuce. But in your version of the recipe (the child class), you want to use spinach instead of lettuce. So you "override" the 
///?part of the recipe that adds lettuce with a new part that adds spinach. 
///?The `@override` is just a note to say "Hey, I know the original recipe said lettuce, but I'm intentionally using spinach instead.In your code, `@override` is used twice:1. In the `Quiz` class, `@override` is used before `createState()`. This means you're providing your own version of the `createState()` 
///?method that comes from the `StatefulWidget` class (the parent class).2. In the `_QuizState` class, `@override` is used before `build()`. This means you're providing your own version of the `build()` method that comes from the `State` class (the parent class).\
 