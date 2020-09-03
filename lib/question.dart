import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTxt;

  Question(
      this.questionTxt); //initializes questionTxt with whatever passed into constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //sets container width to full width of screen
      margin: EdgeInsets.all(20), //20px margin

      child: Text(
        questionTxt,  // the question
        style: TextStyle(fontSize: 30),  //font size to 30
        textAlign: TextAlign.center,  //centers on screen
      ),
    );
  }
}
