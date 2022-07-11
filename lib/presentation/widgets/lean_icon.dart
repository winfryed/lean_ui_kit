// Author = Collin Flügel
// Date = 11.07.2022
import 'package:flutter/material.dart';

import '../../theming/app_theme_access.dart';

/// This class represents a icon [Widget].
class LeanIcon extends StatelessWidget {

  /// This constructor requires an [Icon.icon].
  const LeanIcon({super.key, required this.icon, this.iconColor,this.iconSize});

  /// The [Icon.icon] for [LeanIcon].
  final IconData? icon;

  /// The [Icon.color] for [LeanIcon].
  final Color? iconColor;

  /// The [Icon.size] for [LeanIcon].
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(icon,size: iconSize ?? AppThemeAccess.theme.defaultIconSize,color: iconColor ?? AppThemeAccess.theme.defaultIconColor);
  }
}