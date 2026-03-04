import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../utils/platform_utils.dart';

/// Style configuration for CrownInkWell component
///
/// Ink ripple/splash effect styling with platform-specific behaviors:
/// - iOS: Subtle, opacity-based effect
/// - Android: Material Design ripple effect
/// - Desktop/Web: Minimal ripple effect
class CrownInkWellStyle {
  final Color? splashColor;
  final Color? highlightColor;
  final Color? hoverColor;
  final double splashRadius;
  final Duration animationDuration;
  final BorderRadius borderRadius;

  const CrownInkWellStyle({
    this.splashColor,
    this.highlightColor,
    this.hoverColor,
    this.splashRadius = 50,
    this.animationDuration = const Duration(milliseconds: 200),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });

  factory CrownInkWellStyle.primary(CrownThemeData theme) {
    return CrownInkWellStyle(
      splashColor: theme.colors.primary.withOpacity(0.3),
      highlightColor: theme.colors.primary.withOpacity(0.1),
      hoverColor: theme.colors.primary.withOpacity(0.05),
      splashRadius: PlatformUtils.isMobile ? 50 : 40,
      animationDuration: Duration(
        milliseconds: PlatformUtils.isIOS ? 250 : 200,
      ),
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 20,
        android: 12,
        desktop: 8,
        web: 6,
      ),
    );
  }

  factory CrownInkWellStyle.secondary(CrownThemeData theme) {
    return CrownInkWellStyle(
      splashColor: theme.colors.accent.withOpacity(0.3),
      highlightColor: theme.colors.accent.withOpacity(0.1),
      hoverColor: theme.colors.accent.withOpacity(0.05),
      splashRadius: PlatformUtils.isMobile ? 50 : 40,
      animationDuration: Duration(
        milliseconds: PlatformUtils.isIOS ? 250 : 200,
      ),
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 20,
        android: 12,
        desktop: 8,
        web: 6,
      ),
    );
  }

  factory CrownInkWellStyle.subtle(CrownThemeData theme) {
    return CrownInkWellStyle(
      splashColor: theme.colors.textPrimary.withOpacity(0.1),
      highlightColor: theme.colors.textPrimary.withOpacity(0.05),
      hoverColor: theme.colors.textPrimary.withOpacity(0.03),
      splashRadius: PlatformUtils.isMobile ? 40 : 30,
      animationDuration: const Duration(milliseconds: 200),
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 20,
        android: 12,
        desktop: 8,
        web: 6,
      ),
    );
  }

  CrownInkWellStyle copyWith({
    Color? splashColor,
    Color? highlightColor,
    Color? hoverColor,
    double? splashRadius,
    Duration? animationDuration,
    BorderRadius? borderRadius,
  }) {
    return CrownInkWellStyle(
      splashColor: splashColor ?? this.splashColor,
      highlightColor: highlightColor ?? this.highlightColor,
      hoverColor: hoverColor ?? this.hoverColor,
      splashRadius: splashRadius ?? this.splashRadius,
      animationDuration: animationDuration ?? this.animationDuration,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
