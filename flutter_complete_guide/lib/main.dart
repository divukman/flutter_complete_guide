// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    {
      'questionText': 'Sta vozli Lola?',
      'answers': ['Audija', 'BemWE', 'GOLFA', 'Neko Govno']
    },
    {
      'questionText': 'Koje je boje Audi?',
      'answers': ['Crne', 'Roze', 'Crvene', 'Bijele']
    }
  ];

  void _answerQuestion() {
    setState(() {
      print('size ');
      this._questionIndex++;

      print('index: $_questionIndex');
    });
  }

  bool isLastIndex() {
    return this._questionIndex == this._questions.length;
  }

  Widget getBody() {
    if (isLastIndex()) {
      return new Result();
    } else {
      return new Quiz(
        questions: _questions,
        questionIndex: _questionIndex,
        answerQuestion: _answerQuestion,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Dobro dosli...'),
          ),
          body: getBody()),
    );
  }
}
