import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../utils/platform_utils.dart';

/// Style configuration for CrownSnackBar component
class CrownSnackBarStyle {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double borderWidth;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final TextStyle? textStyle;
  final Duration? duration;
  final List<BoxShadow>? boxShadow;

  const CrownSnackBarStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.borderWidth = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.textStyle,
    this.duration,
    this.boxShadow,
  });

  factory CrownSnackBarStyle.success(CrownThemeData theme) {
    return CrownSnackBarStyle(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 16,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      padding: PlatformUtils.getPlatformPadding(
        mobile: 16,
        desktop: 20,
        web: 12,
      ),
      textStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 14,
          web: 13,
        ),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      duration: const Duration(seconds: 4),
      boxShadow: theme.borders.shadowMedium,
    );
  }

  factory CrownSnackBarStyle.error(CrownThemeData theme) {
    return CrownSnackBarStyle(
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 16,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      padding: PlatformUtils.getPlatformPadding(
        mobile: 16,
        desktop: 20,
        web: 12,
      ),
      textStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 14,
          web: 13,
        ),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      duration: const Duration(seconds: 4),
      boxShadow: theme.borders.shadowMedium,
    );
  }

  factory CrownSnackBarStyle.info(CrownThemeData theme) {
    return CrownSnackBarStyle(
      backgroundColor: theme.colors.primary,
      foregroundColor: Colors.white,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 16,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      padding: PlatformUtils.getPlatformPadding(
        mobile: 16,
        desktop: 20,
        web: 12,
      ),
      textStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 14,
          web: 13,
        ),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      duration: const Duration(seconds: 3),
      boxShadow: theme.borders.shadowMedium,
    );
  }

  factory CrownSnackBarStyle.warning(CrownThemeData theme) {
    return CrownSnackBarStyle(
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 16,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      padding: PlatformUtils.getPlatformPadding(
        mobile: 16,
        desktop: 20,
        web: 12,
      ),
      textStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 14,
          web: 13,
        ),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      duration: const Duration(seconds: 4),
      boxShadow: theme.borders.shadowMedium,
    );
  }

  CrownSnackBarStyle copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    double? borderWidth,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    TextStyle? textStyle,
    Duration? duration,
    List<BoxShadow>? boxShadow,
  }) {
    return CrownSnackBarStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      textStyle: textStyle ?? this.textStyle,
      duration: duration ?? this.duration,
      boxShadow: boxShadow ?? this.boxShadow,
    );
  }
}
