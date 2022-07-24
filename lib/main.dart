// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            radius: 2,
            backgroundColor: Colors.red[200],
            
          ),
          title: const Text('Title'),
        ),
        body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatefulWidget {
  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  RaisedButton raisedButton(int i, [int length = 2]) {
    return (RaisedButton(
      onPressed: () {
        setState(() {
          questionNumber < (length - 1) ? questionNumber++ : questionNumber--;
        });
        print('$i');
      },
      child: Text('answer $i'),
    ));
  }

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    var questions = ['What \'s your favorite color?', 'What\'s your favorite animal?'];
    return Column(
      children: [
        Text(questions.elementAt(questionNumber)),
        raisedButton(1, questions.length),
        raisedButton(2),
        raisedButton(3),
      ],
    );
  }
}
