// Author = Collin Flügel
// Date = 11.07.2022

import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_button.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

import 'lean_text.dart';

/// This class represents button [Widget] with a [LeanText] as child.
class LeanTextButton extends LeanButton {

  /// The constructor requires a [onPressed] methode and a string for [LeanText].
  LeanTextButton(this.buttonTextColor, this.buttonTextFontSize,
      {super.key,
      required super.onPressed,
      required this.buttonText,
      super.overrideButtonStyle,
      super.backgroundColor})
      : super(child: LeanText(buttonText,fontSize: buttonTextFontSize ?? AppThemeAccess.theme.defaultFontSize,color: buttonTextColor ?? AppThemeAccess.theme.defaultTextColor,));

  /// Use this constructor if you want to initialize [LeanTextButton] with [AppThemeAccess.theme.backgroundPrimary]
  /// and [LeanButton.color] with [AppThemeAccess.theme.defaultButtonTextColor].
  /// The constructor requires a [onPressed] methode and a [LeanText].
  LeanTextButton.backgroundPrimary(
      this.buttonTextFontSize, this.buttonTextColor,
      {super.key,
      required super.onPressed,
      required this.buttonText,
      super.overrideButtonStyle})
      : super(
            backgroundColor: AppThemeAccess.theme.backgroundPrimary,
            child: LeanText(buttonText,fontSize: buttonTextFontSize ?? AppThemeAccess.theme.defaultFontSize,color: AppThemeAccess.theme.defaultButtonTextColor,));

  /// Use this constructor if you want to initialize [LeanTextButton] with [AppThemeAccess.theme.backgroundSecondary]
  /// and [LeanButton.color] with [AppThemeAccess.theme.defaultButtonTextColor].
  /// The constructor requires a [onPressed] methode and a [LeanText].
  LeanTextButton.backgroundSecondary(
      this.buttonTextFontSize, this.buttonTextColor,
      {super.key,
      required super.onPressed,
      required this.buttonText,
      super.overrideButtonStyle})
      : super(
            backgroundColor: AppThemeAccess.theme.backgroundPrimary,
            child: LeanText(buttonText,fontSize: buttonTextFontSize ?? AppThemeAccess.theme.defaultFontSize,color: AppThemeAccess.theme.defaultButtonTextColor));

  /// The string of [LeanText] that is placed within [LeanTextButton].
  final String buttonText;

  /// The color of [LeanText] that is placed within [LeanTextButton].
  final Color? buttonTextColor;

  /// The font size of [LeanText] that is placed within [LeanTextButton].
  final double buttonTextFontSize;
}
