// Author = Collin Flügel
// Date = 11.07.2022

import 'package:flutter/material.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

/// This class represents circle button [Widget].
class LeanCircleButton extends StatelessWidget {

  /// The constructor requires a [onPressed] methode and a [child] [Widget].
  const LeanCircleButton(
      {Key? key, required this.onPressed, this.color,this.height, required this.child})
      : super(key: key);

  /// Function that is called when [LeanCircleButton] was pressed.
  final VoidCallback onPressed;

  /// The color of [LeanCircleButton].
  final Color? color;

  /// The height and width of the [SizedBox] that contains [LeanCircleButton].
  final double? height;

  /// The child [Widget] that is placed within [LeanCircleButton].
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height:height ,width: height,
      child: FittedBox (
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(15),
              primary: color ?? AppThemeAccess.theme.defaultButtonColor,
            ),
            child:child),
      ),
    );
  }
}
