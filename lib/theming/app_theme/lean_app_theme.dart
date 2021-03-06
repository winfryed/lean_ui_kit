import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:lean_ui_kit/theming/app_theme/app_theme.dart';
import 'package:lean_ui_kit/theming/color_set/lean_color_set.dart';
import 'package:lean_ui_kit/theming/text_size_set/lean_heading_size_set.dart';
import 'package:lean_ui_kit/theming/text_size_set/lean_text_size_set.dart';

/// This class represents the theme of the app.
/// Use this class if you want to manipulate the [LeanAppTheme] elements.
class LeanAppTheme extends AppTheme {

  /// The constructor needs:
  /// A [ColorSet] that holds all the colors of [LeanAppTheme] .
  /// A [TextSizeSet] that holds all the heading font sizes of [LeanAppTheme].
  /// A [TextSizeSet] that holds all the regular text font sizes of [LeanAppTheme].
  LeanAppTheme() : super(colorSet: LeanColorSet(),headingSizeSet: LeanHeadingSizeSet(),textSizeSet: LeanTextSizeSet());

  @override
  Color get backgroundPrimary => colorSet.c3;

  @override
  Color get backgroundSecondary => colorSet.c5;

  @override
  Color get foregroundPrimary => backgroundPrimary;

  @override
  Color get foregroundSecondary => colorSet.c3;

  @override
  Color get primary => colorSet.c1;

  @override
  Color get secondary => colorSet.c2;

  @override
  double get defaultFontSize => textSizeSet.s2;

  @override
  double get defaultHeadingSize => headingSizeSet.s2;

  @override
  Color get defaultTextColor => foregroundPrimary;

  @override
  Color get defaultContainerColor => colorSet.c5;

  @override
  EdgeInsetsGeometry get defaultContainerPadding => const EdgeInsets.all(5);

  @override
  CrossAxisAlignment get defaultCrossAxisAlignmentForSpacedColumn => CrossAxisAlignment.center;

  @override
  CrossAxisAlignment get defaultCrossAxisAlignmentForSpacedRow => CrossAxisAlignment.center;

  @override
  MainAxisAlignment get defaultMainAxisAlignmentForSpacedColumn => MainAxisAlignment.center;

  @override
  Color get defaultIconColor => colorSet.c1;

  @override
  double get defaultIconSize => 25;

  @override
  Color get defaultButtonColor => colorSet.c1;
  
  @override
  MainAxisAlignment get defaultMainAxisAlignmentForSpacedRow => MainAxisAlignment.center;

  @override
  Color get onPrimary => colorSet.c5;

  @override
  Color get onSecondary => onPrimary;

  @override
  Color get defaultInputFieldColor => colorSet.c5;
}
