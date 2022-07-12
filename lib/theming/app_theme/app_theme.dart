import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_button.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_circle_button.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_icon.dart';
import 'package:lean_ui_kit/theming/other/color_tuple.dart';
import 'package:lean_ui_kit/theming/text_size_set/text_size_set.dart';

import '../color_set/color_set.dart';

/// Abstract class of the theme of the app.
/// Use this class if you want to to add another [AppTheme] element.
abstract class AppTheme {
  AppTheme({required this.colorSet,required this.headingSizeSet,required this.textSizeSet});

  /// The required [ColorSet] that holds all the colors.
  final ColorSet colorSet;

  /// The required [TextSizeSet] that holds all the heading font sizes.
  final TextSizeSet headingSizeSet;

  /// The required [TextSizeSet] that holds all the font sizes of a text.
  final TextSizeSet textSizeSet;

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

  /// The default color of a text.
  Color get defaultTextColor;

  /// The default font size of a text.
  double get defaultFontSize;

  /// The default font size of a heading.
  double get defaultHeadingSize;

  /// The default padding of [LeanContainer].
  EdgeInsetsGeometry get defaultContainerPadding;

  /// The default color of [LeanContainer].
  Color get defaultContainerColor;

  /// The default [MainAxisAlignment] for [LeanSpacedColumn].
  MainAxisAlignment get defaultMainAxisAlignmentForSpacedColumn;

  /// The default [MainAxisAlignment] for [LeanSpacedRow].
  MainAxisAlignment get defaultMainAxisAlignmentForSpacedRow;

  /// The default [CrossAxisAlignment] for [LeanSpacedColumn].
  CrossAxisAlignment get defaultCrossAxisAlignmentForSpacedColumn;

  /// The default [CrossAxisAlignment] for [LeanSpacedRow].
  CrossAxisAlignment get defaultCrossAxisAlignmentForSpacedRow;

  /// The default [Icon.color] for [LeanIcon].
  Color get defaultIconColor;

  /// The default [Icon.size] for [LeanIcon].
  double get defaultIconSize;

  /// The default color for [LeanButton] and [LeanCircleButton].
  Color get defaultButtonColor;

  /// The default color for [LeanText] in [LeanTextButton].
  Color get defaultButtonTextColor;

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

  /// This is a standardized box shadow for every box (Button, Containers etc.).
  List<BoxShadow> get boxShadow => [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 20,
      offset: const Offset(0, 3), // changes position of shadow
    ),
  ];
}
