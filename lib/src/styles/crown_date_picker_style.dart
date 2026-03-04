import 'package:flutter/material.dart';

class CrownDatePickerStyle {
  final Color? primaryColor;
  final Color? backgroundColor;
  final Color? headerColor;
  final Color? selectedDayColor;
  final Color? selectedDayTextColor;
  final Color? todayColor;
  final Color? weekdayTextColor;
  final Color? disabledDateColor;
  final TextStyle? headerTextStyle;
  final TextStyle? dayTextStyle;
  final TextStyle? weekdayTextStyle;
  final TextStyle? weekdayHeaderTextStyle;
  final TextStyle? dayNumberTextStyle;
  final TextStyle? selectedDayNumberTextStyle;
  final TextStyle? todayButtonTextStyle;
  final double? borderRadius;
  final double? elevation;
  final EdgeInsets? padding;
  final bool showTodayButton;
  final double dayBoxWidth;
  final double dayBoxHeight;

  const CrownDatePickerStyle({
    this.primaryColor,
    this.backgroundColor,
    this.headerColor,
    this.selectedDayColor,
    this.selectedDayTextColor,
    this.todayColor,
    this.weekdayTextColor,
    this.disabledDateColor,
    this.headerTextStyle,
    this.dayTextStyle,
    this.weekdayTextStyle,
    this.weekdayHeaderTextStyle,
    this.dayNumberTextStyle,
    this.selectedDayNumberTextStyle,
    this.todayButtonTextStyle,
    this.borderRadius,
    this.elevation,
    this.padding,
    this.showTodayButton = true,
    this.dayBoxWidth = 40,
    this.dayBoxHeight = 40,
  });

  /// Default style based on current platform
  factory CrownDatePickerStyle.defaultStyle() {
    return CrownDatePickerStyle.material();
  }

