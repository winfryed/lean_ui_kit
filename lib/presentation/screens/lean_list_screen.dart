import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/screens/lean_screen.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_spaced_column.dart';

/// This is an abstract class for a [LeanScreen] that is scrollable and has column-like list.
abstract class LeanListScreen extends LeanScreen {
  const LeanListScreen({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: LeanSpacedColumn(
        mainAxisAlignment: MainAxisAlignment.start,
        children: children(context),
      ),
    );
  }

  /// The build methode of the class that extends [LeanListScreen].
  List<Widget> children(BuildContext context);
}
