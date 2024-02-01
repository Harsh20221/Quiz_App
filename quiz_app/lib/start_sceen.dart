import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  Startscreen(
      {super.key}); //! The name Startscreen will be same as the class name don't change cases from upper to lower
  @override //? The word override will be written in small letters not like Override
  Widget build(context) {
    return Center(
        child: Column(
      children: [
        Image.asset("assets/images/quiz-logo.png"),
        SizedBox(height: 80),
        Text(
          "Learn Flutter the fun Way ",
          style: TextStyle(
              fontSize: 24, color: Color.fromARGB(255, 237, 223, 252)),
        ),
        const SizedBox(height: 30), //? To add space between two widgets use height inside SizedBox
        OutlinedButton(onPressed:() {}, child:Text("Start Quiz") ,)
      ],
    ));
  }
}
