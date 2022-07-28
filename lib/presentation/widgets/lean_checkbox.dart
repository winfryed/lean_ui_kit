import 'package:flutter/material.dart';
import 'package:lean_ui_kit/presentation/widgets/lean_text.dart';
import 'package:lean_ui_kit/theming/app_theme_access.dart';

class LeanCheckbox extends StatefulWidget {
  const LeanCheckbox({Key? key, this.onPressed, required this.leanText, required this.width, this.controller,this.defaultValue=false}) : super(key: key);
  final double width;
  final bool defaultValue;
  final VoidBoolFunction? onPressed;
  final LeanText leanText;
  final LeanCheckboxController? controller;
  @override
  State<LeanCheckbox> createState() => _LeanCheckboxState();
}

class _LeanCheckboxState extends State<LeanCheckbox> {
  late bool isChecked;

  bool alreadySet = false;


  @override
  void initState() {
    super.initState();
    isChecked = widget.defaultValue;
    if(widget.controller!=null) {
      widget.controller!.value = isChecked;
    }
  }

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
        title: widget.leanText,
        value: isChecked,
        // onChanged: ,
        onChanged: (newValue) {
          setState(() {
            isChecked = newValue!;
          });
          if(widget.controller != null) {
            widget.controller?.value = newValue!;
          }
          if(widget.onPressed != null) {
            widget.onPressed!(newValue);
          }
        },
        controlAffinity:
        ListTileControlAffinity.leading, //  <-- leading Checkbox
      ),
    );
  }
}
typedef VoidBoolFunction = void Function(bool? bool);

class LeanCheckboxController extends ValueNotifier<bool>{
  LeanCheckboxController({bool? value}):super(value==false);
}