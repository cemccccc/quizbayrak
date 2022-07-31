import 'package:bayrak_quiz/constants/project_constants.dart';
import 'package:bayrak_quiz/quiz_ekrani.dart';
import 'package:flutter/material.dart';

import 'components/buttons.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ProjectConstants().anasayfaAppBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              ProjectConstants().anasayfaWelcome,
              style: Theme.of(context).textTheme.headline4,
            ),
            CustomElevatedButton(
                title: ProjectConstants().elevatedBasla, widget: QuizEkrani())
          ],
        ),
      ),
    );
  }
}
