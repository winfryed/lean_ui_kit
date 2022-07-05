import 'dart:ui';

import 'package:lean_ui_kit/theming/app_theme/app_theme.dart';
import 'package:lean_ui_kit/theming/color_set/lean_color_set.dart';

class LeanAppTheme extends AppTheme{
  LeanAppTheme():super(colorSet: LeanColorSet());

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