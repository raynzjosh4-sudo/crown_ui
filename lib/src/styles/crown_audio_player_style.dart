import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../utils/platform_utils.dart';

/// Style configuration for CrownAudioPlayer component
///
/// Audio player UI styling with platform-specific controls:
/// - iOS: Larger touch targets and spacing
/// - Android: Material Design controls
/// - Desktop/Web: Compact controls
class CrownAudioPlayerStyle {
  final Color? backgroundColor;
  final Color? controlColor;
  final Color? progressColor;
  final Color? bufferedColor;
  final double controlSize;
  final double sliderHeight;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final List<BoxShadow>? boxShadow;

  const CrownAudioPlayerStyle({
    this.backgroundColor,
    this.controlColor,
    this.progressColor,
    this.bufferedColor,
    this.controlSize = 48,
    this.sliderHeight = 4,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.padding = const EdgeInsets.all(16),
    this.titleStyle,
    this.subtitleStyle,
    this.boxShadow,
  });

  factory CrownAudioPlayerStyle.default_(CrownThemeData theme) {
    return CrownAudioPlayerStyle(
      backgroundColor: theme.colors.surface,
      controlColor: theme.colors.primary,
      progressColor: theme.colors.primary,
      bufferedColor: theme.colors.primary.withOpacity(0.3),
      controlSize:
          PlatformUtils.isWeb ? 36 : (PlatformUtils.isMobile ? 48 : 44),
      sliderHeight: PlatformUtils.isWeb ? 3 : 4,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 16,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      padding: PlatformUtils.getPlatformPadding(
        mobile: 16,
        desktop: 12,
        web: 10,
      ),
      titleStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 13,
          web: 12,
        ),
        fontWeight: FontWeight.w600,
        color: theme.colors.textPrimary,
      ),
      subtitleStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 14,
          android: 12,
          desktop: 11,
          web: 10,
        ),
        fontWeight: FontWeight.w400,
        color: theme.colors.textSecondary,
      ),
      boxShadow: PlatformUtils.isWeb ? null : theme.borders.shadowSmall,
    );
  }

  factory CrownAudioPlayerStyle.compact(CrownThemeData theme) {
    return CrownAudioPlayerStyle(
      backgroundColor: theme.colors.surface,
      controlColor: theme.colors.primary,
      progressColor: theme.colors.primary,
      bufferedColor: theme.colors.primary.withOpacity(0.3),
      controlSize: 40,
      sliderHeight: 3,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      padding: const EdgeInsets.all(12),
      titleStyle: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
      ),
      subtitleStyle: const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
      ),
      boxShadow: theme.borders.shadowSmall,
    );
  }

  CrownAudioPlayerStyle copyWith({
    Color? backgroundColor,
    Color? controlColor,
    Color? progressColor,
    Color? bufferedColor,
    double? controlSize,
    double? sliderHeight,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    List<BoxShadow>? boxShadow,
  }) {
    return CrownAudioPlayerStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      controlColor: controlColor ?? this.controlColor,
      progressColor: progressColor ?? this.progressColor,
      bufferedColor: bufferedColor ?? this.bufferedColor,
      controlSize: controlSize ?? this.controlSize,
      sliderHeight: sliderHeight ?? this.sliderHeight,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      titleStyle: titleStyle ?? this.titleStyle,
      subtitleStyle: subtitleStyle ?? this.subtitleStyle,
      boxShadow: boxShadow ?? this.boxShadow,
    );
  }
}
