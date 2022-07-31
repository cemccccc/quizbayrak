import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'anasayfa.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lightBlue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey.shade300.withOpacity(0.9),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const AnaSayfa(),
    );
  }
}
