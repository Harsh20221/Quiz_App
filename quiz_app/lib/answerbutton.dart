import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  AnswerButton({required this.Answertext , required this.onTap,super.key});  //! Make sure this is how you'll pass arguments 
  //! to the constructor of the class , Make sure to enclose all the elememnts inside ({ }) first inside round brackets and then parenthesis 
  final  String Answertext;  
  final void Function() onTap;  //! Make sure to use void Function() instead of void Function
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(Answertext),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
    );
  }
}
 //TODO: Let's say in case your code is not working after a little  odification in the code , then ehat you should do is rewrite it from scratch 