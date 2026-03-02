import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

class CrownButtonStyle {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderColor;
  final double borderWidth;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final TextStyle? textStyle;
  final List<BoxShadow>? boxShadow;
  final Duration animationDuration;
  final double scale;

  const CrownButtonStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.borderWidth = 0,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.textStyle,
    this.boxShadow,
    this.animationDuration = const Duration(milliseconds: 200),
    this.scale = 0.95,
  });

  factory CrownButtonStyle.primary(CrownThemeData theme) {
    return CrownButtonStyle(
      backgroundColor: theme.colors.primary,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      textStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      boxShadow: theme.borders.shadowMedium,
    );
  }

  factory CrownButtonStyle.secondary(CrownThemeData theme) {
    return CrownButtonStyle(
      backgroundColor: theme.colors.accent,
      foregroundColor: theme.colors.textPrimary,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: theme.colors.textPrimary),
      boxShadow: theme.borders.shadowSmall,
    );
  }

  factory CrownButtonStyle.outlined(CrownThemeData theme) {
    return CrownButtonStyle(
      backgroundColor: Colors.transparent,
      foregroundColor: theme.colors.primary,
      borderColor: theme.colors.primary,
      borderWidth: 2,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: theme.colors.primary),
    );
  }

  factory CrownButtonStyle.ghost(CrownThemeData theme) {
    return CrownButtonStyle(
      backgroundColor: Colors.transparent,
      foregroundColor: theme.colors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: theme.colors.primary),
    );
  }

  factory CrownButtonStyle.danger(CrownThemeData theme) {
    return CrownButtonStyle(
      backgroundColor: theme.colors.error,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      textStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      boxShadow: theme.borders.shadowMedium,
    );
  }

  factory CrownButtonStyle.success(CrownThemeData theme) {
    return CrownButtonStyle(
      backgroundColor: theme.colors.success,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      textStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      boxShadow: theme.borders.shadowMedium,
    );
  }

  CrownButtonStyle copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    Color? borderColor,
    double? borderWidth,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
    TextStyle? textStyle,
    List<BoxShadow>? boxShadow,
    Duration? animationDuration,
    double? scale,
  }) {
    return CrownButtonStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      padding: padding ?? this.padding,
      borderRadius: borderRadius ?? this.borderRadius,
      textStyle: textStyle ?? this.textStyle,
      boxShadow: boxShadow ?? this.boxShadow,
      animationDuration: animationDuration ?? this.animationDuration,
      scale: scale ?? this.scale,
    );
  }
}
