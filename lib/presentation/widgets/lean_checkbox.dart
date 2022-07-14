import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_text.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

class LeanCheckbox extends StatefulWidget {
  const LeanCheckbox({Key? key, required this.onPressed, required this.text, required this.width, this.controller}) : super(key: key);
  final double width;
  final VoidBoolFunction onPressed;
  final LeanText text;
  final LeanCheckboxController? controller;
  @override
  State<LeanCheckbox> createState() => _LeanCheckboxState();
}

class _LeanCheckboxState extends State<LeanCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      // height: 100,
      child: CheckboxListTile(
        side: BorderSide(color: AppThemeAccess.theme.backgroundPrimary),
        // checkColor:   AppThemeData.primaryColor,
        activeColor: AppThemeAccess.theme.backgroundPrimary,
        // selectedTileColor: AppThemeData.secondaryColor,
        title: widget.text,
        value: isChecked,
        // onChanged: ,
        onChanged: (newValue) {
          setState(() {
            isChecked = newValue!;
          });
          if(widget.controller != null) {
            widget.controller?.status = newValue!;
          }
          widget.onPressed(newValue);
        },
        controlAffinity:
        ListTileControlAffinity.leading, //  <-- leading Checkbox
      ),
    );
  }
}
typedef VoidBoolFunction = void Function(bool? bool);

class LeanCheckboxController{
  LeanCheckboxController({this.status=false});
  bool status;
}