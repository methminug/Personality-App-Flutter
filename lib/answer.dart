import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;  //stores a pointer to a function 
  final String answer;  

  Answer(this.selectHandler, this.answer);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(this.answer),
        color: Colors.amber[300],
        textColor: Colors.black,
        onPressed: this.selectHandler,
      ),
    );
  }
}
