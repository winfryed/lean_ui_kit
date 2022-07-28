import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/screens/lean_screen.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_scaffold.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_spaced_column.dart';

/// This class represents a screen with [LeanScaffold] that is scrollable and has column-like list.
abstract class LeanListScreen extends LeanScreen {
  const LeanListScreen({super.key,this.mainAxisAlignment=MainAxisAlignment.center});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: LeanSpacedColumn(
        mainAxisAlignment: mainAxisAlignment,
        children: children(context),
      ),
    );
  }

  /// The methode that returns the children of [LeanSpacedColumn] in [LeanListScreen].
  List<Widget> children(BuildContext context);
}
