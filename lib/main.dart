import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isSwitched =false;
class _MyAppState extends State<MyApp> {
  int _index = 0;
  int _totalScore=0;

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore=0;
    });
  }

  void anserQ(int score) {
    _totalScore+=score;
    setState(() {
      _index += 1;
    });
    print(_totalScore);
    print(_index);

  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'من هو النبي الذي كانت إحدى معجزاته العصا التي تتحول إلى حية تسعى؟',
      'answers': [
        {'text':'عيسى عليه السلام','score':0},
        {'text':"سيدنا الخضر",'score':0},
        {'text':  "موسى عليه السلام",'score':1}
      ],
    },
    {
      'questionText': 'من هو النيي الملقب بالذبيح؟',
      'answers': [
        {'text':'إبراهيم عليه السلام','score':0},
        {'text':"اسماعيل عليه السلام",'score':1},
        {'text':"موسى عليه السلام",'score':0}
      ],
    },
    {
      'questionText': 'ما هي السورة الملقبة بعروس القرآن؟',
      'answers': [
    {'text':'سورة يس ','score':0},
    {'text':"سورة الرحمن",'score':1},
    {'text':  "سورة الفاتحة",'score':0}
      ],
    },
    {
      'questionText': 'كم عدد سور القرآن الكريم ؟',
      'answers': [
        {'text':' 120  ','score':0},
        {'text':" 114 ",'score':1},
        {'text':  " 200 ",'score':0}
      ],
    },
    {
      'questionText': 'كم كان عمر النبي صلى الله عليه وسلم عندما بعث ؟',
      'answers': [
        {'text':' 50   ','score':0},
        {'text':" 30  ",'score':0},
        {'text':  " 40  ",'score':1}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          actions: [
            Switch(value:isSwitched , onChanged: (value){
              setState(() {
                isSwitched=value;
              });
            },activeColor: Colors.black87,)
          ],
        ),
        body: Container(
          color: isSwitched==false? Colors.white:Colors.black87,
          child: _index < _question.length
              ? Quiz(_question, _index, anserQ)
              : Center(
                  child: Container(
                    child: Column(
                      children: [
                         Text(
                          "done",
                          style: TextStyle(fontSize: 50,color: isSwitched==false? Colors.black:Colors.white ),
                        ),

                        SizedBox(height: 50,),

                        FlatButton(
                            onPressed: _resetQuiz,
                            child: const Text(
                              "Restart The Quiz",
                              style: TextStyle(
                                  fontSize: 30, color: Colors.blueAccent,),
                            )),
                        SizedBox(height: 100,),
                        Text('score is : $_totalScore / $_index'.toString(),style: TextStyle(fontSize: 50,color: isSwitched==false? Colors.black:Colors.white),)
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }

}
