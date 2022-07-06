import 'package:flutter/material.dart';

import '../../theming/app_theme_access.dart';

class LeanScaffold extends StatelessWidget {
  const LeanScaffold({super.key, required this.body, this.backgroundColor});

  final Widget? body;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: body,backgroundColor: backgroundColor??AppThemeAccess.theme.backgroundPrimary,);
  }
}
