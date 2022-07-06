
import 'package:flutter/material.dart';

/// Abstract class of a set of colors.
/// Use this class if you want to to add another [ColorSet] element.
abstract class ColorSet{

  Color get c1;

  Color get c2;

  Color get c3;

  Color get c4;

  Color get c5;

  final Color white = const Color.fromARGB(255, 255, 255, 255);
}