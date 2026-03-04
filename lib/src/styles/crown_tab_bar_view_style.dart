import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../utils/platform_utils.dart';

/// Style configuration for CrownTabBarView component
///
/// Tab bar view styling with platform-specific animations:
/// - iOS: Smooth, fluid transitions
/// - Android: Material Design standard animations
/// - Desktop/Web: Quick, responsive animations
class CrownTabBarViewStyle {
  final ScrollPhysics? physics;
  final Color? indicatorColor;
  final double indicatorWeight;
  final double indicatorHeight;
  final Color? backgroundColor;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  final TextStyle? labelStyle;
  final TextStyle? unselectedLabelStyle;
  final EdgeInsets labelPadding;
  final bool isScrollable;
  final Duration tabDuration;
  final Curve tabCurve;

  const CrownTabBarViewStyle({
    this.physics,
    this.indicatorColor,
    this.indicatorWeight = 3,
    this.indicatorHeight = 4,
    this.backgroundColor,
    this.labelColor,
    this.unselectedLabelColor,
    this.labelStyle,
    this.unselectedLabelStyle,
    this.labelPadding = const EdgeInsets.symmetric(horizontal: 12),
    this.isScrollable = false,
    this.tabDuration = const Duration(milliseconds: 200),
    this.tabCurve = Curves.easeInOutCubic,
  });

  factory CrownTabBarViewStyle.default_(CrownThemeData theme) {
    return CrownTabBarViewStyle(
      physics: const BouncingScrollPhysics(),
      indicatorColor: theme.colors.primary,
      indicatorWeight: PlatformUtils.isMobile ? 3 : 2,
      indicatorHeight: PlatformUtils.isMobile ? 4 : 3,
      backgroundColor: theme.colors.surface,
      labelColor: theme.colors.primary,
      unselectedLabelColor: theme.colors.textSecondary,
      labelStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 13,
          web: 12,
        ),
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: PlatformUtils.getPlatformFontSize(
          ios: 16,
          android: 14,
          desktop: 13,
          web: 12,
        ),
        fontWeight: FontWeight.w500,
      ),
      labelPadding: PlatformUtils.getPlatformPadding(
        mobile: 12,
        desktop: 10,
        web: 8,
      ),
      isScrollable: false,
      tabDuration: Duration(
        milliseconds: PlatformUtils.isIOS ? 300 : 200,
      ),
      tabCurve: PlatformUtils.isIOS ? Curves.easeOut : Curves.easeInOutCubic,
    );
  }

  factory CrownTabBarViewStyle.scrollable(CrownThemeData theme) {
    return CrownTabBarViewStyle(
      physics: const BouncingScrollPhysics(),
      indicatorColor: theme.colors.primary,
      indicatorWeight: 3,
      indicatorHeight: 4,
      backgroundColor: theme.colors.surface,
      labelColor: theme.colors.primary,
      unselectedLabelColor: theme.colors.textSecondary,
      labelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelPadding: const EdgeInsets.symmetric(horizontal: 12),
      isScrollable: true,
      tabDuration: const Duration(milliseconds: 200),
      tabCurve: Curves.easeInOutCubic,
    );
  }

  CrownTabBarViewStyle copyWith({
    ScrollPhysics? physics,
    Color? indicatorColor,
    double? indicatorWeight,
    double? indicatorHeight,
    Color? backgroundColor,
    Color? labelColor,
    Color? unselectedLabelColor,
    TextStyle? labelStyle,
    TextStyle? unselectedLabelStyle,
    EdgeInsets? labelPadding,
    bool? isScrollable,
    Duration? tabDuration,
    Curve? tabCurve,
  }) {
    return CrownTabBarViewStyle(
      physics: physics ?? this.physics,
      indicatorColor: indicatorColor ?? this.indicatorColor,
      indicatorWeight: indicatorWeight ?? this.indicatorWeight,
      indicatorHeight: indicatorHeight ?? this.indicatorHeight,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      labelColor: labelColor ?? this.labelColor,
      unselectedLabelColor: unselectedLabelColor ?? this.unselectedLabelColor,
      labelStyle: labelStyle ?? this.labelStyle,
      unselectedLabelStyle: unselectedLabelStyle ?? this.unselectedLabelStyle,
      labelPadding: labelPadding ?? this.labelPadding,
      isScrollable: isScrollable ?? this.isScrollable,
      tabDuration: tabDuration ?? this.tabDuration,
      tabCurve: tabCurve ?? this.tabCurve,
    );
  }
}
