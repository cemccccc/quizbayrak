import 'package:bayrak_quiz/components/buttons.dart';
import 'package:bayrak_quiz/constants/project_constants.dart';
import 'package:bayrak_quiz/sonuc_ekrani.dart';
import 'package:flutter/material.dart';

import 'components/quizekranbutton.dart';

class QuizEkrani extends StatefulWidget {
  const QuizEkrani({Key? key}) : super(key: key);

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Doğru: 1', style: Theme.of(context).textTheme.headline5),
              Text('Yanlış: 1', style: Theme.of(context).textTheme.headline5),
            ],
          ),
          Text('1.Soru', style: Theme.of(context).textTheme.headline4),
          Image.asset('assets/bayraklar/turkiye.png'),
          CustomElevatedButton2(
              title2: ProjectConstants().quizEkraniA, widget2: SonucEkrani()),
          CustomElevatedButton2(
              title2: ProjectConstants().quizEkraniB, widget2: SonucEkrani()),
          CustomElevatedButton2(
              title2: ProjectConstants().quizEkraniC, widget2: SonucEkrani()),
          CustomElevatedButton2(
              title2: ProjectConstants().quizEkraniD, widget2: SonucEkrani()),
        ],
      ),
    );
  }
}
