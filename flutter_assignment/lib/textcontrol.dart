import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final String _text;

  TextControl(this._text);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(_text as String));
  }
}
