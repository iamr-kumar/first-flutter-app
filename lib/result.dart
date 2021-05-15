import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (totalScore <= 12) {
      resultText = 'Pretty Likeabe';
    } else if (totalScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are weird!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
      TextButton(onPressed: resetQuiz, child: Text('Restart Quiz'))
    ]));
  }
}
