import 'package:flutter/material.dart';

class CrownTimePickerStyle {
  final Color? primaryColor;
  final Color? backgroundColor;
  final Color? headerColor;
  final Color? selectedTimeColor;
  final Color? selectedTimeTextColor;
  final Color? timeTextColor;
  final Color? disabledTimeColor;
  final TextStyle? headerTextStyle;
  final TextStyle? timeTextStyle;
  final TextStyle? separatorTextStyle;
  final double? borderRadius;
  final double? elevation;
  final EdgeInsets? padding;
  final bool use24HourFormat;
  final double timeBoxWidth;
  final double timeBoxHeight;

  const CrownTimePickerStyle({
    this.primaryColor,
    this.backgroundColor,
    this.headerColor,
    this.selectedTimeColor,
    this.selectedTimeTextColor,
    this.timeTextColor,
    this.disabledTimeColor,
    this.headerTextStyle,
    this.timeTextStyle,
    this.separatorTextStyle,
    this.borderRadius,
    this.elevation,
    this.padding,
    this.use24HourFormat = true,
    this.timeBoxWidth = 60,
    this.timeBoxHeight = 60,
  });

  /// Default style based on current platform
  factory CrownTimePickerStyle.defaultStyle() {
    return CrownTimePickerStyle.material();
  }

