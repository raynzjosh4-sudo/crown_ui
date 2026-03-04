import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../utils/platform_utils.dart';

/// Style configuration for CrownVideoPlayer component
///
/// Video player UI styling with platform-specific controls:
/// - iOS: Large play button and controls
/// - Android: Material Design video controls
/// - Desktop/Web: Standard video controls
class CrownVideoPlayerStyle {
  final Color? controlsBackgroundColor;
  final Color? controlColor;
  final Color? progressColor;
  final Color? bufferedColor;
  final double controlButtonSize;
  final double progressBarHeight;
  final BorderRadius borderRadius;
  final EdgeInsets controlsPadding;
  final TextStyle? timeTextStyle;
  final Duration controlsAutoHideDuration;
  final List<BoxShadow>? boxShadow;

  const CrownVideoPlayerStyle({
    this.controlsBackgroundColor,
    this.controlColor,
    this.progressColor,
    this.bufferedColor,
    this.controlButtonSize = 48,
    this.progressBarHeight = 4,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.controlsPadding = const EdgeInsets.all(12),
    this.timeTextStyle,
    this.controlsAutoHideDuration = const Duration(seconds: 3),
    this.boxShadow,
  });

  factory CrownVideoPlayerStyle.default_(CrownThemeData theme) {
    return CrownVideoPlayerStyle(
      controlsBackgroundColor: Colors.black45,
      controlColor: Colors.white,
      progressColor: theme.colors.primary,
      bufferedColor: Colors.white54,
      controlButtonSize:
          PlatformUtils.isWeb ? 40 : (PlatformUtils.isMobile ? 48 : 44),
      progressBarHeight: PlatformUtils.isWeb ? 3 : 4,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 16,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      controlsPadding: PlatformUtils.getPlatformPadding(
        mobile: 12,
        desktop: 10,
        web: 8,
      ),
      timeTextStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 13,
          android: 12,
          desktop: 11,
          web: 10,
        ),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      controlsAutoHideDuration: Duration(
        seconds: PlatformUtils.isMobile ? 3 : 5,
      ),
      boxShadow: PlatformUtils.isWeb ? null : theme.borders.shadowMedium,
    );
  }

  factory CrownVideoPlayerStyle.fullscreen(CrownThemeData theme) {
    return CrownVideoPlayerStyle(
      controlsBackgroundColor: Colors.black54,
      controlColor: Colors.white,
      progressColor: theme.colors.primary,
      bufferedColor: Colors.white54,
      controlButtonSize: 56,
      progressBarHeight: 5,
      borderRadius: BorderRadius.zero,
      controlsPadding: const EdgeInsets.all(16),
      timeTextStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      controlsAutoHideDuration: const Duration(seconds: 4),
      boxShadow: null,
    );
  }

  CrownVideoPlayerStyle copyWith({
    Color? controlsBackgroundColor,
    Color? controlColor,
    Color? progressColor,
    Color? bufferedColor,
    double? controlButtonSize,
    double? progressBarHeight,
    BorderRadius? borderRadius,
    EdgeInsets? controlsPadding,
    TextStyle? timeTextStyle,
    Duration? controlsAutoHideDuration,
    List<BoxShadow>? boxShadow,
  }) {
    return CrownVideoPlayerStyle(
      controlsBackgroundColor:
          controlsBackgroundColor ?? this.controlsBackgroundColor,
      controlColor: controlColor ?? this.controlColor,
      progressColor: progressColor ?? this.progressColor,
      bufferedColor: bufferedColor ?? this.bufferedColor,
      controlButtonSize: controlButtonSize ?? this.controlButtonSize,
      progressBarHeight: progressBarHeight ?? this.progressBarHeight,
      borderRadius: borderRadius ?? this.borderRadius,
      controlsPadding: controlsPadding ?? this.controlsPadding,
      timeTextStyle: timeTextStyle ?? this.timeTextStyle,
      controlsAutoHideDuration:
          controlsAutoHideDuration ?? this.controlsAutoHideDuration,
      boxShadow: boxShadow ?? this.boxShadow,
    );
  }
}
