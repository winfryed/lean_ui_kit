// Author = Collin Flügel
// Date = 07.07.2022

import 'package:flutter/cupertino.dart';

import '../../theming/app_theme_access.dart';

/// This class represents a container [Widget].
class LeanContainer extends StatelessWidget {

  /// The default [margin] of [LeanContainer] if [margin] hasn't been initialized.
  static EdgeInsetsGeometry defaultMargin = const EdgeInsets.all(10);

  /// The default [padding] of [LeanContainer] if [padding] hasn't been initialized.
  static EdgeInsetsGeometry defaultPadding = AppThemeAccess.theme.defaultContainerPadding;

  /// The default [BoxDecoration.borderRadius] of [LeanContainer] if [BoxDecoration.borderRadius] hasn't been initialized.
  static const BorderRadius defaultBorderRadius = BorderRadius.all(Radius.circular(10));

  /// The default [BoxDecoration.color] of [LeanContainer] if [BoxDecoration.color] hasn't been initialized.
  static Color defaultColor = AppThemeAccess.theme.defaultContainerColor;

  /// Use this constructor if you want a [LeanContainer] with optional [boxDecoration].
  /// If [boxDecoration] == null : Sets [boxDecoration] to [defaultBoxDecoration].
  const LeanContainer(
      {Key? key,
      Widget? child,
      this.width,
      this.height,
      this.margin,
      this.padding,
      this.boxDecoration,
      this.constraints,
      this.alignment})
      : _child=child,super(key: key);

  /// Use this constructor if you want a [LeanContainer] without a [boxDecoration].
   const LeanContainer.noBoxStyle(
      {Key? key,
      required Widget? child,
      this.width,
      this.height,
      this.margin,
      this.padding,
      this.constraints,
      this.alignment})
      : boxDecoration = const BoxDecoration(),_child=child,
        super(key: key);

  /// The child [Widget] that is placed within [LeanContainer].
  final Widget? _child;

  /// The [Container.width] of [LeanContainer].
  final double? width;

  /// The [Container.height] of [LeanContainer].
  final double? height;

  /// The [Container.margin] of [LeanContainer].
  final EdgeInsetsGeometry? margin;

  /// The [Container.padding] of [LeanContainer].
  final EdgeInsetsGeometry? padding;

  /// The [Container.boxDecoration] of [LeanContainer].
  final Decoration? boxDecoration;

  /// The [Container.alignment] of [LeanContainer].
  final Alignment? alignment;

  /// The [Container.constraints] of [LeanContainer].
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      decoration: boxDecoration ?? BoxDecoration(
          color: defaultColor,
          borderRadius: defaultBorderRadius,
          boxShadow: AppThemeAccess.theme.boxShadow),
      constraints: constraints,
      width: width,
      height: height,
      margin: margin ?? defaultMargin,
      padding: padding ?? defaultPadding,
      child: child,
    );
  }

  Widget? get child=>_child;
}
