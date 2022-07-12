import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/screens/lean_screen.dart';
import 'package:lean_ui_kit/presentation/screens/lean_stateful_screen.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_spaced_column.dart';

//todo 12.07.2022 12:08 von @Matthias to @Collin: .
abstract class LeanListStatefulScreen<T extends StatefulWidget> extends LeanStatefulScreen<T> {

  @override
  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: LeanSpacedColumn(
        mainAxisAlignment: MainAxisAlignment.start,
        children: children(context),
      ),
    );
  }

  //todo 12.07.2022 12:08 von @Matthias to @Collin: .
  List<Widget> children(BuildContext context);
}
