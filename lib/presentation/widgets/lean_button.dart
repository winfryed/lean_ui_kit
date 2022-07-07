import 'package:flutter/material.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

/// This class represents button [Widget].
class LeanButton extends StatelessWidget {
  /// The constructor requires a [onPressed] methode and a [child] [Widget].
  const LeanButton(
      {super.key,
      required this.onPressed,
      required this.child,
      this.overrideButtonStyle,
      this.backgroundColor});

  /// Function that is called when [LeanButton] was pressed.
  final VoidCallback onPressed;

  /// The child [Widget] that is placed within [LeanButton].
  final Widget child;

  /// Here you can override the [ButtonStyle] of [LeanButton].
  final ButtonStyle? overrideButtonStyle;

  /// The background color of [LeanButton].
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: child,
    );
  }

  /// Gets [overrideButtonStyle] of [LeanButton].
  /// If [overrideButtonStyle] == null : Gets a [ButtonStyle] with [backgroundColor] as primary color.
  /// if [backgroundColor] == null : Gets a [ButtonStyle] with [AppThemeAccess.theme.primary] as primary color.
  ButtonStyle get style {
    if (overrideButtonStyle != null) {
      return overrideButtonStyle as ButtonStyle;
    }
    return ElevatedButton.styleFrom(
        primary: backgroundColor ?? AppThemeAccess.theme.primary);
  }
}
