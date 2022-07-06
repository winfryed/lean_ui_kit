
import 'package:flutter/material.dart';

/// Abstract class of a color set.
/// Use this class if you want to to add another [ColorSet] element.
abstract class ColorSet{

  /// Color that is used [LeanAppTheme.primary].
  Color get c1;

  /// Color that is used [LeanAppTheme.secondary].
  Color get c2;

  /// Color that is used [LeanAppTheme.backgroundPrimary].
  Color get c3;

  /// Color that is used [LeanAppTheme.primary].
  Color get c4;

  /// Color that is used [LeanAppTheme.primary].
  Color get c5;

  final Color white = const Color.fromARGB(255, 255, 255, 255);
}