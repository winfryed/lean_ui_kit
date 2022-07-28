import 'package:flutter/material.dart';

import '../../theming/app_theme_access.dart';

/// This class represents a scaffold [Widget].
/// A scaffold is used to implements the basic material design visual layout structure.
class LeanScaffold extends StatelessWidget {
  const LeanScaffold({super.key, required this.body, this.backgroundColor});

  /// The [Widget] that is the content of [LeanScaffold].
  final Widget? body;

  /// The background color of [LeanScaffold].
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(width: double.infinity,height: double.infinity,child: body,),
      backgroundColor:
          backgroundColor ?? AppThemeAccess.theme.backgroundPrimary,
    );
  }
}
