import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_text.dart';

import '../../theming/app_theme_access.dart';

class LeanHeading extends LeanText {
  const LeanHeading(String text,{super.key,super.fontSize,super.color}):super(text);

  LeanHeading.s1(String text,{super.key,super.color}):super(text,fontSize: AppThemeAccess.theme.headingSizeSet.s1);
  LeanHeading.s2(String text,{super.key,super.color}):super(text,fontSize: AppThemeAccess.theme.headingSizeSet.s2);
  LeanHeading.s3(String text,{super.key,super.color}):super(text,fontSize: AppThemeAccess.theme.headingSizeSet.s3);
  LeanHeading.s4(String text,{super.key,super.color}):super(text,fontSize: AppThemeAccess.theme.headingSizeSet.s4);
  LeanHeading.s5(String text,{super.key,super.color}):super(text,fontSize: AppThemeAccess.theme.headingSizeSet.s5);


  @override
  TextStyle get style {
    return TextStyle(
        fontSize: fontSize ?? AppThemeAccess.theme.defaultFontSize,
        color: color ?? AppThemeAccess.theme.defaultTextColor,fontWeight: FontWeight.bold);
  }
}
