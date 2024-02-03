import 'package:flutter/material.dart';
import 'start_sceen.dart';
import 'questions_screen.dart';

///! This is how you will import the file from another dart file
//! Please do not forget to do this import for all the dart files

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() {
    //! Do not write createState as createstate(){} it will give error , the s in the state is in capital
    return _QuizState();  //?This will return the state of the class _QuizState
  }
}

class _QuizState extends State<Quiz> { ///? This is the state of the class Quiz
 var activescreen='start-screen'; //! This is the variable which will be used to change the screen
  @override
  void initState() {
  
  void switchscreen() {
    setState(() {
      activescreen ='questions-screen';
          ; //? This is how you will change the screen  from start screen to Qestions screen ,
          //? this set state will make sure that the screen is changed
    });
  }

  @override
  Widget build(context) {
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
                child:activescreen=='start-screen'?Startscreen(switchscreen):const QuestionsScreen())));//*Here we'll have our variable activescreen , This'll help us to change screen based on user input 
  } //TODO: HERE MAKE SURE TO USE TERNARY OPERATOR TO CHANGE THE SCREEN  , TERNARY OPERATOR WILL BE USED TO CHANGE THE SCREEN BASED ON THE USER INPUT, ternary operators are like if else statements but they are used in a single line
}









///??? COMMENTS---
///?In this code, `@override` is used to tell Dart that we're intentionally replacing or "overriding"
///?a method from a parent class with a new one.In simple terms, think of it like this: You have a basic recipe (the parent class) for making a sandwich that says you need to add lettuce. But in your version of the recipe (the child class), you want to use spinach instead of lettuce. So you "override" the 
///?part of the recipe that adds lettuce with a new part that adds spinach. 
///?The `@override` is just a note to say "Hey, I know the original recipe said lettuce, but I'm intentionally using spinach instead.In your code, `@override` is used twice:1. In the `Quiz` class, `@override` is used before `createState()`. This means you're providing your own version of the `createState()` 
///?method that comes from the `StatefulWidget` class (the parent class).2. In the `_QuizState` class, `@override` is used before `build()`. This means you're providing your own version of the `build()` method that comes from the `State` class (the parent class).

//* This is how ternary operator is used in the code
//*  condition ? value_if_true : value_if_false



