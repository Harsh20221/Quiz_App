import 'package:flutter/material.dart';
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(   ///! MAKE SURE TO RETURN SIZED BOX HERE to get the full screen
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //? This is used to align the column in the center
        children: [
          Text("This Question...." , style: TextStyle(color: Colors.white,)),
          OutlinedButton(onPressed: () {}, child: const Text("Answer1")),
          OutlinedButton(onPressed: () {}, child: const Text("Answer2")),
          OutlinedButton(onPressed: () {}, child:const  Text("Answer3")),
        ],
      ),
    );
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