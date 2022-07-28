import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_icon.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

import 'lean_circle_button.dart';

class LeanIconButton extends LeanCircleButton {
  LeanIconButton({this.tooltipMessage,
      super.key,
      required IconData iconData,
      super.height,
      super.color,
  this.showToolTipAfter,
      required super.onPressed,
      Color? iconColorOverride})
      : super(
            child: LeanIcon(
          icon: iconData,
          iconColor: iconColorOverride ?? AppThemeAccess.theme.onPrimary,
        ));

  final String? tooltipMessage;
  final Duration? showToolTipAfter;
  @override
  Widget build(BuildContext context) {
    if(tooltipMessage ==null) {
      return super.build(context);
    }
    return Tooltip(message: tooltipMessage,waitDuration: showToolTipAfter??Duration(seconds: 1),textStyle: const TextStyle(fontSize: 15,color: Colors.white),child: super.build(context),);
  }
}
