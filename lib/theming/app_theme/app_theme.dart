import 'package:flutter/material.dart';
import 'package:lean_ui_kit/theming/other/color_tuple.dart';

import '../color_set/color_set.dart';

abstract class AppTheme {
  AppTheme({required this.colorSet});

  final ColorSet colorSet;

  Color get primary;

  Color get secondary;

  Color get foregroundPrimary;

  Color get foregroundSecondary;

  Color get backgroundPrimary;

  Color get backgroundSecondary;

  ColorTuple getColorTuple({bool primary = true}) =>
      primary ? primaryTuple : secondaryTuple;

  ColorTuple get primaryTuple =>
      ColorTuple(foregroundPrimary, backgroundPrimary);

  ColorTuple get secondaryTuple =>
      ColorTuple(foregroundSecondary, backgroundSecondary);
}
