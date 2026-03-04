import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownImage
///
/// Controls the appearance of the image including dimensions,
/// border radius, background color, and loading/error states.
class CrownImageStyle {
  /// Width of the image container
  final double width;

  /// Height of the image container
  final double height;

  /// Border radius for rounded corners
  final double borderRadius;

  /// Background color while loading
  final Color backgroundColor;

  /// Loading indicator color
  final Color loadingColor;

  /// Error icon color
  final Color errorColor;

  /// Optional border decoration
  final Border? border;

  const CrownImageStyle({
    required this.width,
    required this.height,
    this.borderRadius = 0,
    required this.backgroundColor,
    required this.loadingColor,
    required this.errorColor,
    this.border,
  });

  /// Default style with theme colors
  factory CrownImageStyle.defaultStyle(CrownThemeData theme) {
    return CrownImageStyle(
      width: 200,
      height: 200,
      borderRadius: 8,
      backgroundColor: theme.colors.surface,
      loadingColor: theme.colors.primary,
      errorColor: theme.colors.error,
    );
  }

  /// Square image style (200x200)
  factory CrownImageStyle.square(CrownThemeData theme) {
    return CrownImageStyle(
      width: 200,
      height: 200,
      borderRadius: 8,
      backgroundColor: theme.colors.surface,
      loadingColor: theme.colors.primary,
      errorColor: theme.colors.error,
    );
  }

  /// Large image style (300x300)
  factory CrownImageStyle.large(CrownThemeData theme) {
    return CrownImageStyle(
      width: 300,
      height: 300,
      borderRadius: 12,
      backgroundColor: theme.colors.surfaceLight,
      loadingColor: theme.colors.primaryDark,
      errorColor: theme.colors.error,
    );
  }

  /// Small thumbnail style (80x80)
  factory CrownImageStyle.thumbnail(CrownThemeData theme) {
    return CrownImageStyle(
      width: 80,
      height: 80,
      borderRadius: 4,
      backgroundColor: theme.colors.border,
      loadingColor: theme.colors.primary,
      errorColor: theme.colors.error,
    );
  }

  /// Circular style for profile images
  factory CrownImageStyle.circular(CrownThemeData theme) {
    return CrownImageStyle(
      width: 120,
      height: 120,
      borderRadius: 60,
      backgroundColor: theme.colors.surface,
      loadingColor: theme.colors.primary,
      errorColor: theme.colors.error,
    );
  }

  /// Card-like style with border
  factory CrownImageStyle.card(CrownThemeData theme) {
    return CrownImageStyle(
      width: 250,
      height: 200,
      borderRadius: 12,
      backgroundColor: theme.colors.surface,
      loadingColor: theme.colors.primary,
      errorColor: theme.colors.error,
      border: Border.all(
        color: theme.colors.border,
        width: 1,
      ),
    );
  }

  /// Rounded rectangular style (aspect ratio 16:9)
  factory CrownImageStyle.landscape(CrownThemeData theme) {
    return CrownImageStyle(
      width: 280,
      height: 160,
      borderRadius: 12,
      backgroundColor: theme.colors.surface,
      loadingColor: theme.colors.primary,
      errorColor: theme.colors.error,
    );
  }

  /// Portrait rectangular style (aspect ratio 2:3)
  factory CrownImageStyle.portrait(CrownThemeData theme) {
    return CrownImageStyle(
      width: 160,
      height: 240,
      borderRadius: 8,
      backgroundColor: theme.colors.surface,
      loadingColor: theme.colors.primary,
      errorColor: theme.colors.error,
    );
  }

  /// iOS-style rounded corners with soft shadow effect
  factory CrownImageStyle.iosStyle(CrownThemeData theme) {
    return CrownImageStyle(
      width: 200,
      height: 200,
      borderRadius: 20,
      backgroundColor: theme.colors.surfaceLight,
      loadingColor: theme.colors.primary,
      errorColor: theme.colors.error,
    );
  }

  /// Minimal style with no border radius
  factory CrownImageStyle.minimal(CrownThemeData theme) {
    return CrownImageStyle(
      width: 200,
      height: 200,
      borderRadius: 0,
      backgroundColor: theme.colors.surface,
      loadingColor: theme.colors.primary,
      errorColor: theme.colors.error,
    );
  }
}
