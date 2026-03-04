import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../utils/platform_utils.dart';

/// Style configuration for CrownHelpText component
///
/// Help text/hint text styling with platform-specific adjustments:
/// - iOS: Larger and more generous spacing
/// - Android: Material Design compliant sizing
/// - Desktop: Compact sizing
/// - Web: Extra compact sizing
class CrownHelpTextStyle {
  final Color? textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextStyle? textStyle;
  final double? letterSpacing;
  final double? lineHeight;
  final TextAlign textAlign;
  final int? maxLines;
  final EdgeInsets padding;

  const CrownHelpTextStyle({
    this.textColor,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w400,
    this.textStyle,
    this.letterSpacing,
    this.lineHeight,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.padding = const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
  });

  factory CrownHelpTextStyle.info(CrownThemeData theme) {
    return CrownHelpTextStyle(
      textColor: theme.colors.textSecondary,
      fontSize: PlatformUtils.getPlatformFontSize(
        ios: 14,
        android: 12,
        desktop: 11,
        web: 11,
      ),
      fontWeight: FontWeight.w400,
      letterSpacing: 0.3,
      lineHeight: 1.4,
      textAlign: TextAlign.start,
      padding: PlatformUtils.getPlatformPadding(
        mobile: 8,
        desktop: 6,
        web: 4,
      ),
    );
  }

  factory CrownHelpTextStyle.error(CrownThemeData theme) {
    return CrownHelpTextStyle(
      textColor: theme.colors.error,
      fontSize: PlatformUtils.getPlatformFontSize(
        ios: 14,
        android: 12,
        desktop: 11,
        web: 11,
      ),
      fontWeight: FontWeight.w500,
      letterSpacing: 0.3,
      lineHeight: 1.4,
      textAlign: TextAlign.start,
      padding: PlatformUtils.getPlatformPadding(
        mobile: 8,
        desktop: 6,
        web: 4,
      ),
    );
  }

  factory CrownHelpTextStyle.success(CrownThemeData theme) {
    return CrownHelpTextStyle(
      textColor: theme.colors.success,
      fontSize: PlatformUtils.getPlatformFontSize(
        ios: 14,
        android: 12,
        desktop: 11,
        web: 11,
      ),
      fontWeight: FontWeight.w400,
      letterSpacing: 0.3,
      lineHeight: 1.4,
      textAlign: TextAlign.start,
      padding: PlatformUtils.getPlatformPadding(
        mobile: 8,
        desktop: 6,
        web: 4,
      ),
    );
  }

  factory CrownHelpTextStyle.warning(CrownThemeData theme) {
    return CrownHelpTextStyle(
      textColor: Colors.orange,
      fontSize: PlatformUtils.getPlatformFontSize(
        ios: 14,
        android: 12,
        desktop: 11,
        web: 11,
      ),
      fontWeight: FontWeight.w400,
      letterSpacing: 0.3,
      lineHeight: 1.4,
      textAlign: TextAlign.start,
      padding: PlatformUtils.getPlatformPadding(
        mobile: 8,
        desktop: 6,
        web: 4,
      ),
    );
  }

  TextStyle toTextStyle() {
    return TextStyle(
      color: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: lineHeight,
    );
  }

  CrownHelpTextStyle copyWith({
    Color? textColor,
    double? fontSize,
    FontWeight? fontWeight,
    TextStyle? textStyle,
    double? letterSpacing,
    double? lineHeight,
    TextAlign? textAlign,
    int? maxLines,
    EdgeInsets? padding,
  }) {
    return CrownHelpTextStyle(
      textColor: textColor ?? this.textColor,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      textStyle: textStyle ?? this.textStyle,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      lineHeight: lineHeight ?? this.lineHeight,
      textAlign: textAlign ?? this.textAlign,
      maxLines: maxLines ?? this.maxLines,
      padding: padding ?? this.padding,
    );
  }
}
