import 'package:flutter/cupertino.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_scaffold.dart';

/// This is an abstract class for a screen [Widget].
abstract class LeanScreen extends StatelessWidget {
  const LeanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LeanScaffold(body: buildBody(context));
  }


  /// The build methode of the class that extends [LeanScreen].
  Widget buildBody(BuildContext context);

  ///ToDo
  String get routeName;
}