  /// iOS/macOS style - Clean and minimal
  factory CrownTimePickerStyle.ios() {
    return const CrownTimePickerStyle(
      primaryColor: Color(0xFF007AFF), // iOS blue
      backgroundColor: Color(0xFFF2F2F7),
      headerColor: Color(0xFFFFFFFF),
      selectedTimeColor: Color(0xFF007AFF),
      selectedTimeTextColor: Color(0xFFFFFFFF),
      timeTextColor: Color(0xFF3C3C3C),
      disabledTimeColor: Color(0xFFC7C7CC),
      borderRadius: 12,
      elevation: 2,
      padding: EdgeInsets.all(12),
      use24HourFormat: false,
      timeBoxWidth: 60,
      timeBoxHeight: 60,
      headerTextStyle: TextStyle(
        color: Color(0xFF007AFF),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      timeTextStyle: TextStyle(
        color: Color(0xFF3C3C3C),
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
      separatorTextStyle: TextStyle(
        color: Color(0xFF3C3C3C),
        fontSize: 28,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  /// Android Material Design style
  factory CrownTimePickerStyle.android() {
    return CrownTimePickerStyle(
      primaryColor: const Color(0xFF1f97f5), // Material blue
      backgroundColor: const Color(0xFFFFFFFF),
      headerColor: const Color(0xFF1f97f5),
      selectedTimeColor: const Color(0xFF1f97f5),
      selectedTimeTextColor: const Color(0xFFFFFFFF),
      timeTextColor: const Color(0xFF212121),
      disabledTimeColor: const Color(0xFFBDBDBD),
      borderRadius: 4,
      elevation: 0,
      padding: const EdgeInsets.all(16),
      use24HourFormat: true,
      timeBoxWidth: 60,
      timeBoxHeight: 60,
      headerTextStyle: const TextStyle(
        color: Color(0xFF1f97f5),
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      timeTextStyle: const TextStyle(
        color: Color(0xFF212121),
        fontSize: 36,
        fontWeight: FontWeight.w700,
      ),
      separatorTextStyle: const TextStyle(
        color: Color(0xFF212121),
        fontSize: 32,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  /// Windows Fluent Design style
  factory CrownTimePickerStyle.windows() {
    return CrownTimePickerStyle(
      primaryColor: const Color(0xFF0078D4), // Windows blue
      backgroundColor: const Color(0xFFF3F3F3),
      headerColor: const Color(0xFF0078D4),
      selectedTimeColor: const Color(0xFF0078D4),
      selectedTimeTextColor: const Color(0xFFFFFFFF),
      timeTextColor: const Color(0xFF000000),
      disabledTimeColor: const Color(0xFFD0D0D0),
      borderRadius: 4,
      elevation: 1,
      padding: const EdgeInsets.all(14),
      use24HourFormat: true,
      timeBoxWidth: 60,
      timeBoxHeight: 60,
      headerTextStyle: const TextStyle(
        color: Color(0xFF0078D4),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      timeTextStyle: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
      separatorTextStyle: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 28,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  /// Linux GNOME style
  factory CrownTimePickerStyle.linux() {
    return CrownTimePickerStyle(
      primaryColor: const Color(0xFF336699), // GNOME blue
      backgroundColor: const Color(0xFFF6F5F4),
      headerColor: const Color(0xFF336699),
      selectedTimeColor: const Color(0xFF336699),
      selectedTimeTextColor: const Color(0xFFFFFFFF),
      timeTextColor: const Color(0xFF2E2E2E),
      disabledTimeColor: const Color(0xFFD3D3D3),
      borderRadius: 6,
      elevation: 0,
      padding: const EdgeInsets.all(12),
      use24HourFormat: true,
      timeBoxWidth: 60,
      timeBoxHeight: 60,
      headerTextStyle: const TextStyle(
        color: Color(0xFF336699),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      timeTextStyle: const TextStyle(
        color: Color(0xFF2E2E2E),
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
      separatorTextStyle: const TextStyle(
        color: Color(0xFF2E2E2E),
        fontSize: 28,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  /// Material Design default
  factory CrownTimePickerStyle.material() {
    return CrownTimePickerStyle(
      primaryColor: const Color(0xFF1976D2),
      backgroundColor: const Color(0xFFFFFFFF),
      headerColor: const Color(0xFF1976D2),
      selectedTimeColor: const Color(0xFF1976D2),
      selectedTimeTextColor: const Color(0xFFFFFFFF),
      timeTextColor: const Color(0xFF212121),
      disabledTimeColor: const Color(0xFFBDBDBD),
      borderRadius: 4,
      elevation: 0,
      padding: const EdgeInsets.all(16),
      use24HourFormat: true,
      timeBoxWidth: 60,
      timeBoxHeight: 60,
      headerTextStyle: const TextStyle(
        color: Color(0xFF1976D2),
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      timeTextStyle: const TextStyle(
        color: Color(0xFF212121),
        fontSize: 36,
        fontWeight: FontWeight.w700,
      ),
      separatorTextStyle: const TextStyle(
        color: Color(0xFF212121),
        fontSize: 32,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  /// Dark mode style
  factory CrownTimePickerStyle.dark() {
    return CrownTimePickerStyle(
      primaryColor: const Color(0xFF4DA6FF),
      backgroundColor: const Color(0xFF1E1E1E),
      headerColor: const Color(0xFF2D2D2D),
      selectedTimeColor: const Color(0xFF4DA6FF),
      selectedTimeTextColor: const Color(0xFF000000),
      timeTextColor: const Color(0xFFE0E0E0),
      disabledTimeColor: const Color(0xFF555555),
      borderRadius: 8,
      elevation: 0,
      padding: const EdgeInsets.all(12),
      use24HourFormat: true,
      timeBoxWidth: 60,
      timeBoxHeight: 60,
      headerTextStyle: const TextStyle(
        color: Color(0xFF4DA6FF),
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      timeTextStyle: const TextStyle(
        color: Color(0xFFE0E0E0),
        fontSize: 36,
        fontWeight: FontWeight.w700,
      ),
      separatorTextStyle: const TextStyle(
        color: Color(0xFFE0E0E0),
        fontSize: 32,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  /// Light mode style
  factory CrownTimePickerStyle.light() {
    return CrownTimePickerStyle(
      primaryColor: const Color(0xFF0078D4),
      backgroundColor: const Color(0xFFFFFFFF),
      headerColor: const Color(0xFFF5F5F5),
      selectedTimeColor: const Color(0xFF0078D4),
      selectedTimeTextColor: const Color(0xFFFFFFFF),
      timeTextColor: const Color(0xFF000000),
      disabledTimeColor: const Color(0xFFE5E5E5),
      borderRadius: 8,
      elevation: 1,
      padding: const EdgeInsets.all(16),
      use24HourFormat: true,
      timeBoxWidth: 60,
      timeBoxHeight: 60,
      headerTextStyle: const TextStyle(
        color: Color(0xFF0078D4),
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      timeTextStyle: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 36,
        fontWeight: FontWeight.w700,
      ),
      separatorTextStyle: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 32,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  /// Compact style
  factory CrownTimePickerStyle.compact() {
    return CrownTimePickerStyle(
      primaryColor: const Color(0xFF1976D2),
      backgroundColor: const Color(0xFFFFFFFF),
      headerColor: const Color(0xFF1976D2),
      selectedTimeColor: const Color(0xFF1976D2),
      selectedTimeTextColor: const Color(0xFFFFFFFF),
      timeTextColor: const Color(0xFF424242),
      disabledTimeColor: const Color(0xFFBDBDBD),
      borderRadius: 4,
      elevation: 0,
      padding: const EdgeInsets.all(8),
      use24HourFormat: true,
      timeBoxWidth: 50,
      timeBoxHeight: 50,
      headerTextStyle: const TextStyle(
        color: Color(0xFF1976D2),
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      timeTextStyle: const TextStyle(
        color: Color(0xFF424242),
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      separatorTextStyle: const TextStyle(
        color: Color(0xFF424242),
        fontSize: 24,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  /// Returns the resolved header TextStyle with fallback defaults.
  TextStyle get resolvedHeaderTextStyle {
    return headerTextStyle ??
        TextStyle(
          color: primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        );
  }

  /// Returns the resolved time TextStyle with fallback defaults.
  TextStyle get resolvedTimeTextStyle {
    return timeTextStyle ??
        TextStyle(
          color: timeTextColor,
          fontSize: 36,
          fontWeight: FontWeight.w700,
        );
  }

  /// Returns the resolved separator TextStyle with fallback defaults.
  TextStyle get resolvedSeparatorTextStyle {
    return separatorTextStyle ??
        TextStyle(
          color: timeTextColor,
          fontSize: 32,
          fontWeight: FontWeight.w300,
        );
  }

  CrownTimePickerStyle copyWith({
    Color? primaryColor,
    Color? backgroundColor,
    Color? headerColor,
    Color? selectedTimeColor,
    Color? selectedTimeTextColor,
    Color? timeTextColor,
    Color? disabledTimeColor,
    TextStyle? headerTextStyle,
    TextStyle? timeTextStyle,
    TextStyle? separatorTextStyle,
    double? borderRadius,
    double? elevation,
    EdgeInsets? padding,
    bool? use24HourFormat,
    double? timeBoxWidth,
    double? timeBoxHeight,
  }) {
    return CrownTimePickerStyle(
      primaryColor: primaryColor ?? this.primaryColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      headerColor: headerColor ?? this.headerColor,
      selectedTimeColor: selectedTimeColor ?? this.selectedTimeColor,
      selectedTimeTextColor:
          selectedTimeTextColor ?? this.selectedTimeTextColor,
      timeTextColor: timeTextColor ?? this.timeTextColor,
      disabledTimeColor: disabledTimeColor ?? this.disabledTimeColor,
      headerTextStyle: headerTextStyle ?? this.headerTextStyle,
      timeTextStyle: timeTextStyle ?? this.timeTextStyle,
      separatorTextStyle: separatorTextStyle ?? this.separatorTextStyle,
      borderRadius: borderRadius ?? this.borderRadius,
      elevation: elevation ?? this.elevation,
      padding: padding ?? this.padding,
      use24HourFormat: use24HourFormat ?? this.use24HourFormat,
      timeBoxWidth: timeBoxWidth ?? this.timeBoxWidth,
      timeBoxHeight: timeBoxHeight ?? this.timeBoxHeight,
    );
  }
}
