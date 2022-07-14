import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/screens/lean_list_screen.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_container_scrollable_searchable.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_space.dart';
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
    return const MaterialApp(
        title: 'Flutter Demo',
        home: TestScreen(),
        );
  }
}


class TestScreen extends LeanListScreen{
  const TestScreen({Key? key}) : super(key: key);

  @override
  List<Widget> children(BuildContext context) {
    List<Widget> output = [];
    output.add(LeanDY(y: 100));
    output.add(widget());


    return output;
  }


}


Widget widget() {
  LeanText t1 = LeanText("abc");
  LeanText t2 = LeanText("bcd");
  List<LeanText> list = [t1,t2];

  return LeanContainerScrollableSearchable<LeanText>(children: list, stringExtractor: (e) => e.toString(),width: 300,height: 1000,);
}
