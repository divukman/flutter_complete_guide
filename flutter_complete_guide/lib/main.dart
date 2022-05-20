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
  int _totalScore = 0;

  var _questions = [
    {
      'questionText': 'Sta vozli Lola?',
      'answers': [
        {'text': 'Audija', 'score': 100},
        {'text': 'BMW', 'score': 20},
        {'text': 'GOLFA', 'score': 10},
        {'text': 'Neko Govno', 'score': -100},
      ]
    },
    {
      'questionText': 'Koje je boje Audi?',
      'answers': [
        {'text': 'Crne', 'score': 100},
        {'text': 'Roze', 'score': 0},
        {'text': 'Crvene', 'score': 10},
        {'text': 'Bijele', 'score': -100},
      ]
    },
    {
      'questionText': 'Najbolji glazbeni bend?',
      'answers': [
        {'text': 'SATELITI', 'score': 100},
        {'text': 'Wasp', 'score': 0},
        {'text': 'Karan', 'score': 10},
        {'text': 'Vuco', 'score': 20},
      ]
    },
    {
      'questionText': 'Dok je <cega> vozit ce djevojke?',
      'answers': [
        {'text': 'GOLFA DVOJKE', 'score': 100},
        {'text': 'Para', 'score': 0},
        {'text': 'Muzike', 'score': 10},
        {'text': 'Piva', 'score': 20},
      ]
    }
  ];

  void _answerQuestion(final int score) {
    _totalScore += score;
    setState(() {
      print('size ');
      this._questionIndex++;

      print('index: $_questionIndex');
    });
  }

  bool isLastIndex() {
    return this._questionIndex == this._questions.length;
  }

  String getResultText() {
    String resText;
    if (_totalScore >= 350) {
      resText = "Pravi si Lola Satelit";
    } else if (_totalScore >= 250) {
      resText = "Moras slusati SATELITE";
    } else if (_totalScore >= 150) {
      resText = "Moras Kupiti Golfa dvojku";
    } else {
      resText = "Gubi se ca od mene vidis da nisi P normalan";
    }
    return resText;
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget getBody() {
    if (isLastIndex()) {
      return new Result(getResultText(), _resetQuiz);
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
