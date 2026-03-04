import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

class CrownBottomNavigationBarItemStyle {
  final TextStyle? labelStyle;
  final TextStyle? selectedLabelStyle;
  final Color? backgroundColor;
  final double? iconSize;

  const CrownBottomNavigationBarItemStyle({
    this.labelStyle,
    this.selectedLabelStyle,
    this.backgroundColor,
    this.iconSize,
  });

  factory CrownBottomNavigationBarItemStyle.defaultStyle(CrownThemeData theme) {
    return CrownBottomNavigationBarItemStyle(
      labelStyle: theme.typography.bodySmall
          .copyWith(color: theme.colors.textSecondary),
      selectedLabelStyle:
          theme.typography.bodySmall.copyWith(color: theme.colors.primary),
      backgroundColor: theme.colors.surface,
      iconSize: 24.0,
    );
  }

  factory CrownBottomNavigationBarItemStyle.minimal(CrownThemeData theme) {
    return CrownBottomNavigationBarItemStyle(
      labelStyle: theme.typography.labelSmall
          .copyWith(color: theme.colors.textTertiary),
      selectedLabelStyle:
          theme.typography.labelSmall.copyWith(color: theme.colors.primary),
      backgroundColor: theme.colors.background,
      iconSize: 20.0,
    );
  }

  CrownBottomNavigationBarItemStyle copyWith({
    TextStyle? labelStyle,
    TextStyle? selectedLabelStyle,
    Color? backgroundColor,
    double? iconSize,
  }) {
    return CrownBottomNavigationBarItemStyle(
      labelStyle: labelStyle ?? this.labelStyle,
      selectedLabelStyle: selectedLabelStyle ?? this.selectedLabelStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      iconSize: iconSize ?? this.iconSize,
    );
  }
}
