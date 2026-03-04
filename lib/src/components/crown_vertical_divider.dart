import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// A themed vertical divider component
///
/// Provides a wrapper around Flutter's VerticalDivider with Crown theme styling.
class CrownVerticalDivider extends StatelessWidget {
  /// Width of the divider
  final double width;

  /// Color of the divider
  final Color? color;

  /// Left indent
  final double startIndent;

  /// Right indent
  final double endIndent;

  /// Thickness of the divider
  final double thickness;

  const CrownVerticalDivider({
    Key? key,
    this.width = 1.0,
    this.color,
    this.startIndent = 0.0,
    this.endIndent = 0.0,
    this.thickness = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);

    return VerticalDivider(
      width: width,
      color: color ?? theme.colors.border,
      thickness: thickness,
      indent: startIndent,
      endIndent: endIndent,
    );
  }
}
