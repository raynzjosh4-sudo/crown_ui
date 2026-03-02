import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

class CrownInputStyle {
  final Color? fillColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? errorBorderColor;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final Color? hintColor;
  final Color? textColor;
  final double borderWidth;
  final double focusedBorderWidth;
  final BorderRadius borderRadius;
  final EdgeInsets contentPadding;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final List<BoxShadow>? boxShadow;

  const CrownInputStyle({
    this.fillColor,
    this.borderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.prefixIconColor,
    this.suffixIconColor,
    this.hintColor,
    this.textColor,
    this.borderWidth = 1,
    this.focusedBorderWidth = 2,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.hintStyle,
    this.textStyle,
    this.boxShadow,
  });

  factory CrownInputStyle.outlined(CrownThemeData theme) {
    return CrownInputStyle(
      fillColor: theme.colors.background,
      borderColor: theme.colors.border,
      focusedBorderColor: theme.colors.primary,
      errorBorderColor: theme.colors.error,
      prefixIconColor: theme.colors.textSecondary,
      suffixIconColor: theme.colors.textSecondary,
      hintColor: theme.colors.textSecondary,
      textColor: theme.colors.textPrimary,
      borderWidth: 1,
      focusedBorderWidth: 2,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      hintStyle: TextStyle(color: theme.colors.textSecondary, fontSize: 16),
      textStyle: TextStyle(color: theme.colors.textPrimary, fontSize: 16),
      boxShadow: theme.borders.shadowSmall,
    );
  }

  factory CrownInputStyle.filled(CrownThemeData theme) {
    return CrownInputStyle(
      fillColor: theme.colors.surfaceLight,
      borderColor: Colors.transparent,
      focusedBorderColor: theme.colors.primary,
      errorBorderColor: theme.colors.error,
      prefixIconColor: theme.colors.primary,
      suffixIconColor: theme.colors.textSecondary,
      hintColor: theme.colors.textSecondary,
      textColor: theme.colors.textPrimary,
      borderWidth: 0,
      focusedBorderWidth: 2,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      hintStyle: TextStyle(color: theme.colors.textSecondary, fontSize: 16),
      textStyle: TextStyle(color: theme.colors.textPrimary, fontSize: 16),
    );
  }

  factory CrownInputStyle.underlined(CrownThemeData theme) {
    return CrownInputStyle(
      fillColor: Colors.transparent,
      borderColor: theme.colors.border,
      focusedBorderColor: theme.colors.primary,
      errorBorderColor: theme.colors.error,
      prefixIconColor: theme.colors.textSecondary,
      suffixIconColor: theme.colors.textSecondary,
      hintColor: theme.colors.textSecondary,
      textColor: theme.colors.textPrimary,
      borderWidth: 0,
      focusedBorderWidth: 2,
      borderRadius: BorderRadius.zero,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      hintStyle: TextStyle(color: theme.colors.textSecondary, fontSize: 16),
      textStyle: TextStyle(color: theme.colors.textPrimary, fontSize: 16),
    );
  }

  CrownInputStyle copyWith({
    Color? fillColor,
    Color? borderColor,
    Color? focusedBorderColor,
    Color? errorBorderColor,
    Color? prefixIconColor,
    Color? suffixIconColor,
    Color? hintColor,
    Color? textColor,
    double? borderWidth,
    double? focusedBorderWidth,
    BorderRadius? borderRadius,
    EdgeInsets? contentPadding,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    List<BoxShadow>? boxShadow,
  }) {
    return CrownInputStyle(
      fillColor: fillColor ?? this.fillColor,
      borderColor: borderColor ?? this.borderColor,
      focusedBorderColor: focusedBorderColor ?? this.focusedBorderColor,
      errorBorderColor: errorBorderColor ?? this.errorBorderColor,
      prefixIconColor: prefixIconColor ?? this.prefixIconColor,
      suffixIconColor: suffixIconColor ?? this.suffixIconColor,
      hintColor: hintColor ?? this.hintColor,
      textColor: textColor ?? this.textColor,
      borderWidth: borderWidth ?? this.borderWidth,
      focusedBorderWidth: focusedBorderWidth ?? this.focusedBorderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      contentPadding: contentPadding ?? this.contentPadding,
      hintStyle: hintStyle ?? this.hintStyle,
      textStyle: textStyle ?? this.textStyle,
      boxShadow: boxShadow ?? this.boxShadow,
    );
  }
}
