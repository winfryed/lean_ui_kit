

import 'package:flutter/material.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

class LeanText extends StatelessWidget {
  const LeanText(this.text,{super.key, this.fontSize});

  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: style,);
  }

  TextStyle get style{
    return TextStyle(fontSize: fontSize??AppThemeAccess.theme.defaultFontSize);
  }
}
