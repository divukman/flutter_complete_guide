import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String _text;
  final Function _reset;

  Result(this._text, this._reset);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(
        children: [
          new Text(
            _text,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: _reset,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
