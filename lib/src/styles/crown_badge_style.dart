import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownBadge
class CrownBadgeStyle {
  final TextStyle labelStyle;
  final Color backgroundColor;
  final Color textColor;
  final double smallSize;
  final double largeSize;
  final AlignmentGeometry alignment;

  const CrownBadgeStyle({
    required this.labelStyle,
    required this.backgroundColor,
    required this.textColor,
    required this.smallSize,
    required this.largeSize,
    required this.alignment,
  });

  /// Default badge style
  factory CrownBadgeStyle.defaultStyle(CrownThemeData theme) {
    return CrownBadgeStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: theme.colors.error,
      textColor: Colors.white,
      smallSize: 18,
      largeSize: 26,
      alignment: Alignment.topRight,
    );
  }

  /// Success badge style
  factory CrownBadgeStyle.success(CrownThemeData theme) {
    return CrownBadgeStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: theme.colors.success,
      textColor: Colors.white,
      smallSize: 18,
      largeSize: 26,
      alignment: Alignment.topRight,
    );
  }

  /// Warning badge style
  factory CrownBadgeStyle.warning(CrownThemeData theme) {
    return CrownBadgeStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: theme.colors.warning,
      textColor: Colors.white,
      smallSize: 18,
      largeSize: 26,
      alignment: Alignment.topRight,
    );
  }

  /// Info badge style
  factory CrownBadgeStyle.info(CrownThemeData theme) {
    return CrownBadgeStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: theme.colors.info,
      textColor: Colors.white,
      smallSize: 18,
      largeSize: 26,
      alignment: Alignment.topRight,
    );
  }

  /// Primary badge style
  factory CrownBadgeStyle.primary(CrownThemeData theme) {
    return CrownBadgeStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: theme.colors.primary,
      textColor: Colors.white,
      smallSize: 18,
      largeSize: 26,
      alignment: Alignment.topRight,
    );
  }

  /// Small badge for dot indicators
  factory CrownBadgeStyle.dot(CrownThemeData theme) {
    return CrownBadgeStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: theme.colors.error,
      textColor: Colors.white,
      smallSize: 12,
      largeSize: 12,
      alignment: Alignment.topRight,
    );
  }
}
