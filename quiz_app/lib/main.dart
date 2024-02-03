import 'package:flutter/material.dart';
import 'start_sceen.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF480366), Color(0xFFA60AF4)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Startscreen(Startscreen.new)))));} //! This is how you will call the function class 



          
//TODO: 