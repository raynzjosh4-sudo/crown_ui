import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownImageIcon
///
/// Controls the appearance of image icons including size and color.
class CrownImageIconStyle {
  /// Size of the image icon
  final double size;

  /// Color of the image icon
  final Color color;

  const CrownImageIconStyle({
    required this.size,
    required this.color,
  });

  /// Default style with theme colors
  factory CrownImageIconStyle.defaultStyle(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 24,
      color: theme.colors.primary,
    );
  }

  /// Extra small icon (16)
  factory CrownImageIconStyle.xs(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 16,
      color: theme.colors.primary,
    );
  }

  /// Small icon (20)
  factory CrownImageIconStyle.small(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 20,
      color: theme.colors.primary,
    );
  }

  /// Medium icon (24)
  factory CrownImageIconStyle.medium(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 24,
      color: theme.colors.primary,
    );
  }

  /// Large icon (32)
  factory CrownImageIconStyle.large(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 32,
      color: theme.colors.primary,
    );
  }

  /// Extra large icon (48)
  factory CrownImageIconStyle.extraLarge(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 48,
      color: theme.colors.primary,
    );
  }

  /// Success icon with green color
  factory CrownImageIconStyle.success(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 24,
      color: theme.colors.success,
    );
  }

  /// Warning icon with warning color
  factory CrownImageIconStyle.warning(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 24,
      color: theme.colors.warning,
    );
  }

  /// Error icon with error color
  factory CrownImageIconStyle.error(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 24,
      color: theme.colors.error,
    );
  }

  /// Info icon with info color
  factory CrownImageIconStyle.info(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 24,
      color: theme.colors.info,
    );
  }

  /// Disabled icon with muted color
  factory CrownImageIconStyle.disabled(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 24,
      color: theme.colors.disabled,
    );
  }

  /// Secondary icon with subtle color
  factory CrownImageIconStyle.secondary(CrownThemeData theme) {
    return CrownImageIconStyle(
      size: 24,
      color: theme.colors.textSecondary,
    );
  }
}
