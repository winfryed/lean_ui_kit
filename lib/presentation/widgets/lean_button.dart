import 'package:flutter/material.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

class LeanButton extends StatelessWidget {
  const LeanButton(
      {super.key,
      required this.onPressed,
      required this.child,
      this.overrideButtonStyle, this.backgroundColor});

  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? overrideButtonStyle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: child,
    );
  }

  ButtonStyle get style {
    if (overrideButtonStyle != null) {
      return overrideButtonStyle as ButtonStyle;
    }
    return ElevatedButton.styleFrom(
        primary: backgroundColor ?? AppThemeAccess.theme.primary);
  }
}
