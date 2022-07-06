import 'package:flutter/material.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

class LeanText extends StatelessWidget {
  const LeanText(this.text, {super.key, this.fontSize, this.color});
  LeanText.s1(this.text, {super.key, this.color}):fontSize=AppThemeAccess.theme.textSizeSet.s1;
  LeanText.s2(this.text, {super.key, this.color}):fontSize=AppThemeAccess.theme.textSizeSet.s2;
  LeanText.s3(this.text, {super.key, this.color}):fontSize=AppThemeAccess.theme.textSizeSet.s3;
  LeanText.s4(this.text, {super.key, this.color}):fontSize=AppThemeAccess.theme.textSizeSet.s4;
  LeanText.s5(this.text, {super.key, this.color}):fontSize=AppThemeAccess.theme.textSizeSet.s5;

  final String text;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }

  TextStyle get style {
    return TextStyle(
        fontSize: fontSize ?? AppThemeAccess.theme.defaultFontSize,
        color: color ?? AppThemeAccess.theme.defaultTextColor);
  }
}
