import 'package:flutter/foundation.dart';
import 'dart:io' show Platform;
// Import EdgeInsets and BorderRadius
import 'package:flutter/material.dart';

/// Platform detection utilities for Crown UI
///
/// Provides easy access to platform-specific information
/// for implementing platform-specific styling and behaviors
class PlatformUtils {
  /// Checks if running on iOS
  static bool get isIOS {
    return !kIsWeb && Platform.isIOS;
  }

  /// Checks if running on Android
  static bool get isAndroid {
    return !kIsWeb && Platform.isAndroid;
  }

  /// Checks if running on Windows
  static bool get isWindows {
    return !kIsWeb && Platform.isWindows;
  }

  /// Checks if running on macOS
  static bool get isMacOS {
    return !kIsWeb && Platform.isMacOS;
  }

  /// Checks if running on Linux
  static bool get isLinux {
    return !kIsWeb && Platform.isLinux;
  }

  /// Checks if running on Web/Chrome
  static bool get isWeb {
    return kIsWeb;
  }

  /// Checks if running on a mobile platform (iOS or Android)
  static bool get isMobile {
    return isIOS || isAndroid;
  }

  /// Checks if running on a desktop platform (Windows, macOS, or Linux)
  static bool get isDesktop {
    return isWindows || isMacOS || isLinux;
  }

  /// Get platform-specific padding
  ///
  /// Returns larger padding for iOS/macOS (more spacious design guidelines)
  /// Returns standard padding for Android
  /// Returns compact padding for web
  static EdgeInsets getPlatformPadding({
    double mobile = 16,
    double desktop = 20,
    double web = 12,
  }) {
    if (isWeb) return EdgeInsets.all(web);
    if (isMobile) return EdgeInsets.all(mobile);
    return EdgeInsets.all(desktop);
  }

  /// Get platform-specific border radius
  ///
  /// iOS: rounded corners (24)
  /// Android: Material Design corners (12)
  /// Desktop: squared corners (8)
  /// Web: minimal corners (6)
  static BorderRadius getPlatformBorderRadius({
    double ios = 24,
    double android = 12,
    double desktop = 8,
    double web = 6,
  }) {
    if (isIOS) return BorderRadius.all(Radius.circular(ios));
    if (isAndroid) return BorderRadius.all(Radius.circular(android));
    if (isWeb) return BorderRadius.all(Radius.circular(web));
    return BorderRadius.all(Radius.circular(desktop));
  }

  /// Get platform-specific font size
  ///
  /// Returns sizes optimized for each platform
  static double getPlatformFontSize({
    double ios = 16,
    double android = 14,
    double desktop = 14,
    double web = 13,
  }) {
    if (isIOS) return ios;
    if (isAndroid) return android;
    if (isWeb) return web;
    return desktop;
  }
}
