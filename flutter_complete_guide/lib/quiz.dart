import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Question(questions[questionIndex]['questionText']),
      ...(questions[questionIndex]['answers'] as List<String>)
          .map((answer) => new Answer(answerQuestion, answer))
          .toList(growable: false),
    ]);
  }
}
