import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function selectHandler;

  Quiz(
      {@required
          this.questionIndex,
      @required
          this.questions,
      @required
          this.selectHandler}); // ({}) means this construtor has named arguments

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          // '...' means Mapping a list to a list of WIDGETS

          return Answer(() => selectHandler(answer['score']), answer['text']);
          // () => - the anonymous function createed here makes sure only a REFERENCE of selectHandler is made(not triggered)

        }).toList()
        /*
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerChosen, 
              /*      OR
              onPressed: () => print('Answer 2 selected!'),
                      OR
              onPressed: (){
                //  for longer code bodies
                print('Answer 3 selected!');                       
              },    
              */                                       
            ),
            */
      ],
    );
  }
}
