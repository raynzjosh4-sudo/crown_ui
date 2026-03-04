import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../utils/platform_utils.dart';

/// Style configuration for CrownWebView component
///
/// Web view styling with platform-specific behaviors:
/// - iOS: Safari-like controls
/// - Android: Chrome-like controls
/// - Desktop: Browser-like controls
/// - Web: Native browser rendering
class CrownWebViewStyle {
  final Color? backgroundColor;
  final Color? progressIndicatorColor;
  final Color? controlsBackgroundColor;
  final Color? controlsTextColor;
  final BorderRadius borderRadius;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final bool showLoadingIndicator;
  final bool showUrlBar;
  final bool showNavigationControls;
  final List<BoxShadow>? boxShadow;
  final double progressBarHeight;

  const CrownWebViewStyle({
    this.backgroundColor,
    this.progressIndicatorColor,
    this.controlsBackgroundColor,
    this.controlsTextColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(0),
    this.showLoadingIndicator = true,
    this.showUrlBar = true,
    this.showNavigationControls = true,
    this.boxShadow,
    this.progressBarHeight = 4,
  });

  factory CrownWebViewStyle.default_(CrownThemeData theme) {
    return CrownWebViewStyle(
      backgroundColor: theme.colors.surface,
      progressIndicatorColor: theme.colors.primary,
      controlsBackgroundColor: theme.colors.surface,
      controlsTextColor: theme.colors.textPrimary,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 16,
        android: 12,
        desktop: 8,
        web: 6,
      ),
      margin: PlatformUtils.getPlatformPadding(
        mobile: 0,
        desktop: 0,
        web: 0,
      ),
      padding: const EdgeInsets.all(0),
      showLoadingIndicator: true,
      showUrlBar: !PlatformUtils.isMobile,
      showNavigationControls: !PlatformUtils.isWeb,
      boxShadow: PlatformUtils.isWeb ? null : theme.borders.shadowSmall,
      progressBarHeight: PlatformUtils.isWeb ? 2 : 4,
    );
  }

  factory CrownWebViewStyle.minimal(CrownThemeData theme) {
    return CrownWebViewStyle(
      backgroundColor: theme.colors.surface,
      progressIndicatorColor: theme.colors.primary,
      controlsBackgroundColor: Colors.transparent,
      controlsTextColor: theme.colors.textPrimary,
      borderRadius: BorderRadius.zero,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      showLoadingIndicator: true,
      showUrlBar: false,
      showNavigationControls: false,
      boxShadow: null,
      progressBarHeight: 2,
    );
  }

  factory CrownWebViewStyle.elevated(CrownThemeData theme) {
    return CrownWebViewStyle(
      backgroundColor: theme.colors.surface,
      progressIndicatorColor: theme.colors.primary,
      controlsBackgroundColor: theme.colors.surface,
      controlsTextColor: theme.colors.textPrimary,
      borderRadius: PlatformUtils.getPlatformBorderRadius(
        ios: 20,
        android: 16,
        desktop: 12,
        web: 8,
      ),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(0),
      showLoadingIndicator: true,
      showUrlBar: !PlatformUtils.isMobile,
      showNavigationControls: !PlatformUtils.isWeb,
      boxShadow: theme.borders.shadowMedium,
      progressBarHeight: 4,
    );
  }

  CrownWebViewStyle copyWith({
    Color? backgroundColor,
    Color? progressIndicatorColor,
    Color? controlsBackgroundColor,
    Color? controlsTextColor,
    BorderRadius? borderRadius,
    EdgeInsets? margin,
    EdgeInsets? padding,
    bool? showLoadingIndicator,
    bool? showUrlBar,
    bool? showNavigationControls,
    List<BoxShadow>? boxShadow,
    double? progressBarHeight,
  }) {
    return CrownWebViewStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      progressIndicatorColor:
          progressIndicatorColor ?? this.progressIndicatorColor,
      controlsBackgroundColor:
          controlsBackgroundColor ?? this.controlsBackgroundColor,
      controlsTextColor: controlsTextColor ?? this.controlsTextColor,
      borderRadius: borderRadius ?? this.borderRadius,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
      showLoadingIndicator: showLoadingIndicator ?? this.showLoadingIndicator,
      showUrlBar: showUrlBar ?? this.showUrlBar,
      showNavigationControls:
          showNavigationControls ?? this.showNavigationControls,
      boxShadow: boxShadow ?? this.boxShadow,
      progressBarHeight: progressBarHeight ?? this.progressBarHeight,
    );
  }
}
