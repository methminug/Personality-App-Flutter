import 'package:flutter/material.dart';

import './question.dart';

class Score extends StatelessWidget {
  final int score;
  final Function resetter;
  Color btnColor;

  Score(this.score, this.resetter);

  String get resultPhrase {
    //  A getter in Dart
    String result;
    
    if (score > 1 && score < 4) {
      result = 'CAUTIOUS  👽';
      btnColor = Colors.blue[300];
    } else if (score > 3 && score < 7) {
      result = 'REALISTIC 🧘';
      btnColor = Colors.deepPurpleAccent[200];
    } else {
      result = 'OPTIMISTIC 🧚🏻‍♀️';
      btnColor = Colors.greenAccent[400];
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Question('You are \n' + resultPhrase),
        RaisedButton(child: Text('Try Again?'), onPressed: resetter, color: btnColor,)
      ],
    );
  }
}
