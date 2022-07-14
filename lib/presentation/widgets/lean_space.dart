import 'package:flutter/material.dart';

/// Just for easy access of dy space.
class LeanDY extends StatelessWidget {
  const LeanDY({super.key, required this.y});

  final double y;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: y,);
  }
}

/// Just for easy access of dx space.
class LeanDX extends StatelessWidget {
  const LeanDX({super.key, required this.x});

  final double x;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: x,);
  }
}
