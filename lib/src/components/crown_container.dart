import 'package:flutter/material.dart';
import '../styles/crown_container_style.dart';

/// A theme-aware container for Crown UI
///
/// Provides consistent styling for containers with support for
/// background colors, shadows, borders, and rounded corners.
///
/// Usage:
/// ```dart
/// CrownContainer(
///   style: CrownContainerStyle.padded(padding: 16),
///   child: Text('Content'),
/// )
///
/// CrownContainer(
///   style: CrownContainerStyle.card(),
///   child: Column(children: [...]),
/// )
///
/// CrownContainer(
///   style: CrownContainerStyle.bordered(borderColor: Colors.blue),
///   child: Text('Bordered container'),
/// )
/// ```
class CrownContainer extends StatelessWidget {
  final Widget? child;
  final CrownContainerStyle? style;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? borderRadius;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;

  const CrownContainer({
    Key? key,
    this.child,
    this.style,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.borderRadius,
    this.width,
    this.height,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = style ?? CrownContainerStyle.defaultStyle();

    return Container(
      width: width ?? resolvedStyle.width,
      height: height ?? resolvedStyle.height,
      alignment: alignment,
      padding: padding ?? resolvedStyle.padding,
      margin: margin ?? resolvedStyle.margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? resolvedStyle.backgroundColor,
        borderRadius:
            BorderRadius.circular(borderRadius ?? resolvedStyle.borderRadius),
        border: resolvedStyle.border,
        boxShadow: resolvedStyle.boxShadow,
      ),
      child: child,
    );
  }
}
