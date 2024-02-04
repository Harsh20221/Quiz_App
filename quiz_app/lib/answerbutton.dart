import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  AnswerButton({required this.answertext , required this.onTap,super.key});  //! Make sure this is how you'll pass arguments 
  //! to the constructor of the class , Make sure to enclose all the elememnts inside ({ }) first inside round brackets and then parenthesis 
  final  String answertext; //! Write  final before the datatype of the variable , also write String in uppercase  
  final void Function() onTap;  //! Make sure to use void Function() instead of void Function don't forget ()
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,style: ElevatedButton.styleFrom(
       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
), //! Make sure to use EdgeInsets.symmetric after using padding: then apecify vertical and horizontal padding 
      child: Text(answertext),
      );  
              
  }}

 //TODO: Let's say in case your code is not working after a little  odification in the code , then ehat you should do is rewrite it from scratch 