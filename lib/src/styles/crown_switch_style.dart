import 'package:flutter/material.dart';

class CrownSwitchStyle {
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? activeTrackColor;
  final Color? inactiveTrackColor;
  final Color? thumbColor;
  final double? switchWidth;
  final double? switchHeight;

  const CrownSwitchStyle({
    this.activeColor,
    this.inactiveColor,
    this.activeTrackColor,
    this.inactiveTrackColor,
    this.thumbColor,
    this.switchWidth,
    this.switchHeight,
  });

  /// Default style - returns material style for web compatibility
  factory CrownSwitchStyle.defaultStyle() {
    return CrownSwitchStyle.material();
  }

  /// iOS/macOS style - Minimal and rounded
  factory CrownSwitchStyle.ios() {
    return const CrownSwitchStyle(
      activeColor: Color(0xFF34C759), // iOS green
      inactiveColor: Color(0xFFE5E5EA),
      thumbColor: Color(0xFFFFFFFF),
      switchWidth: 51,
      switchHeight: 31,
    );
  }

  /// Android Material Design style
  factory CrownSwitchStyle.android() {
    return const CrownSwitchStyle(
      activeColor: Color(0xFF1f97f5), // Material blue
      inactiveColor: Color(0xFFBDBDBD),
      activeTrackColor: Color(0xFF64B5F6),
      inactiveTrackColor: Color(0xFFE0E0E0),
      thumbColor: Color(0xFFFFFFFF),
      switchWidth: 48,
      switchHeight: 24,
    );
  }

  /// Windows fluent design style
  factory CrownSwitchStyle.windows() {
    return const CrownSwitchStyle(
      activeColor: Color(0xFF0078D4), // Windows blue
      inactiveColor: Color(0xFFE01F26),
      activeTrackColor: Color(0xFF0078D4),
      inactiveTrackColor: Color(0xFFE81123),
      thumbColor: Color(0xFFFFFFFF),
      switchWidth: 44,
      switchHeight: 20,
    );
  }

  /// Linux GNOME style
  factory CrownSwitchStyle.linux() {
    return const CrownSwitchStyle(
      activeColor: Color(0xFF336699), // GNOME blue
      inactiveColor: Color(0xFFCCCCCC),
      activeTrackColor: Color(0xFF77AADD),
      inactiveTrackColor: Color(0xFFDDDDDD),
      thumbColor: Color(0xFFFFFFFF),
      switchWidth: 46,
      switchHeight: 24,
    );
  }

  /// Material Design default
  factory CrownSwitchStyle.material() {
    return const CrownSwitchStyle(
      activeColor: Color(0xFF1976D2),
      inactiveColor: Color(0xFFBDBDBD),
      thumbColor: Color(0xFFFFFFFF),
      switchWidth: 48,
      switchHeight: 24,
    );
  }

  /// Cupertino style (iOS-inspired without platform check)
  factory CrownSwitchStyle.cupertino() {
    return CrownSwitchStyle.ios();
  }

  /// Dark mode style
  factory CrownSwitchStyle.dark() {
    return const CrownSwitchStyle(
      activeColor: Color(0xFF4DA6FF),
      inactiveColor: Color(0xFF555555),
      activeTrackColor: Color(0xFF1E3A5F),
      inactiveTrackColor: Color(0xFF333333),
      thumbColor: Color(0xFFF5F5F5),
      switchWidth: 48,
      switchHeight: 24,
    );
  }

  /// Light mode style
  factory CrownSwitchStyle.light() {
    return const CrownSwitchStyle(
      activeColor: Color(0xFF0078D4),
      inactiveColor: Color(0xFFCCCCCC),
      activeTrackColor: Color(0xFF0078D4),
      inactiveTrackColor: Color(0xFFE5E5E5),
      thumbColor: Color(0xFFFFFFFF),
      switchWidth: 48,
      switchHeight: 24,
    );
  }

  /// Compact size style
  factory CrownSwitchStyle.compact() {
    return const CrownSwitchStyle(
      activeColor: Color(0xFF1976D2),
      inactiveColor: Color(0xFFBDBDBD),
      thumbColor: Color(0xFFFFFFFF),
      switchWidth: 40,
      switchHeight: 20,
    );
  }

  /// Large size style
  factory CrownSwitchStyle.large() {
    return const CrownSwitchStyle(
      activeColor: Color(0xFF1976D2),
      inactiveColor: Color(0xFFBDBDBD),
      thumbColor: Color(0xFFFFFFFF),
      switchWidth: 56,
      switchHeight: 28,
    );
  }

  CrownSwitchStyle copyWith({
    Color? activeColor,
    Color? inactiveColor,
    Color? activeTrackColor,
    Color? inactiveTrackColor,
    Color? thumbColor,
    double? switchWidth,
    double? switchHeight,
  }) {
    return CrownSwitchStyle(
      activeColor: activeColor ?? this.activeColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      activeTrackColor: activeTrackColor ?? this.activeTrackColor,
      inactiveTrackColor: inactiveTrackColor ?? this.inactiveTrackColor,
      thumbColor: thumbColor ?? this.thumbColor,
      switchWidth: switchWidth ?? this.switchWidth,
      switchHeight: switchHeight ?? this.switchHeight,
    );
  }
}
