// Author = Collin Flügel
// Date = 11.07.2022

import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_button.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

import 'lean_text.dart';

/// This class represents button [Widget] with a [LeanText] as child.
class LeanTextButton extends LeanButton {
  /// The constructor requires a [onPressed] methode and a string for [LeanText].
  LeanTextButton({this.textColor, this.fontSize,
      super.key,
      required super.onPressed,
      required this.buttonText,
      super.overrideButtonStyle,
      super.backgroundColor})
      : super(
            child: LeanText(
          buttonText,
          fontSize: fontSize ?? AppThemeAccess.theme.defaultFontSize,
          color: textColor ?? AppThemeAccess.theme.onPrimary,
        ));

  /// Use this constructor if you want to initialize [LeanTextButton] with [AppThemeAccess.theme.backgroundPrimary]
  /// and [LeanButton.color] with [AppThemeAccess.theme.onPrimary].
  /// The constructor requires a [onPressed] methode and a [LeanText].
  LeanTextButton.primary(
      {this.fontSize,
      super.key,
      required super.onPressed,
      required this.buttonText,
      super.overrideButtonStyle})
      : textColor=null,super(
            backgroundColor: AppThemeAccess.theme.primary,
            child: LeanText(
              buttonText,
              fontSize:
                  fontSize ?? AppThemeAccess.theme.defaultFontSize,
              color: AppThemeAccess.theme.onPrimary,
            ));

  /// Use this constructor if you want to initialize [LeanTextButton] with [AppThemeAccess.theme.backgroundSecondary]
  /// and [LeanButton.color] with [AppThemeAccess.theme.onPrimary].
  /// The constructor requires a [onPressed] methode and a [LeanText].
  LeanTextButton.secondary(
      {this.fontSize,
      super.key,
      required super.onPressed,
      required this.buttonText,
      super.overrideButtonStyle})
      : textColor=null,super(
            backgroundColor: AppThemeAccess.theme.secondary,
            child: LeanText(buttonText,
                fontSize:
                    fontSize ?? AppThemeAccess.theme.defaultFontSize,
                color: AppThemeAccess.theme.onSecondary));

  /// The string of [LeanText] that is placed within [LeanTextButton].
  final String buttonText;

  /// The color of [LeanText] that is placed within [LeanTextButton].
  final Color? textColor;

  /// The font size of [LeanText] that is placed within [LeanTextButton].
  final double? fontSize;
}
