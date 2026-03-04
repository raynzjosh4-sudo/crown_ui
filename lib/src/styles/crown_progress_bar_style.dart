import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownProgressBar
///
/// Controls the appearance of the progress bar including colors,
/// height, border radius, and animations.
class CrownProgressBarStyle {
  /// Background color of the progress bar
  final Color backgroundColor;

  /// Color of the progress indicator
  final Color valueColor;

  /// Height of the progress bar
  final double height;

  /// Border radius of the progress bar
  final double borderRadius;

  /// Animation duration for progress changes
  final Duration animationDuration;

  const CrownProgressBarStyle({
    required this.backgroundColor,
    required this.valueColor,
    this.height = 4.0,
    this.borderRadius = 2.0,
    this.animationDuration = const Duration(milliseconds: 300),
  });

  /// Default style with theme colors
  factory CrownProgressBarStyle.defaultStyle(CrownThemeData theme) {
    return CrownProgressBarStyle(
      backgroundColor: theme.colors.surface,
      valueColor: theme.colors.primary,
      height: 4.0,
      borderRadius: 2.0,
    );
  }

  /// Elevated style with larger height and prominent shadow
  factory CrownProgressBarStyle.elevated(CrownThemeData theme) {
    return CrownProgressBarStyle(
      backgroundColor: theme.colors.surfaceLight,
      valueColor: theme.colors.primaryDark,
      height: 6.0,
      borderRadius: 3.0,
    );
  }

  /// Subtle style with muted colors
  factory CrownProgressBarStyle.subtle(CrownThemeData theme) {
    return CrownProgressBarStyle(
      backgroundColor: theme.colors.border,
      valueColor: theme.colors.textSecondary,
      height: 3.0,
      borderRadius: 1.5,
    );
  }

  /// Success style with green color
  factory CrownProgressBarStyle.success(CrownThemeData theme) {
    return CrownProgressBarStyle(
      backgroundColor: theme.colors.surface,
      valueColor: theme.colors.success,
      height: 4.0,
      borderRadius: 2.0,
    );
  }

  /// Warning style with warning color
  factory CrownProgressBarStyle.warning(CrownThemeData theme) {
    return CrownProgressBarStyle(
      backgroundColor: theme.colors.surface,
      valueColor: theme.colors.warning,
      height: 4.0,
      borderRadius: 2.0,
    );
  }

  /// Error style with error color
  factory CrownProgressBarStyle.error(CrownThemeData theme) {
    return CrownProgressBarStyle(
      backgroundColor: theme.colors.surface,
      valueColor: theme.colors.error,
      height: 4.0,
      borderRadius: 2.0,
    );
  }

  /// Compact style with minimal height
  factory CrownProgressBarStyle.compact(CrownThemeData theme) {
    return CrownProgressBarStyle(
      backgroundColor: theme.colors.border,
      valueColor: theme.colors.primary,
      height: 2.0,
      borderRadius: 1.0,
    );
  }
}
