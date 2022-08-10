import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"Title": "Black", "Score": 10},
        {"Title": "Red", "Score": 8},
        {"Title": "Blue", "Score": 5},
        {"Title": "Orange", "Score": 1}
      ]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"Title": "Dog", "Score": 1},
        {"Title": "Cat", "Score": 10},
        {"Title": "Horse", "Score": 4},
        {"Title": "Monnkey", "Score": 3}
      ]
    },
    {
      "questionText": "What's your favorite car?",
      "answers": [
        {"Title": "Benz", "Score": 1},
        {"Title": "Toyota", "Score": 10},
        {"Title": "Honda", "Score": 3},
        {"Title": "Tesla", "Score": 8}
      ]
    }
  ];
  int _questionsIndex = 0;
  int _totalScore = 0;

  void _onButtonClick(int score) {
    if (_questionsIndex < _questions.length) {
      setState(() {
        _questionsIndex = _questionsIndex + 1;
        _totalScore += score;
        print(_totalScore);
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First App")),
        body: _questionsIndex < _questions.length
            ? Quiz(_questions, _questionsIndex, _onButtonClick)
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
