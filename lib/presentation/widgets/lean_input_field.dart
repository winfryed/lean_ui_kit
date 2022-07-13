// Author = Collin Flügel
// Date = 13.07.2022

import 'package:flutter/material.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

import 'lean_container.dart';

/// This class represents a [LeanContainer] that contains a [Row] with a [TextField] and a [button].
class LeanInputField extends StatelessWidget {
  const LeanInputField(
      {Key? key,
      required this.controller,
      required this.height,
      required this.width,
      this.hintText,
      required this.showButton,
      this.stringCallback,
      this.textSizeOverride,
      this.textColorOverride,
      this.backgroundColorOverride})
      : super(key: key);

  /// A controller for an editable text field.
  final TextEditingController controller;

  /// The height of the [LeanContainer] that contains the input field.
  final double height;

  /// The width of the [LeanContainer] that contains the input field.
  final double width;

  /// The text that is shown before inputting text into the text field.
  final String? hintText;

  /// Set to true if you want a button that calls [stringCallback] on pressed.
  final bool showButton;

  /// The function that is called if [showButton] == [true] and the [button] is pressed.
  final VoidCallbackString? stringCallback;

  /// Use this override to change the text font size of the input field.
  final double? textSizeOverride;

  /// Use this override to change the text color of the input field.
  final Color? textColorOverride;

  /// Use this override to change the background color of the input field.
  final Color? backgroundColorOverride;

  @override
  Widget build(BuildContext context) {
    return LeanContainer(
      padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
      height: height,
      width: width,
      alignment: Alignment.centerLeft,
      boxDecoration: BoxDecoration(
          color: backgroundColorOverride ??
              AppThemeAccess.theme.defaultInputFieldColor),
      child: row,
    );
  }

  /// Gets the child of the [LeanContainer].
  Widget get row {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: textField,
          ),
        ),
        // Container(width: 1,height: height*0.6,color: LeanColorTheme().background,margin: EdgeInsets.symmetric(horizontal: 10),),
        if (showButton) button
      ],
    );
  }

  /// Gets the button that calls [stringCallback] on pressed.
  Widget get button {
    return InkWell(
      onTap: onTap,
      child: const Icon(Icons.arrow_forward_rounded, size: 35),
    );
  }

  /// Gets the on pressed function for [button].
  VoidCallback get onTap {
    return () {
      String txt = controller.text;
      controller.text = "";
      if (stringCallback != null) {
        stringCallback!(txt);
      }
    };
  }

  /// Gets the [TextField] that is input into [row].
  Widget get textField {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      decoration: inputDecoration,
      cursorColor: textColorOverride ?? AppThemeAccess.theme.defaultTextColor,
      autocorrect: true,
      style: textStyle,
    );
  }

  /// Gets the [TextStyle] for [inputDecoration] and [textField].
  TextStyle get textStyle {
    return TextStyle(
        color: textColorOverride ?? AppThemeAccess.theme.defaultTextColor,
        fontSize: textSizeOverride ?? AppThemeAccess.theme.defaultFontSize);
  }

  /// Gets the [InputDecoration] for [textField].
  InputDecoration get inputDecoration {
    return InputDecoration(
        hintText: hintText,
        hintStyle: textStyle,
        border: InputBorder.none,
        filled: true,
        fillColor: backgroundColorOverride ??
            AppThemeAccess.theme.defaultInputFieldColor);
  }
}

/// This type definition is used for the on pressed methode of [button].
typedef VoidCallbackString = void Function(String text);
