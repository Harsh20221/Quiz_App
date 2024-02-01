import 'package:flutter/material.dart';
import 'start_sceen.dart';

///! This is how you will import the file from another dart file
//! Please do not forget to do this import

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() {
    //! Do not write createState as createstate(){} it will give error , the s in the state is in capital
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
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
                child: Startscreen())));
  } //! This is how you will call the function class
}

///??? COMMENTS---
///?In this code, `@override` is used to tell Dart that we're intentionally replacing or "overriding"
///?a method from a parent class with a new one.In simple terms, think of it like this: You have a basic recipe (the parent class) for making a sandwich that says you need to add lettuce. But in your version of the recipe (the child class), you want to use spinach instead of lettuce. So you "override" the 
///?part of the recipe that adds lettuce with a new part that adds spinach. 
///?The `@override` is just a note to say "Hey, I know the original recipe said lettuce, but I'm intentionally using spinach instead.In your code, `@override` is used twice:1. In the `Quiz` class, `@override` is used before `createState()`. This means you're providing your own version of the `createState()` 
///?method that comes from the `StatefulWidget` class (the parent class).2. In the `_QuizState` class, `@override` is used before `build()`. This means you're providing your own version of the `build()` method that comes from the `State` class (the parent class).



