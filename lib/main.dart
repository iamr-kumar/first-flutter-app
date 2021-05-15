import 'package:flutter/material.dart';
import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s you favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 6},
        {'text': 'Red', 'score': 4},
        {'text': 'Yellow', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s you favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Burger', 'score': 8},
        {'text': 'Bread', 'score': 5},
        {'text': 'Chicken', 'score': 2},
      ]
    },
    {
      'questionText': 'What\'s you favorite pet?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 4},
        {'text': 'Snake', 'score': 6},
        {'text': 'Aligator', 'score': 10},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    _totalScore = 0;

    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("First Flutter App"),
          ),
          body: _questionIndex < questions.length
              ? Quiz(_answerQuestion, questions, _questionIndex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
