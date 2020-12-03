import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function resetQuiz;

  Result({this.totalScore, this.resetQuiz});

  String get resultPhrase {
    String resultText;

    if (totalScore <= 8)
      resultText = "you are awesome";
    else if (totalScore <= 12)
      resultText = "you are likeable";
    else if (totalScore <= 16)
      resultText = "you are strange";
    else
      resultText = "you are bad";

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text("Restart Quiz"),
            textColor: Colors.red,
          )
        ],
      ),
    );
  }
}
