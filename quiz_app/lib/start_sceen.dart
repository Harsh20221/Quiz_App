import 'package:flutter/material.dart';
 //TODO--NOTE!!! The lines marked with TODO in this entire project were serious bugs that  I had to fix in order to make the code work.
class Startscreen extends StatelessWidget {
  Startscreen(this.startQuiz,
      {super.key}); //! The name Startscreen will be same as the class name don't change cases from upper to lower
  final Function startQuiz; //! This is the function which will be used to change the screen
  @override //? The word override will be written in small letters not like Override
  Widget build(context) {
 
    return Center(
        //! This Center will make sure that the widget is in the center of the screen
        child: Column(
      mainAxisSize: MainAxisSize //! Very important to write this
          .min, //? This will make sure that the column will take the minimum space required
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: const Color.fromRGBO(255, 255, 255, 150),
        ), //! This will add opacity to image
        const SizedBox(height: 80),

        ///* FUNFACT: to change the property of any widget and specify the widget elements and inside the widget use , to add multiple properties
        const Text(
          "Learn Flutter the fun Way ",
          style: TextStyle(
              fontSize: 24, color: Color.fromARGB(255, 237, 223, 252)),
        ),
        const SizedBox(
            height:
                30), //? To add space between two widgets use height inside SizedBox
        OutlinedButton.icon(
          //! In order to add icon in button write OutlinedButton.icon
          onPressed: () {
            startQuiz(); /// ? startQuiz is defined here in this file
          },
          icon: const Icon(Icons
              .arrow_right_alt), //! The icon will be written as icon and it is a must
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label: const Text("Start Quiz"), //! the child will be written as label
        )
      ],
    ));
  }
}
