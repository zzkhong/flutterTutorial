import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String _answer;

  Answer(
    this.selectHandler,
    this._answer
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: (
          Text(
            _answer,
          )
        ),
        onPressed: selectHandler
      ),
    );
  }
}