import 'package:flutter/material.dart';
import 'package:quiz/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> question;
  final int index;
  final Function anserQ;
  Quiz(this.question, this.index, this.anserQ, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: question[index]['questionText'].toString()),

        ...( question[index]['answers']as List<Map<String , Object>> ).map((answer){
          return Answer(x:() => anserQ(answer['score']) , anserText: answer['text'].toString());
        }).toList(),



      ],
    );
  }
}
