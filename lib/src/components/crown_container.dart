import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

class CrownContainer extends StatelessWidget {
  final Widget? child;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final BorderRadius? borderRadius;
  final double borderWidth;
  final List<BoxShadow>? boxShadow;
  final AlignmentGeometry alignment;
  final VoidCallback? onTap;

  const CrownContainer({
    Key? key,
    this.child,
    this.backgroundColor,
    this.borderColor,
    this.width,
    this.height,
    this.padding = const EdgeInsets.all(16),
    this.margin = EdgeInsets.zero,
    this.borderRadius,
    this.borderWidth = 0,
    this.boxShadow,
    this.alignment = Alignment.center,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: padding,
        alignment: alignment,
        decoration: BoxDecoration(
          color: backgroundColor ?? theme.colors.surface,
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          border: borderWidth > 0 ? Border.all(color: borderColor ?? theme.colors.border, width: borderWidth) : null,
          boxShadow: boxShadow ?? theme.borders.shadowSmall,
        ),
        child: child,
      ),
    );
  }
}
