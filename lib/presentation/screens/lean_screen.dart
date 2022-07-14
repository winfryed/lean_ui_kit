import 'package:flutter/cupertino.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_scaffold.dart';

/// This class represents a screen with [LeanScaffold] that holds the body of the screen.
abstract class LeanScreen extends StatelessWidget {
  const LeanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LeanScaffold(body: buildBody(context));
  }


  /// The methode that returns the body of [LeanScaffold] in [LeanScreen].
  Widget buildBody(BuildContext context);
}
