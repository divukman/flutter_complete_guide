import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText); //positional argument

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(10),
      child: new Text(
        _questionText,
        style: new TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
    );
  }
}