  /// iOS/macOS style - Clean and minimal
  factory CrownDatePickerStyle.ios() {
    return const CrownDatePickerStyle(
      primaryColor: Color(0xFF007AFF), // iOS blue
      backgroundColor: Color(0xFFF2F2F7),
      headerColor: Color(0xFFFFFFFF),
      selectedDayColor: Color(0xFF007AFF),
      selectedDayTextColor: Color(0xFFFFFFFF),
      todayColor: Color(0xFF3C3C3C),
      weekdayTextColor: Color(0xFF3C3C3C),
      disabledDateColor: Color(0xFFC7C7CC),
      borderRadius: 12,
      elevation: 2,
      padding: EdgeInsets.all(12),
      showTodayButton: false,
      dayBoxWidth: 40,
      dayBoxHeight: 40,
      weekdayHeaderTextStyle: TextStyle(
        color: Color(0xFF3C3C3C),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      dayNumberTextStyle: TextStyle(
        color: Color(0xFF3C3C3C),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      selectedDayNumberTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      todayButtonTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Android Material Design style
  factory CrownDatePickerStyle.android() {
    return const CrownDatePickerStyle(
      primaryColor: Color(0xFF1f97f5), // Material blue
      backgroundColor: Color(0xFFFFFFFF),
      headerColor: Color(0xFF1f97f5),
      selectedDayColor: Color(0xFF1f97f5),
      selectedDayTextColor: Color(0xFFFFFFFF),
      todayColor: Color(0xFF1f97f5),
      weekdayTextColor: Color(0xFF212121),
      disabledDateColor: Color(0xFFBDBDBD),
      borderRadius: 4,
      elevation: 0,
      padding: EdgeInsets.all(16),
      showTodayButton: true,
      dayBoxWidth: 40,
      dayBoxHeight: 40,
      weekdayHeaderTextStyle: TextStyle(
        color: Color(0xFF212121),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      dayNumberTextStyle: TextStyle(
        color: Color(0xFF212121),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      selectedDayNumberTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      todayButtonTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Windows Fluent Design style
  factory CrownDatePickerStyle.windows() {
    return const CrownDatePickerStyle(
      primaryColor: Color(0xFF0078D4), // Windows blue
      backgroundColor: Color(0xFFF3F3F3),
      headerColor: Color(0xFF0078D4),
      selectedDayColor: Color(0xFF0078D4),
      selectedDayTextColor: Color(0xFFFFFFFF),
      todayColor: Color(0xFFF7630C),
      weekdayTextColor: Color(0xFF000000),
      disabledDateColor: Color(0xFFD0D0D0),
      borderRadius: 4,
      elevation: 1,
      padding: EdgeInsets.all(14),
      showTodayButton: true,
      dayBoxWidth: 40,
      dayBoxHeight: 40,
      weekdayHeaderTextStyle: TextStyle(
        color: Color(0xFF000000),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      dayNumberTextStyle: TextStyle(
        color: Color(0xFF000000),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      selectedDayNumberTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      todayButtonTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Linux GNOME style
  factory CrownDatePickerStyle.linux() {
    return const CrownDatePickerStyle(
      primaryColor: Color(0xFF336699), // GNOME blue
      backgroundColor: Color(0xFFF6F5F4),
      headerColor: Color(0xFF336699),
      selectedDayColor: Color(0xFF336699),
      selectedDayTextColor: Color(0xFFFFFFFF),
      todayColor: Color(0xFF336699),
      weekdayTextColor: Color(0xFF2E2E2E),
      disabledDateColor: Color(0xFFD3D3D3),
      borderRadius: 6,
      elevation: 0,
      padding: EdgeInsets.all(12),
      showTodayButton: true,
      dayBoxWidth: 40,
      dayBoxHeight: 40,
      weekdayHeaderTextStyle: TextStyle(
        color: Color(0xFF2E2E2E),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      dayNumberTextStyle: TextStyle(
        color: Color(0xFF2E2E2E),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      selectedDayNumberTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      todayButtonTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Material Design default
  factory CrownDatePickerStyle.material() {
    return const CrownDatePickerStyle(
      primaryColor: Color(0xFF1976D2),
      backgroundColor: Color(0xFFFFFFFF),
      headerColor: Color(0xFF1976D2),
      selectedDayColor: Color(0xFF1976D2),
      selectedDayTextColor: Color(0xFFFFFFFF),
      todayColor: Color(0xFF1976D2),
      weekdayTextColor: Color(0xFF212121),
      disabledDateColor: Color(0xFFBDBDBD),
      borderRadius: 4,
      elevation: 0,
      padding: EdgeInsets.all(16),
      showTodayButton: true,
      dayBoxWidth: 40,
      dayBoxHeight: 40,
      weekdayHeaderTextStyle: TextStyle(
        color: Color(0xFF212121),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      dayNumberTextStyle: TextStyle(
        color: Color(0xFF212121),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      selectedDayNumberTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      todayButtonTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Dark mode style
  factory CrownDatePickerStyle.dark() {
    return const CrownDatePickerStyle(
      primaryColor: Color(0xFF4DA6FF),
      backgroundColor: Color(0xFF1E1E1E),
      headerColor: Color(0xFF2D2D2D),
      selectedDayColor: Color(0xFF4DA6FF),
      selectedDayTextColor: Color(0xFF000000),
      todayColor: Color(0xFF4DA6FF),
      weekdayTextColor: Color(0xFFE0E0E0),
      disabledDateColor: Color(0xFF555555),
      borderRadius: 8,
      elevation: 0,
      padding: EdgeInsets.all(12),
      showTodayButton: true,
      dayBoxWidth: 40,
      dayBoxHeight: 40,
      weekdayHeaderTextStyle: TextStyle(
        color: Color(0xFFE0E0E0),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      dayNumberTextStyle: TextStyle(
        color: Color(0xFFE0E0E0),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      selectedDayNumberTextStyle: TextStyle(
        color: Color(0xFF000000),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      todayButtonTextStyle: TextStyle(
        color: Color(0xFF000000),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Light mode style
  factory CrownDatePickerStyle.light() {
    return const CrownDatePickerStyle(
      primaryColor: Color(0xFF0078D4),
      backgroundColor: Color(0xFFFFFFFF),
      headerColor: Color(0xFFF5F5F5),
      selectedDayColor: Color(0xFF0078D4),
      selectedDayTextColor: Color(0xFFFFFFFF),
      todayColor: Color(0xFF0078D4),
      weekdayTextColor: Color(0xFF000000),
      disabledDateColor: Color(0xFFE5E5E5),
      borderRadius: 8,
      elevation: 1,
      padding: EdgeInsets.all(16),
      showTodayButton: true,
      dayBoxWidth: 40,
      dayBoxHeight: 40,
      weekdayHeaderTextStyle: TextStyle(
        color: Color(0xFF000000),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      dayNumberTextStyle: TextStyle(
        color: Color(0xFF000000),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      selectedDayNumberTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      todayButtonTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Compact style
  factory CrownDatePickerStyle.compact() {
    return const CrownDatePickerStyle(
      primaryColor: Color(0xFF1976D2),
      backgroundColor: Color(0xFFFFFFFF),
      headerColor: Color(0xFF1976D2),
      selectedDayColor: Color(0xFF1976D2),
      selectedDayTextColor: Color(0xFFFFFFFF),
      todayColor: Color(0xFF1976D2),
      weekdayTextColor: Color(0xFF424242),
      disabledDateColor: Color(0xFFBDBDBD),
      borderRadius: 4,
      elevation: 0,
      padding: EdgeInsets.all(8),
      showTodayButton: false,
      dayBoxWidth: 40,
      dayBoxHeight: 40,
      weekdayHeaderTextStyle: TextStyle(
        color: Color(0xFF424242),
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      dayNumberTextStyle: TextStyle(
        color: Color(0xFF424242),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      selectedDayNumberTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      todayButtonTextStyle: TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Returns the resolved header TextStyle with fallback defaults.
  TextStyle get resolvedHeaderTextStyle {
    return headerTextStyle ??
        TextStyle(
          color: primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        );
  }

  /// Returns the resolved weekday header TextStyle with fallback defaults.
  TextStyle get resolvedWeekdayHeaderTextStyle {
    return weekdayHeaderTextStyle ??
        TextStyle(
          color: weekdayTextColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        );
  }

  /// Returns the resolved day number TextStyle with fallback defaults.
  TextStyle get resolvedDayNumberTextStyle {
    return dayNumberTextStyle ??
        TextStyle(
          color: weekdayTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        );
  }

  /// Returns the resolved selected day number TextStyle with fallback defaults.
  TextStyle get resolvedSelectedDayNumberTextStyle {
    return selectedDayNumberTextStyle ??
        TextStyle(
          color: selectedDayTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        );
  }

  /// Returns the resolved today button TextStyle with fallback defaults.
  TextStyle get resolvedTodayButtonTextStyle {
    return todayButtonTextStyle ??
        TextStyle(
          color: selectedDayTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        );
  }

  CrownDatePickerStyle copyWith({
    Color? primaryColor,
    Color? backgroundColor,
    Color? headerColor,
    Color? selectedDayColor,
    Color? selectedDayTextColor,
    Color? todayColor,
    Color? weekdayTextColor,
    Color? disabledDateColor,
    TextStyle? headerTextStyle,
    TextStyle? dayTextStyle,
    TextStyle? weekdayTextStyle,
    TextStyle? weekdayHeaderTextStyle,
    TextStyle? dayNumberTextStyle,
    TextStyle? selectedDayNumberTextStyle,
    TextStyle? todayButtonTextStyle,
    double? borderRadius,
    double? elevation,
    EdgeInsets? padding,
    bool? showTodayButton,
    double? dayBoxWidth,
    double? dayBoxHeight,
  }) {
    return CrownDatePickerStyle(
      primaryColor: primaryColor ?? this.primaryColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      headerColor: headerColor ?? this.headerColor,
      selectedDayColor: selectedDayColor ?? this.selectedDayColor,
      selectedDayTextColor: selectedDayTextColor ?? this.selectedDayTextColor,
      todayColor: todayColor ?? this.todayColor,
      weekdayTextColor: weekdayTextColor ?? this.weekdayTextColor,
      disabledDateColor: disabledDateColor ?? this.disabledDateColor,
      headerTextStyle: headerTextStyle ?? this.headerTextStyle,
      dayTextStyle: dayTextStyle ?? this.dayTextStyle,
      weekdayTextStyle: weekdayTextStyle ?? this.weekdayTextStyle,
      weekdayHeaderTextStyle:
          weekdayHeaderTextStyle ?? this.weekdayHeaderTextStyle,
      dayNumberTextStyle: dayNumberTextStyle ?? this.dayNumberTextStyle,
      selectedDayNumberTextStyle:
          selectedDayNumberTextStyle ?? this.selectedDayNumberTextStyle,
      todayButtonTextStyle: todayButtonTextStyle ?? this.todayButtonTextStyle,
      borderRadius: borderRadius ?? this.borderRadius,
      elevation: elevation ?? this.elevation,
      padding: padding ?? this.padding,
      showTodayButton: showTodayButton ?? this.showTodayButton,
      dayBoxWidth: dayBoxWidth ?? this.dayBoxWidth,
      dayBoxHeight: dayBoxHeight ?? this.dayBoxHeight,
    );
  }
}
