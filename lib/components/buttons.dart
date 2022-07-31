import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key, required this.title, required this.widget})
      : super(key: key);

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.065,
      child: ElevatedButton(
        onPressed: () async {
          await elevatedButtonRoute(context, widget);
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
