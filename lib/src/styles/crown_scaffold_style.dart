import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../utils/platform_utils.dart';

/// Style configuration for CrownScaffold component
class CrownScaffoldStyle {
  final Color? backgroundColor;
  final Color? appBarBackgroundColor;
  final Color? bottomNavBackgroundColor;
  final TextStyle? appBarTitleStyle;
  final double appBarElevation;
  final double bottomNavElevation;
  final List<BoxShadow>? appBarShadow;
  final List<BoxShadow>? bottomNavShadow;
  final EdgeInsets bodyPadding;

  const CrownScaffoldStyle({
    this.backgroundColor,
    this.appBarBackgroundColor,
    this.bottomNavBackgroundColor,
    this.appBarTitleStyle,
    this.appBarElevation = 2,
    this.bottomNavElevation = 4,
    this.appBarShadow,
    this.bottomNavShadow,
    this.bodyPadding = const EdgeInsets.all(0),
  });

  factory CrownScaffoldStyle.light(CrownThemeData theme) {
    return CrownScaffoldStyle(
      backgroundColor: theme.colors.background,
      appBarBackgroundColor: theme.colors.surface,
      bottomNavBackgroundColor: theme.colors.surface,
      appBarTitleStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 18,
          android: 16,
          desktop: 16,
          web: 15,
        ),
        fontWeight: FontWeight.w600,
        color: theme.colors.textPrimary,
      ),
      appBarElevation: PlatformUtils.isWeb ? 1 : 2,
      bottomNavElevation: PlatformUtils.isWeb ? 1 : 4,
      appBarShadow: theme.borders.shadowSmall,
      bottomNavShadow: theme.borders.shadowSmall,
      bodyPadding: PlatformUtils.getPlatformPadding(
        mobile: 0,
        desktop: 0,
        web: 0,
      ),
    );
  }

  factory CrownScaffoldStyle.dark(CrownThemeData theme) {
    return CrownScaffoldStyle(
      backgroundColor: theme.colors.background,
      appBarBackgroundColor: theme.colors.surface,
      bottomNavBackgroundColor: theme.colors.surface,
      appBarTitleStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 18,
          android: 16,
          desktop: 16,
          web: 15,
        ),
        fontWeight: FontWeight.w600,
        color: theme.colors.textPrimary,
      ),
      appBarElevation: PlatformUtils.isWeb ? 1 : 2,
      bottomNavElevation: PlatformUtils.isWeb ? 1 : 4,
      appBarShadow: theme.borders.shadowSmall,
      bottomNavShadow: theme.borders.shadowSmall,
    );
  }

  CrownScaffoldStyle copyWith({
    Color? backgroundColor,
    Color? appBarBackgroundColor,
    Color? bottomNavBackgroundColor,
    TextStyle? appBarTitleStyle,
    double? appBarElevation,
    double? bottomNavElevation,
    List<BoxShadow>? appBarShadow,
    List<BoxShadow>? bottomNavShadow,
    EdgeInsets? bodyPadding,
  }) {
    return CrownScaffoldStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      appBarBackgroundColor:
          appBarBackgroundColor ?? this.appBarBackgroundColor,
      bottomNavBackgroundColor:
          bottomNavBackgroundColor ?? this.bottomNavBackgroundColor,
      appBarTitleStyle: appBarTitleStyle ?? this.appBarTitleStyle,
      appBarElevation: appBarElevation ?? this.appBarElevation,
      bottomNavElevation: bottomNavElevation ?? this.bottomNavElevation,
      appBarShadow: appBarShadow ?? this.appBarShadow,
      bottomNavShadow: bottomNavShadow ?? this.bottomNavShadow,
      bodyPadding: bodyPadding ?? this.bodyPadding,
    );
  }
}
