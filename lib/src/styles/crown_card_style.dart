import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

class CrownCardStyle {
  final Color? backgroundColor;
  final Color? borderColor;
  final double borderWidth;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final List<BoxShadow>? boxShadow;
  final Duration animationDuration;

  const CrownCardStyle({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.padding = const EdgeInsets.all(16),
    this.boxShadow,
    this.animationDuration = const Duration(milliseconds: 200),
  });

  factory CrownCardStyle.elevated(CrownThemeData theme) {
    return CrownCardStyle(
      backgroundColor: theme.colors.surface,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      padding: const EdgeInsets.all(16),
      boxShadow: theme.borders.shadowMedium,
    );
  }

  factory CrownCardStyle.outlined(CrownThemeData theme) {
    return CrownCardStyle(
      backgroundColor: theme.colors.surface,
      borderColor: theme.colors.border,
      borderWidth: 1,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      padding: const EdgeInsets.all(16),
    );
  }

  factory CrownCardStyle.filled(CrownThemeData theme) {
    return CrownCardStyle(
      backgroundColor: theme.colors.surfaceLight,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      padding: const EdgeInsets.all(16),
      boxShadow: theme.borders.shadowSmall,
    );
  }

  factory CrownCardStyle.minimal(CrownThemeData theme) {
    return CrownCardStyle(
      backgroundColor: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      padding: const EdgeInsets.all(16),
    );
  }

  CrownCardStyle copyWith({
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    List<BoxShadow>? boxShadow,
    Duration? animationDuration,
  }) {
    return CrownCardStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      boxShadow: boxShadow ?? this.boxShadow,
      animationDuration: animationDuration ?? this.animationDuration,
    );
  }
}
