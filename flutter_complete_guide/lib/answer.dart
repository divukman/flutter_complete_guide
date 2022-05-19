import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      child: new RaisedButton(
        child: Text(answer),
        onPressed: selectHandler,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
