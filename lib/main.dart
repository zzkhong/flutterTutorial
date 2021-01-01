import 'package:flutter/material.dart';
import 'package:flutterTutorial/result.dart';

import 'quiz.dart';
void main() => runApp(FlutterTutorial());

class FlutterTutorial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FlutterTutorialState();
  }
}

class _FlutterTutorialState extends State<FlutterTutorial> {
  int _questionIndex = 0;
  int _totalScore = 0;

  static const _questions = [
    {
      'question': '1 + 1 = ?',
      'answers': [
        {
          'value': '0',
          'score': 0,
        },
        {
          'value': '11',
          'score': 0,
        },
        {
          'value': '2',
          'score': 1,
        }
      ]
    },
    {
      'question': '1 * 1 = ?',
      'answers': [
        {
          'value': '0',
          'score': 0,
        },
        {
          'value': '1',
          'score': 1,
        },
        {
          'value': '2',
          'score': 0,
        }
      ]
    },
    {
      'question': '1 - 1 = ?',
      'answers': [
        {
          'value': '0',
          'score': 1,
        },
        {
          'value': '1',
          'score': 0,
        },
        {
          'value': '-1',
          'score': 0,
        }
      ]
    }
  ];

  void _submit(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
    print(_questionIndex);
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
    });
    _totalScore = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial'),
        ),
        body: _questionIndex < _questions.length ? Quiz(
          questions: _questions, 
          questionIndex: _questionIndex, 
          submit: _submit
        ) :  Result(_totalScore, _restart),
      )
    );
  }
  
}