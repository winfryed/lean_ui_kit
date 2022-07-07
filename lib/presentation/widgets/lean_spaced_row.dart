// Author = Collin Flügel
// Date = 07.07.2022

import 'package:flutter/material.dart';

/// This class represents a spaced row [Widget] with a [SizedBox] with a width of [spaceDy] between each element.
class LeanSpacedRow extends StatelessWidget {

  /// This constructor requires list of children [Widget]s.
  const LeanSpacedRow(
      {Key? key,
        this.mainAxisAlignment,
        this.crossAxisAlignment,
        required this.children,
        this.spaceDx})
      : super(key: key);

  /// The [MainAxisAlignment] of [LeanSpacedRow].
  final MainAxisAlignment? mainAxisAlignment;

  /// The [CrossAxisAlignment] of [LeanSpacedRow].
  final CrossAxisAlignment? crossAxisAlignment;

  /// The space between each element of [children].
  final double? spaceDx;

  /// The list of [Widget]s that [LeanSpacedRow] holds.
  final List<Widget> children;

  /// The default [spaceDx] between each element of [children] if [spaceDx] hasn't been initialized.
  final double defaultSpace = 5;

  @override
  Widget build(BuildContext context) {
    List<Widget> spacedWidgets = [];
    for (int i = 0; i < children.length; i++) {
      if (i != 0) {
        spacedWidgets.add(SizedBox(
          width: spaceDx ?? defaultSpace,
        ));
      }
      spacedWidgets.add(children[i]);
    }
    return Row(
      mainAxisAlignment:
      mainAxisAlignment ?? MainAxisAlignment.spaceEvenly,
      crossAxisAlignment:
      crossAxisAlignment ?? CrossAxisAlignment.center,
      children: spacedWidgets,
    );
  }
}