import 'package:flutter/material.dart';

class CrownColors {
  final Color primary;
  final Color primaryLight;
  final Color primaryDark;
  final Color accent;
  final Color accentLight;
  final Color accentDark;
  final Color background;
  final Color surface;
  final Color surfaceLight;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color success;
  final Color error;
  final Color warning;
  final Color info;
  final Color disabled;
  final Color border;
  final Color divider;
  final Color overlay;

  const CrownColors({
    required this.primary,
    required this.primaryLight,
    required this.primaryDark,
    required this.accent,
    required this.accentLight,
    required this.accentDark,
    required this.background,
    required this.surface,
    required this.surfaceLight,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.success,
    required this.error,
    required this.warning,
    required this.info,
    required this.disabled,
    required this.border,
    required this.divider,
    required this.overlay,
  });

  factory CrownColors.light() {
    return const CrownColors(
      primary: Color(0xFFD4AF37),
      primaryLight: Color(0xFFE8C547),
      primaryDark: Color(0xFFAA8C2C),
      accent: Color(0xFFC0C0C0),
      accentLight: Color(0xFFD3D3D3),
      accentDark: Color(0xFF808080),
      background: Color(0xFF1A1A1A),
      surface: Color(0xFF2D2D2D),
      surfaceLight: Color(0xFF3F3F3F),
      textPrimary: Color(0xFFFFFFFF),
      textSecondary: Color(0xFFB0B0B0),
      textTertiary: Color(0xFF707070),
      success: Color(0xFF4CAF50),
      error: Color(0xFFFF6B6B),
      warning: Color(0xFFFFC107),
      info: Color(0xFF2196F3),
      disabled: Color(0xFF555555),
      border: Color(0xFF404040),
      divider: Color(0xFF333333),
      overlay: Color(0x80000000),
    );
  }

  factory CrownColors.dark() {
    return const CrownColors(
      primary: Color(0xFFF4D03F),
      primaryLight: Color(0xFFFEEF5E),
      primaryDark: Color(0xFF9A7A1A),
      accent: Color(0xFFE8E8E8),
      accentLight: Color(0xFFFAFAFA),
      accentDark: Color(0xFF505050),
      background: Color(0xFF0D0D0D),
      surface: Color(0xFF1A1A1A),
      surfaceLight: Color(0xFF2D2D2D),
      textPrimary: Color(0xFFFFFFFF),
      textSecondary: Color(0xFFA8A8A8),
      textTertiary: Color(0xFF606060),
      success: Color(0xFF66BB6A),
      error: Color(0xFFEF5350),
      warning: Color(0xFFFFB74D),
      info: Color(0xFF42A5F5),
      disabled: Color(0xFF424242),
      border: Color(0xFF303030),
      divider: Color(0xFF1F1F1F),
      overlay: Color(0xB3000000),
    );
  }

  CrownColors copyWith({
    Color? primary,
    Color? primaryLight,
    Color? primaryDark,
    Color? accent,
    Color? accentLight,
    Color? accentDark,
    Color? background,
    Color? surface,
    Color? surfaceLight,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? success,
    Color? error,
    Color? warning,
    Color? info,
    Color? disabled,
    Color? border,
    Color? divider,
    Color? overlay,
  }) {
    return CrownColors(
      primary: primary ?? this.primary,
      primaryLight: primaryLight ?? this.primaryLight,
      primaryDark: primaryDark ?? this.primaryDark,
      accent: accent ?? this.accent,
      accentLight: accentLight ?? this.accentLight,
      accentDark: accentDark ?? this.accentDark,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      surfaceLight: surfaceLight ?? this.surfaceLight,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      success: success ?? this.success,
      error: error ?? this.error,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      disabled: disabled ?? this.disabled,
      border: border ?? this.border,
      divider: divider ?? this.divider,
      overlay: overlay ?? this.overlay,
    );
  }
}
