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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('data'),
            Text('data'),
            //CustomElevatedButton(title: ProjectConstants().sonucEkraniElevated,),
            
          ],
        ),
      ),
    );
  }
}
