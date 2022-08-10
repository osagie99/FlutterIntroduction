import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function onButtonClick;
  final int questionsIndex;

  Quiz(this.questions, this.questionsIndex, this.onButtonClick);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionsIndex]["questionText"],
      ), 
      ...(questions[questionsIndex]["answers"] as List<Map<String, Object>>)
          .map((answer) => Answer(() => onButtonClick(answer["Score"]), answer["Title"]))
    ]);
  }
}
