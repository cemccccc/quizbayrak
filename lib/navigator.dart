import 'dart:js';

import 'package:flutter/material.dart';

mixin NavigatorManager {
  void elevatedButtonNavigator(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }
}


