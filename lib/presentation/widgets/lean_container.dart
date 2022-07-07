// Author = Collin Flügel
// Date = 07.07.2022

import 'package:flutter/cupertino.dart';

import '../../theming/app_theme/lean_app_theme.dart';
import '../../theming/app_theme_access.dart';

/// This class represents a container [Widget].
class LeanContainer extends StatelessWidget {

  /// The default [margin] of [LeanContainer] if [margin] hasn't been initialized.
  static const EdgeInsetsGeometry defaultMargin = EdgeInsets.all(5);

  /// The default [padding] of [LeanContainer] if [padding] hasn't been initialized.
  static const EdgeInsetsGeometry defaultPadding = EdgeInsets.all(0);

  static Color defaultColor = AppThemeAccess.theme.backgroundSecondary;

  /// Use this constructor if you want a [LeanContainer] with optional [boxDecoration].
  /// If [boxDecoration] == null
  LeanContainer(
      {Key? key,
      this.child,
      this.width,
      this.height,
      this.margin,
      this.padding,
      this.boxDecoration,
      this.constraints,
      this.alignment})
      : super(key: key);

  /// Use this constructor if you want a [LeanContainer] without a [boxDecoration].
  LeanContainer.noBoxStyle(
      {Key? key,
      this.child,
      this.width,
      this.height,
      this.margin,
      this.padding,
      this.constraints,
      this.alignment})
      : boxDecoration = const BoxDecoration(),
        super(key: key);

  /// The child [Widget] that is placed within [LeanContainer].
  final Widget? child;

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

  /// The default [boxDecoration] of [LeanContainer] if [boxDecoration] hasn't been initialized.
  static const BoxDecoration defaultBoxDecoration = BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: AppThemeAccess.theme.boxShadow);


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      decoration: boxDecoration ?? defaultBoxDecoration,
      constraints: constraints,
      width: width,
      height: height,
      margin: margin ?? defaultMargin,
      padding: padding ?? defaultPadding,
      child: child,
    );
  }
}
