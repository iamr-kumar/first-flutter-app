import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = ["What's your favorite book?", "What's your favorite song?"];

  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
          Text(questions.elementAt(questionIndex)),
          ElevatedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          ElevatedButton(child: Text('Answer 2'), onPressed: answerQuestion),
          ElevatedButton(child: Text('Answer 3'), onPressed: answerQuestion),
          ElevatedButton(child: Text('Answer 4'), onPressed: answerQuestion),
        ]),
      ),
    );
  }
}
