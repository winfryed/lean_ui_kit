import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/screens/lean_screen.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_spaced_column.dart';

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

  List<Widget> children(BuildContext context);
}
