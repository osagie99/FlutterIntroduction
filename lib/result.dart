import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  final Function restartQuiz;

  Result(this.totalScore, this.restartQuiz);

  String get totalScorePhrase {
    if (totalScore <= 10) {
      return "You are a nice person";
    } else if (totalScore > 10 && totalScore < 20) {
      return "You are pretty likeable";
    }
    return "You are a bad person";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            totalScorePhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restartQuiz,
            child: Text(
              "Restart Quiz!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            // textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
