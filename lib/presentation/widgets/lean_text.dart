import 'package:flutter/material.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

/// This class represents a text [Widget].
class LeanText extends StatelessWidget {
  const LeanText(this.text, {super.key, this.fontSize, this.color});
  LeanText.s1(this.text, {super.key, this.color}):fontSize=AppThemeAccess.theme.textSizeSet.s1;
  LeanText.s2(this.text, {super.key, this.color}):fontSize=AppThemeAccess.theme.textSizeSet.s2;
  LeanText.s3(this.text, {super.key, this.color}):fontSize=AppThemeAccess.theme.textSizeSet.s3;
  LeanText.s4(this.text, {super.key, this.color}):fontSize=AppThemeAccess.theme.textSizeSet.s4;
  LeanText.s5(this.text, {super.key, this.color}):fontSize=AppThemeAccess.theme.textSizeSet.s5;

  /// The displayed text of [LeanText].
  final String text;

  /// The text font size of [LeanText]
  final double? fontSize;

  /// The text color of [LeanText].
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }

  /// Gets a [TextStyle] for [LeanText] with the text [fontSize] and the text [color].
  /// If [fontSize] == null : Gets a [TextStyle] with [fontSize] as [AppThemeAccess.theme.defaultFontSize].
  /// if [color] == null : Gets a [TextStyle] with [color.theme.primary] as [AppThemeAccess.theme.defaultTextColor].
  TextStyle get style {
    return TextStyle(
        fontSize: fontSize ?? AppThemeAccess.theme.defaultFontSize,
        color: color ?? AppThemeAccess.theme.defaultTextColor);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return text;
  }
}
