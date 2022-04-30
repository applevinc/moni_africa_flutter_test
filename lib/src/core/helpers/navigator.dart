import 'package:flutter/material.dart';

class AppNavigator {
  AppNavigator._();

  static void to(BuildContext context, Widget nextScreen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => nextScreen));
  }
}
