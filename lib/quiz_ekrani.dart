import 'package:bayrak_quiz/constants/project_constants.dart';
import 'package:flutter/material.dart';

class QuizEkrani extends StatefulWidget {
  QuizEkrani({Key? key}) : super(key: key);

  @override
  State<QuizEkrani> createState() => _QuizEkraniState();
}

class _QuizEkraniState extends State<QuizEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ProjectConstants().quizekranAppBarTitle),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
