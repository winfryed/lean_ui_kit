import 'dart:ui';

import 'package:lean_ui_kit/theming/app_theme/app_theme.dart';
import 'package:lean_ui_kit/theming/color_set/lean_color_set.dart';
import 'package:lean_ui_kit/theming/text_size_set/lean_heading_size_set.dart';
import 'package:lean_ui_kit/theming/text_size_set/lean_text_size_set.dart';

/// This class represents the theme of the app.
/// Use this class if you want to manipulate the [LeanAppTheme] elements.
class LeanAppTheme extends AppTheme {

  /// The constructor needs a [ColorSet] that holds all the colors of the [LeanAppTheme] elements.
  LeanAppTheme() : super(colorSet: LeanColorSet(),headingSizeSet: LeanHeadingSizeSet(),textSizeSet: LeanTextSizeSet());

  @override
  Color get backgroundPrimary => colorSet.c3;

  @override
  Color get backgroundSecondary => colorSet.c5;

  @override
  Color get foregroundPrimary => colorSet.c5;

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
}
