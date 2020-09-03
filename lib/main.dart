import 'package:flutter/material.dart';
import 'package:the_todo_app/quiz.dart';
import 'package:the_todo_app/score.dart';

void main() {
  runApp(MyMainApp());
}
//OR void main() => runApp(MyMainApp());
//For functions with ONE line of code

class MyMainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyMainAppState();
  }
}

//The underscore shows that _<<method/variable/class name>> is a private entity that is only accesible inside main.dart
class _MyMainAppState extends State<MyMainApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  var questions = [
    {
      // A MAP with key value pairs
      'question': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Green', 'score': 5},
        {'text': 'Yellow', 'score': 4},
        {'text': 'Red', 'score': 1},
        {'text': 'Purple', 'score': 2},
        {'text': 'Blue', 'score': 3}
      ]
    },
    {
      'question': 'What\'s your favourite animal',
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Porqupine', 'score': 1},
        {'text': 'Frog', 'score': 3}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerChosen(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //draws a widget and returns a widget

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Personality Test'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: questions,
                selectHandler: _answerChosen,
              )
            : Score(_totalScore, _resetQuiz),
        drawer: Drawer(),
      ),
    );
  }
}
