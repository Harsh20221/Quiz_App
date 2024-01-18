import 'package:flutter/material.dart';

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
          child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,

                /// Iskko likha kyuki Image centre pe align ho jaaye
                children: [
                  /// Children ko aise [] table me likhna hai
                  Image.asset("assets/images/quiz-logo.png" , color: Color.fromRGBO(250, 250, 250, 0.5),) , // We can also add color to image to create a transparency effect
                  const SizedBox(height: 20), /// To add space between two widgets
                  /// To add space between two widgets
                  Text("Learn Flutter the Fun Way!",
                      style: TextStyle(
                          color: Color.fromRGBO(241, 227, 241, 1),
                          fontSize:
                              24)), // To adjust the Color , font of the text MAKE SURE TO write style in Text widget just after the text  specifying the string of text
                  // Ek baar column me children daal ke fir usme multiple widgets pass kar sakte hai
                const SizedBox(height:30) , OutlinedButton.icon( /// To add Icon In button write OutlinedButton.icon 
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Color.fromRGBO(255, 254, 255, 1),
                        backgroundColor: Color(0xFF480366)),  icon:Icon(Icons.arrow_right_alt) ,  /// Yaha Pe Icon Hoga , Remmber to add Icon in OutlinedButton.icon , also remember tthe syntax to add icon
                                                                                                         /// Icon.arrow_right_alt is the icon name
                    label: const Text("Start Quiz"),  // yaha pe label rahega jo button ka text part hoga 
                  ),
                ]),
          ),
        ),
      ),
    ),
  );
}
