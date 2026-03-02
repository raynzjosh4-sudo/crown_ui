import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

class CrownCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double? elevation;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;
  final Duration animationDuration;

  const CrownCard({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.elevation,
    this.backgroundColor,
    this.borderRadius,
    this.onTap,
    this.animationDuration = const Duration(milliseconds: 200),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor ?? theme.colors.surface,
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          boxShadow: elevation != null ? [BoxShadow(color: theme.colors.overlay, blurRadius: elevation!, offset: const Offset(0, 2))] : theme.borders.shadowMedium,
        ),
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
