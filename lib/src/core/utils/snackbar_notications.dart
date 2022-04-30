import 'package:flutter/material.dart';

class NotificationMessages {
  static showSnackBar({
    required String message,
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          message,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  static showSucessSnackBar({
    required String message,
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text(
          message,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
