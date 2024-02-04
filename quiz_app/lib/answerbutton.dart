import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.Answer, this.onTap, {super.key});
  final String Answer;
  final void Function()
      onTap; //! This is how you would define a parameter for constructor function in Dart
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(Answer),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
    );
  }
}
