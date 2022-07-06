import 'package:flutter/material.dart';
import 'package:lean_ui_kit/theming/other/color_tuple.dart';

import '../color_set/color_set.dart';

/// Abstract class of the theme of the app.
/// Use this class if you want to to add another [AppTheme] element.
abstract class AppTheme {
  AppTheme({required this.colorSet});

  /// The required [ColorSet] that holds all the colors.
  final ColorSet colorSet;

  Color get primary;

  Color get secondary;

  /// The primary color of the foreground.
  Color get foregroundPrimary;

  /// The secondary color of the foreground.
  Color get foregroundSecondary;

  /// The primary color of the background.
  Color get backgroundPrimary;

  /// The secondary color of the background.
  Color get backgroundSecondary;

  /// [primary] == true : Gets [foregroundPrimary] and [backgroundPrimary] as [ColorTuple].
  /// [primary] == false : Gets [foregroundSecondary] and [backgroundSecondary] as [ColorTuple].
  ColorTuple getColorTuple({bool primary = true}) =>
      primary ? primaryTuple : secondaryTuple;

  /// Gets [foregroundPrimary] and [backgroundPrimary] as a [ColorTuple].
  ColorTuple get primaryTuple =>
      ColorTuple(foregroundPrimary, backgroundPrimary);

  /// Gets [foregroundSecondary] and [backgroundSecondary] as a [ColorTuple].
  ColorTuple get secondaryTuple =>
      ColorTuple(foregroundSecondary, backgroundSecondary);
}
