

import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_heading.dart';
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
      home: Scaffold(body:  Column(children: [LeanText.s1("hi yuri"),LeanText.s2("hi yuri"),LeanText.s3("hi yuri"),LeanText.s4("hi yuri"),LeanHeading.s1("hi yuri")],),),
    );
  }
}

