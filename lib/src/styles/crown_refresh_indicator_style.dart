import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownRefreshIndicator
///
/// Controls the appearance of the refresh indicator including colors,
/// size, stroke width, and displacement.
class CrownRefreshIndicatorStyle {
  /// Color of the refresh indicator
  final Color color;

  /// Background color of the refresh indicator
  final Color backgroundColor;

  /// Stroke width of the indicator
  final double strokeWidth;

  /// Distance needed to trigger refresh
  final double displacement;

  /// Animation duration for refresh
  final Duration animationDuration;

  const CrownRefreshIndicatorStyle({
    required this.color,
    required this.backgroundColor,
    this.strokeWidth = 2.5,
    this.displacement = 40.0,
    this.animationDuration = const Duration(milliseconds: 300),
  });

  /// Default style with theme colors
  factory CrownRefreshIndicatorStyle.defaultStyle(CrownThemeData theme) {
    return CrownRefreshIndicatorStyle(
      color: theme.colors.primary,
      backgroundColor: theme.colors.surface,
      strokeWidth: 2.5,
      displacement: 40.0,
    );
  }

  /// Elevated style with larger indicator
  factory CrownRefreshIndicatorStyle.elevated(CrownThemeData theme) {
    return CrownRefreshIndicatorStyle(
      color: theme.colors.primaryDark,
      backgroundColor: theme.colors.surfaceLight,
      strokeWidth: 3.0,
      displacement: 50.0,
    );
  }

  /// Subtle style with muted colors
  factory CrownRefreshIndicatorStyle.subtle(CrownThemeData theme) {
    return CrownRefreshIndicatorStyle(
      color: theme.colors.textSecondary,
      backgroundColor: theme.colors.border,
      strokeWidth: 2.0,
      displacement: 35.0,
    );
  }

  /// Compact style with minimal displacement
  factory CrownRefreshIndicatorStyle.compact(CrownThemeData theme) {
    return CrownRefreshIndicatorStyle(
      color: theme.colors.primary,
      backgroundColor: theme.colors.surface,
      strokeWidth: 2.0,
      displacement: 30.0,
    );
  }

  /// Success style with green indicator
  factory CrownRefreshIndicatorStyle.success(CrownThemeData theme) {
    return CrownRefreshIndicatorStyle(
      color: theme.colors.success,
      backgroundColor: theme.colors.surface,
      strokeWidth: 2.5,
      displacement: 40.0,
    );
  }
}
