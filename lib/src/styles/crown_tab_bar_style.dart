import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';

/// Style configuration for CrownTabBar
class CrownTabBarStyle {
  /// Indicator color
  final Color indicatorColor;

  /// Indicator weight
  final double indicatorWeight;

  /// Background color
  final Color? backgroundColor;

  /// Selected tab label color
  final Color? labelColor;

  /// Unselected tab label color
  final Color? unselectedLabelColor;

  /// Selected tab label style
  final TextStyle? labelStyle;

  /// Unselected tab label style
  final TextStyle? unselectedLabelStyle;

  /// Whether tabs are scrollable
  final bool isScrollable;

  /// Show bottom indicator line
  final bool showIndicator;

  /// Active tab background color (for filled styles)
  final Color? activeTabBackgroundColor;

  /// Unactive tab background color (for filled styles)
  final Color? inactiveTabBackgroundColor;

  const CrownTabBarStyle({
    required this.indicatorColor,
    required this.indicatorWeight,
    this.backgroundColor,
    this.labelColor,
    this.unselectedLabelColor,
    this.labelStyle,
    this.unselectedLabelStyle,
    this.isScrollable = false,
    this.showIndicator = true,
    this.activeTabBackgroundColor,
    this.inactiveTabBackgroundColor,
  });

  /// Chrome-like style - no underline, just text color change
  factory CrownTabBarStyle.chrome(CrownThemeData theme) {
    return CrownTabBarStyle(
      indicatorColor: Colors.transparent,
      indicatorWeight: 1.0, // Minimal weight for filled indicator
      backgroundColor: theme.colors.surface,
      labelColor: theme.colors.primary, // Yellow/accent for active
      unselectedLabelColor: theme.colors.textSecondary,
      labelStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
      isScrollable: true,
      showIndicator: false,
      activeTabBackgroundColor: Colors.transparent, // No background fill
    );
  }

  /// VS Code editor style - filled background for active tab
  factory CrownTabBarStyle.vsCode(CrownThemeData theme) {
    return CrownTabBarStyle(
      indicatorColor: Colors.transparent,
      indicatorWeight: 1.0, // Minimal weight for filled indicator
      backgroundColor: theme.colors.surface,
      labelColor: theme.colors.textPrimary,
      unselectedLabelColor: theme.colors.textSecondary,
      labelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      isScrollable: true,
      showIndicator: false,
      activeTabBackgroundColor: theme.colors.surface,
      inactiveTabBackgroundColor: Colors.transparent,
    );
  }

  /// Windows app style - underline indicator
  factory CrownTabBarStyle.windows(CrownThemeData theme) {
    return CrownTabBarStyle(
      indicatorColor: theme.colors.primary,
      indicatorWeight: 2.0,
      backgroundColor: theme.colors.surface,
      labelColor: theme.colors.textPrimary,
      unselectedLabelColor: theme.colors.textSecondary,
      labelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      isScrollable: true,
      showIndicator: true,
    );
  }

  /// Minimal clean style
  factory CrownTabBarStyle.minimal(CrownThemeData theme) {
    return CrownTabBarStyle(
      indicatorColor: theme.colors.primary,
      indicatorWeight: 2.0,
      backgroundColor: Colors.transparent,
      labelColor: theme.colors.textPrimary,
      unselectedLabelColor: theme.colors.textSecondary,
      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      isScrollable: false,
      showIndicator: true,
    );
  }

  /// Material Design style
  factory CrownTabBarStyle.material(CrownThemeData theme) {
    return CrownTabBarStyle(
      indicatorColor: theme.colors.primary,
      indicatorWeight: 3.0,
      backgroundColor: Colors.transparent,
      labelColor: theme.colors.primary,
      unselectedLabelColor: theme.colors.textSecondary,
      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      isScrollable: false,
      showIndicator: true,
    );
  }

  /// Dark mode style
  factory CrownTabBarStyle.dark(CrownThemeData theme) {
    return CrownTabBarStyle(
      indicatorColor: theme.colors.accent,
      indicatorWeight: 2.0,
      backgroundColor: theme.colors.surface,
      labelColor: Colors.white,
      unselectedLabelColor: theme.colors.textSecondary,
      labelStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
      isScrollable: true,
      showIndicator: true,
    );
  }

  /// Default style (alias for chrome)
  factory CrownTabBarStyle.defaultStyle(CrownThemeData theme) {
    return CrownTabBarStyle.chrome(theme);
  }
}
