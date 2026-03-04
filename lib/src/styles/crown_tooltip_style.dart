import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';

/// Style configuration for CrownTooltip
class CrownTooltipStyle {
  /// The message to display in the tooltip
  final String message;

  /// The height of the tooltip
  final double? height;

  /// The text style for the tooltip message
  final TextStyle textStyle;

  /// The background color of the tooltip
  final Color backgroundColor;

  /// The radius of the tooltip
  final double borderRadius;

  /// Show duration in milliseconds
  final Duration showDuration;

  /// Wait duration before showing
  final Duration waitDuration;

  /// Tooltip position preference
  final TooltipPosition position;

  /// Padding inside tooltip
  final EdgeInsetsGeometry padding;

  /// Margin around tooltip
  final EdgeInsetsGeometry margin;

  /// Shadow elevation
  final double elevation;

  const CrownTooltipStyle({
    required this.message,
    required this.textStyle,
    required this.backgroundColor,
    this.height,
    this.borderRadius = 4.0,
    this.showDuration = const Duration(seconds: 3),
    this.waitDuration = const Duration(milliseconds: 0),
    this.position = TooltipPosition.below,
    this.padding = const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    this.margin = const EdgeInsets.all(0),
    this.elevation = 0,
  });

  /// Android Material style tooltip - Dark background with white text
  factory CrownTooltipStyle.android(CrownThemeData theme, String message) {
    return CrownTooltipStyle(
      message: message,
      textStyle: TextStyle(
        color: Colors.white, // White text
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3,
      ),
      backgroundColor:
          theme.colors.textPrimary.withOpacity(0.9), // Dark background
      borderRadius: 4.0,
      height: 32,
      showDuration: const Duration(seconds: 3),
      waitDuration: const Duration(milliseconds: 0),
      position: TooltipPosition.below,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      margin: const EdgeInsets.all(0),
      elevation: 8,
    );
  }

  /// iOS cupertino style tooltip - Light background with dark text
  factory CrownTooltipStyle.ios(CrownThemeData theme, String message) {
    return CrownTooltipStyle(
      message: message,
      textStyle: TextStyle(
        color: theme.colors.textPrimary, // Dark text
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.2,
      ),
      backgroundColor: theme.colors.surface, // Light background
      borderRadius: 12.0, // More rounded for iOS
      height: 36,
      showDuration: const Duration(seconds: 4),
      waitDuration: const Duration(milliseconds: 200),
      position: TooltipPosition.above,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      margin: const EdgeInsets.only(bottom: 8),
      elevation: 10,
    );
  }

  /// Windows tooltip style - Light background with dark text
  factory CrownTooltipStyle.windows(CrownThemeData theme, String message) {
    return CrownTooltipStyle(
      message: message,
      textStyle: TextStyle(
        color: theme.colors.textPrimary, // Dark text
        fontSize: 11,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      backgroundColor: theme.colors.surface, // Light background
      borderRadius: 2.0, // Sharp corners for Windows
      height: 28,
      showDuration: const Duration(seconds: 5),
      waitDuration: const Duration(milliseconds: 500),
      position: TooltipPosition.below,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      margin: const EdgeInsets.all(0),
      elevation: 4,
    );
  }

  /// Default style (Android)
  factory CrownTooltipStyle.defaultStyle(CrownThemeData theme, String message) {
    return CrownTooltipStyle.android(theme, message);
  }
}

/// Tooltip position preference
enum TooltipPosition {
  above,
  below,
}
