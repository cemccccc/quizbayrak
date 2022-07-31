import 'package:flutter/material.dart';

class CustomElevatedButton2 extends StatelessWidget {
  const CustomElevatedButton2(
      {Key? key, required this.title2, required this.widget2})
      : super(key: key);

  final String title2;
  final Widget widget2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.065,
      child: ElevatedButton(
        onPressed: () async {
          await elevatedButtonRoute(context, widget2);
        },
        child: Text(
          title2,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

Future<T?> elevatedButtonRoute<T>(BuildContext context, Widget widget) {
  return Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) {
    return widget;
  }));
}
