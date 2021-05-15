import 'package:first_app/question.dart';
import 'package:flutter/material.dart';
import 'package:first_app/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What\'s you favorite color?',
      'answers': ['Black', 'Red', 'Yellow', 'Blue']
    },
    {
      'questionText': 'What\'s you favorite food?',
      'answers': ['Pizza', 'Noodles', 'Burger', 'Pancakes']
    },
    {
      'questionText': 'What\'s you favorite pet?',
      'answers': ['Dog', 'Bird', 'Cat', 'Rabbit']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Answered");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Flutter App"),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['questionText'] as String),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
