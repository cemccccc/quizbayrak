import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({Key? key, required this.title, required this.widget}) : super(key: key);

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: ElevatedButton(
        onPressed: () async {
          final response = await elevatedButtonRoute(context, widget);
        },
        child: Text(
          title,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

Future<T?> elevatedButtonRoute<T>(BuildContext context, Widget widget) {
  return Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return widget;
  }));
}
