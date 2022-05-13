import 'package:flutter/material.dart';

import 'main.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.questionText}) : super(key: key);

  final String questionText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  Text(
        questionText,
        style: TextStyle(fontSize: 25,color:  isSwitched==false? Colors.black:Colors.white),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
