import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// A themed InkWell component
///
/// Provides a wrapper around Flutter's InkWell with Crown theme styling for ripple effects.
class CrownInkWell extends StatelessWidget {
  /// Called when the widget is tapped
  final VoidCallback? onTap;

  /// Called when the widget is long pressed
  final VoidCallback? onLongPress;

  /// The color of the splash effect
  final Color? splashColor;

  /// The color when the widget is highlighted
  final Color? highlightColor;

  /// The radius of the splash
  final double? radius;

  /// The child widget
  final Widget child;

  /// Border radius for the ink effect
  final BorderRadius? borderRadius;

  const CrownInkWell({
    Key? key,
    this.onTap,
    this.onLongPress,
    this.splashColor,
    this.highlightColor,
    this.radius,
    this.borderRadius,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);

    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      splashColor: splashColor ?? theme.colors.primary.withOpacity(0.2),
      highlightColor: highlightColor ?? theme.colors.primary.withOpacity(0.1),
      radius: radius,
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: child,
    );
  }
}
