import 'package:flutter/material.dart';

import 'main.dart';

class Answer extends StatelessWidget {

final String anserText;
final Function() x;
  const Answer({Key? key, required this.anserText, required this.x}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:   RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        child: Text(anserText,style: TextStyle(fontSize: 20,color: isSwitched==false? Colors.white:Colors.black),),
        onPressed: x,),
    );
  }
}
