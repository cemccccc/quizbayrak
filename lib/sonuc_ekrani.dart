import 'package:bayrak_quiz/anasayfa.dart';
import 'package:bayrak_quiz/components/buttons.dart';
import 'package:bayrak_quiz/constants/project_constants.dart';
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  SonucEkrani({Key? key}) : super(key: key);

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ProjectConstants().sonucEkranAppBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '3 DOĞRU 2 YANLIŞ',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Text('&60 BAŞARI'),
            CustomElevatedButton(
              title: ProjectConstants().sonucEkraniElevated,
              widget: const AnaSayfa(),
            ),
          ],
        ),
      ),
    );
  }
}
