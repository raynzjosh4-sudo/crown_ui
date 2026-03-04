import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

class CrownSliderStyle {
  final Color? activeColor;
  final Color? inactiveColor;
  final double? thumbRadius;
  final double? trackHeight;
  final TextStyle? labelStyle;
  final SliderComponentShape? thumbShape;
  final SliderTrackShape? trackShape;
  final SliderTickMarkShape? tickMarkShape;
  final ShowValueIndicator? showValueIndicator;

  const CrownSliderStyle({
    this.activeColor,
    this.inactiveColor,
    this.thumbRadius,
    this.trackHeight,
    this.labelStyle,
    this.thumbShape,
    this.trackShape,
    this.tickMarkShape,
    this.showValueIndicator,
  });

  factory CrownSliderStyle.defaultStyle(CrownThemeData theme) {
    return CrownSliderStyle(
      activeColor: theme.colors.primary,
      inactiveColor: theme.colors.border,
      thumbRadius: 12,
      trackHeight: 4,
      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: theme.colors.textPrimary,
      ),
      showValueIndicator: ShowValueIndicator.onlyForContinuous,
    );
  }

  factory CrownSliderStyle.minimal(CrownThemeData theme) {
    return CrownSliderStyle(
      activeColor: theme.colors.primary,
      inactiveColor: theme.colors.border.withOpacity(0.3),
      thumbRadius: 10,
      trackHeight: 3,
      showValueIndicator: ShowValueIndicator.never,
    );
  }

  factory CrownSliderStyle.prominent(CrownThemeData theme) {
    return CrownSliderStyle(
      activeColor: theme.colors.primary,
      inactiveColor: theme.colors.border,
      thumbRadius: 14,
      trackHeight: 6,
      labelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: theme.colors.primary,
      ),
      showValueIndicator: ShowValueIndicator.always,
    );
  }

  CrownSliderStyle copyWith({
    Color? activeColor,
    Color? inactiveColor,
    double? thumbRadius,
    double? trackHeight,
    TextStyle? labelStyle,
    SliderComponentShape? thumbShape,
    SliderTrackShape? trackShape,
    SliderTickMarkShape? tickMarkShape,
    ShowValueIndicator? showValueIndicator,
  }) {
    return CrownSliderStyle(
      activeColor: activeColor ?? this.activeColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      thumbRadius: thumbRadius ?? this.thumbRadius,
      trackHeight: trackHeight ?? this.trackHeight,
      labelStyle: labelStyle ?? this.labelStyle,
      thumbShape: thumbShape ?? this.thumbShape,
      trackShape: trackShape ?? this.trackShape,
      tickMarkShape: tickMarkShape ?? this.tickMarkShape,
      showValueIndicator: showValueIndicator ?? this.showValueIndicator,
    );
  }
}
