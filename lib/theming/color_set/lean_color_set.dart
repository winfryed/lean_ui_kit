import 'dart:ui';

import 'package:lean_ui_kit/theming/color_set/color_set.dart';

/// This class represents the color set of the app.
/// Use this class if you want to manipulate the [LeanColorSet] elements.
class LeanColorSet extends ColorSet{
  @override
  Color get c1 => const Color.fromARGB(255, 144,182,249);

  @override
  Color get c2 => const Color.fromARGB(255, 221, 32, 70);

  @override
  Color get c3 => const Color.fromARGB(255, 21, 28, 38);

  @override
  Color get c4 => const Color.fromARGB(255, 38, 175, 33);

  @override
  Color get c5 => white;

}