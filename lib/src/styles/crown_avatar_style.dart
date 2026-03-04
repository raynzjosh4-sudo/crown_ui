import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownAvatar
///
/// Controls the appearance of the avatar including size,
/// colors, and styling for different semantic uses.
class CrownAvatarStyle {
  /// Radius of the avatar
  final double radius;

  /// Background color of the avatar
  final Color backgroundColor;

  /// Foreground color (text/icon)
  final Color foregroundColor;

  const CrownAvatarStyle({
    required this.radius,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  /// Default style with theme colors
  factory CrownAvatarStyle.defaultStyle(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 24,
      backgroundColor: theme.colors.primary,
      foregroundColor: Colors.white,
    );
  }

  /// Small avatar (radius 16)
  factory CrownAvatarStyle.small(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 16,
      backgroundColor: theme.colors.primary,
      foregroundColor: Colors.white,
    );
  }

  /// Medium avatar (radius 24)
  factory CrownAvatarStyle.medium(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 24,
      backgroundColor: theme.colors.primary,
      foregroundColor: Colors.white,
    );
  }

  /// Large avatar (radius 40)
  factory CrownAvatarStyle.large(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 40,
      backgroundColor: theme.colors.primaryDark,
      foregroundColor: Colors.white,
    );
  }

  /// Extra large avatar (radius 56)
  factory CrownAvatarStyle.extraLarge(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 56,
      backgroundColor: theme.colors.primary,
      foregroundColor: Colors.white,
    );
  }

  /// Success avatar with green background
  factory CrownAvatarStyle.success(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 24,
      backgroundColor: theme.colors.success,
      foregroundColor: Colors.white,
    );
  }

  /// Warning avatar with warning color
  factory CrownAvatarStyle.warning(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 24,
      backgroundColor: theme.colors.warning,
      foregroundColor: Colors.white,
    );
  }

  /// Error avatar with error color
  factory CrownAvatarStyle.error(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 24,
      backgroundColor: theme.colors.error,
      foregroundColor: Colors.white,
    );
  }

  /// Info avatar with info color
  factory CrownAvatarStyle.info(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 24,
      backgroundColor: theme.colors.info,
      foregroundColor: Colors.white,
    );
  }

  /// Secondary avatar with subtle styling
  factory CrownAvatarStyle.secondary(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 24,
      backgroundColor: theme.colors.surfaceLight,
      foregroundColor: theme.colors.textPrimary,
    );
  }

  /// iOS-style avatar with rounded appearance
  factory CrownAvatarStyle.iosStyle(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 28,
      backgroundColor: theme.colors.primary,
      foregroundColor: Colors.white,
    );
  }

  /// Minimal avatar with lighter background
  factory CrownAvatarStyle.minimal(CrownThemeData theme) {
    return CrownAvatarStyle(
      radius: 20,
      backgroundColor: theme.colors.border,
      foregroundColor: theme.colors.textPrimary,
    );
  }
}
