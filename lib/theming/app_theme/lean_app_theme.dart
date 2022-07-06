import 'dart:ui';

import 'package:lean_ui_kit/theming/app_theme/app_theme.dart';
import 'package:lean_ui_kit/theming/color_set/lean_color_set.dart';

/// This class represents the theme of the app.
/// Use this class if you want to manipulate the [LeanAppTheme] elements.
class LeanAppTheme extends AppTheme {

  /// The constructor needs a [ColorSet] that holds all the colors of the theme elements.
  LeanAppTheme() : super(colorSet: LeanColorSet());

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
}
