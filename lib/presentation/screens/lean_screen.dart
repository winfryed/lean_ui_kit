import 'package:flutter/cupertino.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_scaffold.dart';

abstract class LeanScreen extends StatelessWidget {
  const LeanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LeanScaffold(body: buildBody(context));
  }


  Widget buildBody(BuildContext context);

  String get routeName;
}
