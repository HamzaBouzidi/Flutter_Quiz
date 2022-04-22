import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var QuestionIndex = 0;
  void AnswerQuestion() {
    setState(() {
      QuestionIndex++;
    });

    print(QuestionIndex);
  }

  Widget build(BuildContext context) {
    var QuestionList = [
      "What'\s your favorite color?",
      "What'\s your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(QuestionList[QuestionIndex]),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: () => print("Answer 1 chosen!")),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print("Answer 2 chosen!")),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print("Answer 3 chosen!")),
          ],
        ),
      ),
    );
  }
}
