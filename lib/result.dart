import 'package:flutter/material.dart';
import 'package:flutterTutorial/answer.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restart;

  Result(this.resultScore, this.restart);

  String get resultPhrase {
    if (resultScore < 1) return 'You are a failure';
    else if (resultScore < 2) return 'Please try harder';
    else return 'Well, even a 3-years old can answer all that correctly';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Answer(
            restart, 
            'Try Again'
          )
        ]
      ),
    );
  }
}