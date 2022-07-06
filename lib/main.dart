

import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_scaffold.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_text.dart';
import 'package:lean_ui_kit/theming/app_theme/lean_app_theme.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

void main() {
  AppThemeAccess.init(theme: LeanAppTheme());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LeanScaffold(body: LeanText("hi"))
    );
  }
}

