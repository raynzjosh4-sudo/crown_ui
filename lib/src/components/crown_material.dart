import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// A themed Material component
///
/// Provides a wrapper around Flutter's Material widget with Crown theme support.
class CrownMaterial extends StatelessWidget {
  /// The type of material
  final MaterialType type;

  /// The color of the material
  final Color? color;

  /// The shadow color
  final Color? shadowColor;

  /// The elevation of the material
  final double elevation;

  /// The border radius of the material
  final BorderRadiusGeometry? borderRadius;

  /// The shape of the material
  final ShapeBorder? shape;

  /// The child widget
  final Widget? child;

  /// Text theme for the material
  final TextTheme? textTheme;

  const CrownMaterial({
    Key? key,
    this.type = MaterialType.canvas,
    this.color,
    this.shadowColor,
    this.elevation = 0.0,
    this.borderRadius,
    this.shape,
    this.child,
    this.textTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);

    return Material(
      type: type,
      color: color ?? theme.colors.surface,
      shadowColor: shadowColor,
      elevation: elevation,
      borderRadius: borderRadius,
      shape: shape,
      textStyle: theme.typography.bodyMedium,
      child: child,
    );
  }
}
