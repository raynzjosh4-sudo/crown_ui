import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../utils/platform_utils.dart';

/// Style configuration for CrownToast component
///
/// Toast-like notifications with platform-specific behaviors:
/// - iOS: Rounded, more spacious
/// - Android: Material Design with shadow
/// - Desktop/Web: Compact with minimal shadow
class CrownToastStyle {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double borderWidth;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final TextStyle? textStyle;
  final IconData? icon;
  final Duration? duration;
  final List<BoxShadow>? boxShadow;
  final double opacity;

  const CrownToastStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.borderWidth = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.textStyle,
    this.icon,
    this.duration,
    this.boxShadow,
    this.opacity = 0.95,
  });

  factory CrownToastStyle.success(CrownThemeData theme) {
    return CrownToastStyle(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 20,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      padding: PlatformUtils.getPlatformPadding(
        mobile: 16,
        desktop: 12,
        web: 10,
      ),
      textStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 13,
          web: 12,
        ),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      icon: Icons.check_circle,
      duration: const Duration(milliseconds: 2000),
      boxShadow: PlatformUtils.isWeb ? null : theme.borders.shadowMedium,
      opacity: PlatformUtils.isWeb ? 1.0 : 0.95,
    );
  }

  factory CrownToastStyle.error(CrownThemeData theme) {
    return CrownToastStyle(
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 20,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      padding: PlatformUtils.getPlatformPadding(
        mobile: 16,
        desktop: 12,
        web: 10,
      ),
      textStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 13,
          web: 12,
        ),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      icon: Icons.error_outline,
      duration: const Duration(milliseconds: 3000),
      boxShadow: PlatformUtils.isWeb ? null : theme.borders.shadowMedium,
      opacity: PlatformUtils.isWeb ? 1.0 : 0.95,
    );
  }

  factory CrownToastStyle.info(CrownThemeData theme) {
    return CrownToastStyle(
      backgroundColor: theme.colors.primary,
      foregroundColor: Colors.white,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 20,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      padding: PlatformUtils.getPlatformPadding(
        mobile: 16,
        desktop: 12,
        web: 10,
      ),
      textStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 13,
          web: 12,
        ),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      icon: Icons.info_outline,
      duration: const Duration(milliseconds: 2500),
      boxShadow: PlatformUtils.isWeb ? null : theme.borders.shadowMedium,
      opacity: PlatformUtils.isWeb ? 1.0 : 0.95,
    );
  }

  factory CrownToastStyle.warning(CrownThemeData theme) {
    return CrownToastStyle(
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 20,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      padding: PlatformUtils.getPlatformPadding(
        mobile: 16,
        desktop: 12,
        web: 10,
      ),
      textStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 13,
          web: 12,
        ),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      icon: Icons.warning_amber,
      duration: const Duration(milliseconds: 2500),
      boxShadow: PlatformUtils.isWeb ? null : theme.borders.shadowMedium,
      opacity: PlatformUtils.isWeb ? 1.0 : 0.95,
    );
  }

  CrownToastStyle copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    double? borderWidth,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    TextStyle? textStyle,
    IconData? icon,
    Duration? duration,
    List<BoxShadow>? boxShadow,
    double? opacity,
  }) {
    return CrownToastStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
      icon: icon ?? this.icon,
      duration: duration ?? this.duration,
      boxShadow: boxShadow ?? this.boxShadow,
      opacity: opacity ?? this.opacity,
    );
  }
}
