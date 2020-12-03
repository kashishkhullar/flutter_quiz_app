import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerCallback;
  final String answerText;

  Answer(this._answerCallback, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.green,
        onPressed: _answerCallback,
      ),
    );
  }
}
