import 'package:flutter/cupertino.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_container.dart';

class LeanContainerScrollable extends LeanContainer {
  LeanContainerScrollable(
      {super.key,
      required super.child,
      super.alignment,
      super.boxDecoration,
      super.constraints,
      super.margin,
      super.padding,
      super.width,
      required double height})
      : super(height: height);

  @override
  Widget? get child => SingleChildScrollView(
        primary: false,
        child: super.child,
      );
}
