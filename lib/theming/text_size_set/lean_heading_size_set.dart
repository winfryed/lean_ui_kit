import 'package:lean_ui_kit/theming/text_size_set/text_size_set.dart';

/// Abstract class of a set of heading font sizes.
/// Use this class if you want to manipulate the [LeanHeadingSizeSet] elements that are input in [LeanAppTheme].
class LeanHeadingSizeSet extends TextSizeSet {
  @override
  double get s1 => 55;

  @override
  double get s2 => 45;

  @override
  double get s3 => 35;

  @override
  double get s4 => 30;

  @override
  double get s5 => 26;

}