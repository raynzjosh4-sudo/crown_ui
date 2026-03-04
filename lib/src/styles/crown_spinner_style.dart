import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownSpinner
///
/// Controls the appearance of the circular progress indicator including
/// colors, size, stroke width, and animations.
class CrownSpinnerStyle {
  /// Color of the progress indicator
  final Color valueColor;

  /// Background color of the spinner
  final Color backgroundColor;

  /// Size of the spinner
  final double size;

  /// Stroke width of the spinner
  final double strokeWidth;

  /// Animation duration for progress changes
  final Duration animationDuration;

  const CrownSpinnerStyle({
    required this.valueColor,
    required this.backgroundColor,
    this.size = 48.0,
    this.strokeWidth = 4.0,
    this.animationDuration = const Duration(seconds: 1),
  });

  /// Default style with theme colors
  factory CrownSpinnerStyle.defaultStyle(CrownThemeData theme) {
    return CrownSpinnerStyle(
      valueColor: theme.colors.primary,
      backgroundColor: theme.colors.surface,
      size: 48.0,
      strokeWidth: 4.0,
    );
  }

  /// Large spinner for prominent loading states
  factory CrownSpinnerStyle.large(CrownThemeData theme) {
    return CrownSpinnerStyle(
      valueColor: theme.colors.primaryDark,
      backgroundColor: theme.colors.surfaceLight,
      size: 64.0,
      strokeWidth: 5.0,
    );
  }

  /// Small spinner for compact display
  factory CrownSpinnerStyle.small(CrownThemeData theme) {
    return CrownSpinnerStyle(
      valueColor: theme.colors.primary,
      backgroundColor: theme.colors.border,
      size: 32.0,
      strokeWidth: 3.0,
    );
  }

  /// Success style with green color
  factory CrownSpinnerStyle.success(CrownThemeData theme) {
    return CrownSpinnerStyle(
      valueColor: theme.colors.success,
      backgroundColor: theme.colors.surface,
      size: 48.0,
      strokeWidth: 4.0,
    );
  }

  /// Warning style with warning color
  factory CrownSpinnerStyle.warning(CrownThemeData theme) {
    return CrownSpinnerStyle(
      valueColor: theme.colors.warning,
      backgroundColor: theme.colors.surface,
      size: 48.0,
      strokeWidth: 4.0,
    );
  }

  /// Error style with error color
  factory CrownSpinnerStyle.error(CrownThemeData theme) {
    return CrownSpinnerStyle(
      valueColor: theme.colors.error,
      backgroundColor: theme.colors.surface,
      size: 48.0,
      strokeWidth: 4.0,
    );
  }

  /// Minimal style with reduced stroke width
  factory CrownSpinnerStyle.minimal(CrownThemeData theme) {
    return CrownSpinnerStyle(
      valueColor: theme.colors.primary,
      backgroundColor: Colors.transparent,
      size: 36.0,
      strokeWidth: 2.0,
    );
  }
}
