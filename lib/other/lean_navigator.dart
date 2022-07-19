import 'package:flutter/material.dart';

class LeanNavigator {
  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  static void push(BuildContext context, Widget target) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => target));
  }
}
