import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownTextFormField
class CrownTextFormFieldStyle {
  /// Label text
  final String? label;

  /// Hint text
  final String? hint;

  /// Helper text
  final String? helperText;

  /// Error text
  final String? errorText;

  /// Text input type
  final TextInputType keyboardType;

  /// Text input action
  final TextInputAction? textInputAction;

  /// Prefix icon
  final Widget? prefixIcon;

  /// Suffix icon
  final Widget? suffixIcon;

  /// Max lines
  final int? maxLines;

  /// Min lines
  final int? minLines;

  /// Max length
  final int? maxLength;

  /// Whether the field is obscured
  final bool obscureText;

  /// Whether the field is enabled
  final bool enabled;

  /// Whether the field is read-only
  final bool readOnly;

  /// Border color
  final Color? borderColor;

  /// Focus color
  final Color? focusColor;

  /// Border radius
  final double borderRadius;

  /// Text style
  final TextStyle? textStyle;

  /// Label style
  final TextStyle? labelStyle;

  /// Hint style
  final TextStyle? hintStyle;

  /// Fill color
  final Color? fillColor;

  /// Disabled color
  final Color? disabledColor;

  /// Content padding
  final EdgeInsetsGeometry contentPadding;

  const CrownTextFormFieldStyle({
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.borderColor,
    this.focusColor,
    this.borderRadius = 8.0,
    this.textStyle,
    this.labelStyle,
    this.hintStyle,
    this.fillColor,
    this.disabledColor,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
  });

  /// Default iOS-style text field
  factory CrownTextFormFieldStyle.ios(CrownThemeData theme) {
    return CrownTextFormFieldStyle(
      borderRadius: 12.0, // More rounded for iOS
      textStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(
        color: theme.colors.textSecondary,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      hintStyle: TextStyle(
        color: theme.colors.textSecondary.withOpacity(0.5),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      fillColor: theme.colors.surfaceLight,
      borderColor: Colors.transparent,
      focusColor: theme.colors.primary,
      disabledColor: theme.colors.disabled.withOpacity(0.2),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
    );
  }

  /// Default Android Material-style text field
  factory CrownTextFormFieldStyle.android(CrownThemeData theme) {
    return CrownTextFormFieldStyle(
      borderRadius: 8.0,
      textStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(
        color: theme.colors.textSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      hintStyle: TextStyle(
        color: theme.colors.textSecondary.withOpacity(0.6),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      fillColor: theme.colors.surface,
      borderColor: theme.colors.border,
      focusColor: theme.colors.primary,
      disabledColor: theme.colors.disabled.withOpacity(0.3),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
    );
  }

  /// Windows-style text field
  factory CrownTextFormFieldStyle.windows(CrownThemeData theme) {
    return CrownTextFormFieldStyle(
      borderRadius: 2.0, // Sharp corners for Windows
      textStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(
        color: theme.colors.textSecondary,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      hintStyle: TextStyle(
        color: theme.colors.textSecondary.withOpacity(0.7),
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
      fillColor: const Color(0xFFFAFAFA), // Windows light grey
      borderColor: const Color(0xFFC0C0C0), // Windows grey border
      focusColor: theme.colors.primary,
      disabledColor: const Color(0xFFE0E0E0),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
    );
  }

  /// Minimal style
  factory CrownTextFormFieldStyle.minimal(CrownThemeData theme) {
    return CrownTextFormFieldStyle(
      borderRadius: 4.0,
      textStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(
        color: theme.colors.textSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      hintStyle: TextStyle(
        color: theme.colors.textSecondary.withOpacity(0.5),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      fillColor: Colors.transparent,
      borderColor: theme.colors.border,
      focusColor: theme.colors.primary,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
    );
  }

  /// Material Design 3 style
  factory CrownTextFormFieldStyle.material3(CrownThemeData theme) {
    return CrownTextFormFieldStyle(
      borderRadius: 12.0,
      textStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      labelStyle: TextStyle(
        color: theme.colors.textSecondary,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.4,
      ),
      hintStyle: TextStyle(
        color: theme.colors.textSecondary.withOpacity(0.6),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      fillColor: theme.colors.surfaceLight,
      borderColor: theme.colors.border,
      focusColor: theme.colors.primary,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
    );
  }

  /// Dark mode style
  factory CrownTextFormFieldStyle.dark(CrownThemeData theme) {
    return CrownTextFormFieldStyle(
      borderRadius: 8.0,
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(
        color: Colors.white70,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      hintStyle: TextStyle(
        color: Colors.white54,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      fillColor: theme.colors.surface,
      borderColor: theme.colors.border,
      focusColor: theme.colors.primary,
      disabledColor: theme.colors.disabled.withOpacity(0.3),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
    );
  }

  /// Outlined style
  factory CrownTextFormFieldStyle.outlined(CrownThemeData theme) {
    return CrownTextFormFieldStyle(
      borderRadius: 6.0,
      textStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(
        color: theme.colors.textSecondary,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        color: theme.colors.textSecondary.withOpacity(0.6),
        fontSize: 14,
      ),
      fillColor: Colors.transparent,
      borderColor: theme.colors.border,
      focusColor: theme.colors.primary,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 12,
      ),
    );
  }

  /// Default style (Android)
  factory CrownTextFormFieldStyle.defaultStyle(CrownThemeData theme) {
    return CrownTextFormFieldStyle.android(theme);
  }
}
