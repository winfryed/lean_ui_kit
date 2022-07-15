import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_container.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_container_scrollable.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_spaced_column.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_text_field.dart';

import 'lean_heading.dart';

class LeanContainerScrollableSearchable<T extends Widget>
    extends StatefulWidget {
  const LeanContainerScrollableSearchable(
      {super.key,
      required this.children,
      required this.stringExtractor,
      required this.width,
      required this.height, this.heading});

  final List<T> children;

  final String? heading;

  final SearchStringExtractor<T> stringExtractor;

  final double width;

  final double height;

  String string(T widget) {
    return stringExtractor(widget);
  }

  @override
  _LeanContainerScrollableSearchableState createState() =>
      _LeanContainerScrollableSearchableState<T>();
}

class _LeanContainerScrollableSearchableState<T>
    extends State<LeanContainerScrollableSearchable> {

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return LeanContainer(
      alignment: AlignmentDirectional.topStart,
      width: widget.width,
      height: widget.height,
      child: LeanSpacedColumn(mainAxisAlignment: MainAxisAlignment.start,children: [
        if(widget.heading!=null) LeanHeading.s5(widget.heading as String),
        LeanTextField(
          onChanged: (s) {setState(() {});},
          controller: controller,
          hintText: "suchen...",
        ),
        LeanContainerScrollable(
          padding: EdgeInsets.all(0),
            boxDecoration: BoxDecoration(),
            height: widget.height-(widget.heading==null?60:90),
            width: widget.width,
            child: LeanSpacedColumn(children: children(context)))
      ]),
    );
  }


  List<Widget> children(BuildContext context) {
    List<Widget> output = [];
    for (var v in widget.children) {
      String textA = controller.text.toLowerCase();
      String textB = widget.string(v).toLowerCase();
      if(textB.contains(textA)) {
        output.add(v);
      }
    }
    return output;
  }
}

/// Accepts a Widget and returns a string to search in for [LeanContainerScrollableSearchable].
typedef SearchStringExtractor<T extends Widget> = String Function(T);
