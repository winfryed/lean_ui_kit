import 'package:lean_ui_kit/theming/text_size_set/text_size_set.dart';

/// Abstract class of a set of text font sizes.
/// Use this class if you want to manipulate the [LeanTextSizeSet] elements that are input in [LeanAppTheme].
class LeanTextSizeSet extends TextSizeSet {
  @override
  double get s1 => 22;

  @override
  double get s2 => 20;

  @override
  double get s3 => 18;

  @override
  double get s4 => 14;

  @override
  double get s5 => 12;

}