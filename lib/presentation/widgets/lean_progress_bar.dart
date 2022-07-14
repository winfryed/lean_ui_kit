import 'package:flutter/material.dart';

import '../../theming/app_theme_access.dart';
import 'lean_container.dart';

class LeanProgressBar extends StatelessWidget {
  const LeanProgressBar(
  {super.key,this.borderThickness=2,
  required this.height,
  required this.width,
  this.background,
  this.foreground, required this.max, required this.current});


  final double max;
  final double current;
  final int borderThickness;
  final double height;
  final double width;
  final Color? background;
  final Color? foreground;

  @override
  Widget build(BuildContext context) {
    return LeanContainer(
      padding: const EdgeInsets.all(2),
      width: width,
      height: height,
      color: background ?? AppThemeAccess.theme.onPrimary,
      alignment: AlignmentDirectional.centerStart,
      child: LeanContainer(height: height,color: foreground ?? AppThemeAccess.theme.primary,width: width*(current/max),),
    );
  }
}