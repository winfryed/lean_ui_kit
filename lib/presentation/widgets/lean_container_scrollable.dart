import 'package:flutter/cupertino.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_container.dart';

/// This class represents a scrollable [LeanContainer].
class LeanContainerScrollable extends LeanContainer {

  /// The constructor requires a [height] and a [child] [Widget].
  const LeanContainerScrollable(
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

  /// Gets the [child] [Widget] as a [SingleChildScrollView].
  @override
  Widget? get child => SingleChildScrollView(
        primary: false,
        child: super.child,
      );
}
