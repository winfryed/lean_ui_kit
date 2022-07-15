// Author = Collin Flügel
// Date = 13.07.2022

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

import 'lean_container.dart';

/// This class represents [TextField].
class LeanTextField extends StatelessWidget {
  const LeanTextField(
      {Key? key,
      required this.controller,
      this.hintText,
      this.textSizeOverride,
      this.textColorOverride,
      this.backgroundColorOverride,
      this.maxLinesOverride, this.width, this.height, this.hintTextColor, this.onChanged, this.readOnly=false})
      : super(key: key);

  /// A controller for an editable text field.
  final TextEditingController controller;

  /// The text that is shown before inputting text into the text field.
  final String? hintText;

  /// Use this override to change the text font size of the text field.
  final double? textSizeOverride;

  /// Use this override to change the text color of the text field.
  final Color? textColorOverride;

  /// Use this override to change the background color of the text field.
  final Color? backgroundColorOverride;

  /// Use this override to change the maximum lines that can be input into the text field.
  final int? maxLinesOverride;

  final double? width;

  final double? height;

  final Color? hintTextColor;

  final ValueChanged<String>? onChanged;

  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return LeanContainer(
      color: backgroundColorOverride ??
          AppThemeAccess.theme.defaultInputFieldColor,
      width: width,
      height: height,
      child: TextField(
        onChanged: onChanged,
        readOnly: readOnly,
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        decoration: inputDecoration,
        cursorColor: textColorOverride ?? AppThemeAccess.theme.defaultTextColor,
        autocorrect: true,
        style: textStyle,
        maxLines: maxLinesOverride ?? 1,

      ),
    );
  }

  /// Gets the [TextStyle] for [inputDecoration] and [TextField].
  TextStyle get textStyle {
    return TextStyle(
        color: textColorOverride ?? AppThemeAccess.theme.defaultTextColor,
        fontSize: textSizeOverride ?? AppThemeAccess.theme.defaultFontSize);
  }

  /// Gets the [InputDecoration] for [TextField].
  InputDecoration get inputDecoration {
    return InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        isDense: true,
        contentPadding: EdgeInsets.fromLTRB(5,10,5,5),
        border: InputBorder.none,
        filled: false);
  }
  TextStyle get hintStyle {
    return TextStyle(
        color: hintTextColor??Colors.grey,
        fontSize: textSizeOverride ?? AppThemeAccess.theme.defaultFontSize);
  }

}
