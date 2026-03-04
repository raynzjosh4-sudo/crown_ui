import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

class CrownIconStyle {
  final double? size;
  final Color? color;
  final double? opacity;
  final bool isButton;
  final double? buttonSize;

  const CrownIconStyle({
    this.size,
    this.color,
    this.opacity,
    this.isButton = false,
    this.buttonSize,
  });

  factory CrownIconStyle.defaultStyle(CrownThemeData theme) {
    return CrownIconStyle(
      size: 24.0,
      color: theme.colors.textPrimary,
      opacity: 1.0,
      isButton: false,
    );
  }

  factory CrownIconStyle.small(CrownThemeData theme) {
    return CrownIconStyle(
      size: 16.0,
      color: theme.colors.textSecondary,
      opacity: 1.0,
      isButton: false,
    );
  }

  factory CrownIconStyle.medium(CrownThemeData theme) {
    return CrownIconStyle(
      size: 24.0,
      color: theme.colors.textPrimary,
      opacity: 1.0,
      isButton: false,
    );
  }

  factory CrownIconStyle.large(CrownThemeData theme) {
    return CrownIconStyle(
      size: 32.0,
      color: theme.colors.primary,
      opacity: 1.0,
      isButton: false,
    );
  }

  factory CrownIconStyle.button(CrownThemeData theme) {
    return CrownIconStyle(
      size: 24.0,
      color: theme.colors.primary,
      opacity: 1.0,
      isButton: true,
      buttonSize: 44.0,
    );
  }

  CrownIconStyle copyWith({
    double? size,
    Color? color,
    double? opacity,
    bool? isButton,
    double? buttonSize,
  }) {
    return CrownIconStyle(
      size: size ?? this.size,
      color: color ?? this.color,
      opacity: opacity ?? this.opacity,
      isButton: isButton ?? this.isButton,
      buttonSize: buttonSize ?? this.buttonSize,
    );
  }
}
