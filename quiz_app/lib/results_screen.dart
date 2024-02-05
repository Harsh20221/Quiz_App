import 'package:flutter/material.dart';

class results_screen extends StatelessWidget {
  const results_screen({super.key,required this.chosennanswer});
  final List<String> chosennanswer;
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Text("Thank You for Solving this Quiz")],
        ),
      ),
    );
  }
}
