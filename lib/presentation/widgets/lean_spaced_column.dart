// Author = Collin Flügel
// Date = 07.07.2022

import 'package:flutter/material.dart';

/// This class represents a spaced column [Widget] with a [SizedBox] with a height of [spaceDy] between each element.
class LeanSpacedColumn extends StatelessWidget {

  /// This constructor requires list of children [Widget]s.
  const LeanSpacedColumn(
      {Key? key,
        this.mainAxisAlignment,
        this.crossAxisAlignment,
        required this.children,
        this.spaceDy})
      : super(key: key);

  /// The [MainAxisAlignment] of [LeanSpacedColumn].
  final MainAxisAlignment? mainAxisAlignment;

  /// The [CrossAxisAlignment] of [LeanSpacedColumn].
  final CrossAxisAlignment? crossAxisAlignment;

  /// The space between each element of [children].
  final double? spaceDy;

  /// The list of [Widget]s that [LeanSpacedColumn] holds.
  final List<Widget> children;

  /// The default [spaceDy] between each element of [children] if [spaceDy] hasn't been initialized.
  final double defaultSpace = 5;

  @override
  Widget build(BuildContext context) {
    List<Widget> spacedWidgets = [];
    for (int i = 0; i < children.length; i++) {
      if (i != 0) {
        spacedWidgets.add(SizedBox(
          height: spaceDy ?? defaultSpace,
        ));
      }
      spacedWidgets.add(children[i]);
    }
    return Column(
      mainAxisAlignment:
      mainAxisAlignment ?? MainAxisAlignment.spaceEvenly,
      crossAxisAlignment:
      crossAxisAlignment ?? CrossAxisAlignment.center,
      children: spacedWidgets,
    );
  }
}