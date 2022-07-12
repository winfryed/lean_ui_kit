// Author = Collin Flügel
// Date = 11.07.2022

import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_button.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

import 'lean_text.dart';

/// This class represents button [Widget] with a [LeanText] as child.
class LeanTextButton extends LeanButton {

  /// The constructor requires a [onPressed] methode and a [LeanText].
  LeanTextButton(
      {super.key,
        required super.onPressed,
        required this.buttonText,
        super.overrideButtonStyle,
        super.backgroundColor}):super(child: LeanText(buttonText));

  /// Use this constructor if you want to initialize [LeanTextButton] with [AppThemeAccess.theme.backgroundPrimary].
  /// The constructor requires a [onPressed] methode and a [LeanText].
  LeanTextButton.backgroundPrimary(
      {super.key,
        required super.onPressed,
      required this.buttonText,
      super.overrideButtonStyle})
      : super(backgroundColor: AppThemeAccess.theme.backgroundPrimary,child: LeanText(buttonText));

  /// Use this constructor if you want to initialize [LeanTextButton] with [AppThemeAccess.theme.backgroundSecondary].
  /// The constructor requires a [onPressed] methode and a [LeanText].
  LeanTextButton.backgroundSecondary(
      {super.key,
        required super.onPressed,
        required this.buttonText,
      super.overrideButtonStyle})
      : super(backgroundColor: AppThemeAccess.theme.backgroundPrimary,child: LeanText(buttonText));



  /// The child [Widget] that is placed within [LeanTextButton].
  final String buttonText;





}