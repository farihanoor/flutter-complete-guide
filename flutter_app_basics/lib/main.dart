import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
}

class MyAppState extends State {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print('Answer Question!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(
              child: Text(questions[0]),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text(questions[1]),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Answer 3 chosen!'),
            ),
          ],
        ),
      ),
    );
  }
}
