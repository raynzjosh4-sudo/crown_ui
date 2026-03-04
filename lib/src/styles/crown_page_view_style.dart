import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../utils/platform_utils.dart';

/// Style configuration for CrownPageView component
///
/// Page view/carousel styling with platform-specific adjustments:
/// - iOS: Cupertino-style page transitions
/// - Android: Material Design page transitions
/// - Desktop/Web: Smooth fade/slide transitions
class CrownPageViewStyle {
  final ScrollPhysics? physics;
  final Color? indicatorColor;
  final Color? activeIndicatorColor;
  final double indicatorSize;
  final double indicatorSpacing;
  final double pageSnapFraction;
  final Duration pageDuration;
  final Curve pageCurve;
  final EdgeInsets padding;
  final bool showIndicators;

  const CrownPageViewStyle({
    this.physics,
    this.indicatorColor,
    this.activeIndicatorColor,
    this.indicatorSize = 8,
    this.indicatorSpacing = 8,
    this.pageSnapFraction = 0.5,
    this.pageDuration = const Duration(milliseconds: 300),
    this.pageCurve = Curves.easeInOutCubic,
    this.padding = const EdgeInsets.all(0),
    this.showIndicators = true,
  });

  factory CrownPageViewStyle.default_(CrownThemeData theme) {
    return CrownPageViewStyle(
      physics: PlatformUtils.isWeb
          ? const ClampingScrollPhysics()
          : const PageScrollPhysics(),
      indicatorColor: theme.colors.border,
      activeIndicatorColor: theme.colors.primary,
      indicatorSize: PlatformUtils.isMobile ? 8 : 6,
      indicatorSpacing: PlatformUtils.isMobile ? 8 : 6,
      pageSnapFraction: PlatformUtils.isWeb ? 0.4 : 0.5,
      pageDuration: Duration(
        milliseconds: PlatformUtils.isIOS ? 400 : 300,
      ),
      pageCurve: PlatformUtils.isIOS ? Curves.easeOut : Curves.easeInOutCubic,
      padding: PlatformUtils.getPlatformPadding(
        mobile: 0,
        desktop: 0,
        web: 0,
      ),
      showIndicators: true,
    );
  }

  factory CrownPageViewStyle.minimal(CrownThemeData theme) {
    return CrownPageViewStyle(
      physics: PlatformUtils.isWeb
          ? const ClampingScrollPhysics()
          : const PageScrollPhysics(),
      indicatorColor: Colors.transparent,
      activeIndicatorColor: theme.colors.primary,
      indicatorSize: 0,
      indicatorSpacing: 0,
      pageSnapFraction: 0.5,
      pageDuration: const Duration(milliseconds: 300),
      pageCurve: Curves.easeInOutCubic,
      showIndicators: false,
    );
  }

  CrownPageViewStyle copyWith({
    ScrollPhysics? physics,
    Color? indicatorColor,
    Color? activeIndicatorColor,
    double? indicatorSize,
    double? indicatorSpacing,
    double? pageSnapFraction,
    Duration? pageDuration,
    Curve? pageCurve,
    EdgeInsets? padding,
    bool? showIndicators,
  }) {
    return CrownPageViewStyle(
      physics: physics ?? this.physics,
      indicatorColor: indicatorColor ?? this.indicatorColor,
      activeIndicatorColor: activeIndicatorColor ?? this.activeIndicatorColor,
      indicatorSize: indicatorSize ?? this.indicatorSize,
      indicatorSpacing: indicatorSpacing ?? this.indicatorSpacing,
      pageSnapFraction: pageSnapFraction ?? this.pageSnapFraction,
      pageDuration: pageDuration ?? this.pageDuration,
      pageCurve: pageCurve ?? this.pageCurve,
      padding: padding ?? this.padding,
      showIndicators: showIndicators ?? this.showIndicators,
    );
  }
}
