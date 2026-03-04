import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownFilterChip
class CrownFilterChipStyle {
  final TextStyle labelStyle;
  final TextStyle selectedLabelStyle;
  final Color backgroundColor;
  final Color selectedColor;
  final Color disabledColor;
  final BorderSide side;
  final BorderSide selectedSide;
  final double borderRadius;
  final EdgeInsets padding;
  final double elevation;
  final Color shadowColor;

  const CrownFilterChipStyle({
    required this.labelStyle,
    required this.selectedLabelStyle,
    required this.backgroundColor,
    required this.selectedColor,
    required this.disabledColor,
    required this.side,
    required this.selectedSide,
    required this.borderRadius,
    required this.padding,
    required this.elevation,
    required this.shadowColor,
  });

  /// Default filter chip style
  factory CrownFilterChipStyle.defaultStyle(CrownThemeData theme) {
    return CrownFilterChipStyle(
      labelStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      selectedLabelStyle: TextStyle(
        color: theme.colors.primary,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: theme.colors.border.withOpacity(0.1),
      selectedColor: theme.colors.primary.withOpacity(0.15),
      disabledColor: theme.colors.disabled.withOpacity(0.3),
      side: BorderSide(color: theme.colors.border.withOpacity(0.5)),
      selectedSide: BorderSide(color: theme.colors.primary, width: 1.5),
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      elevation: 0,
      shadowColor: Colors.transparent,
    );
  }

  /// Filled filter chip style
  factory CrownFilterChipStyle.filled(CrownThemeData theme) {
    return CrownFilterChipStyle(
      labelStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: theme.colors.border.withOpacity(0.1),
      selectedColor: theme.colors.primary,
      disabledColor: theme.colors.disabled,
      side: BorderSide.none,
      selectedSide: BorderSide.none,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      elevation: 0,
      shadowColor: Colors.transparent,
    );
  }

  /// Outlined filter chip style
  factory CrownFilterChipStyle.outlined(CrownThemeData theme) {
    return CrownFilterChipStyle(
      labelStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      selectedLabelStyle: TextStyle(
        color: theme.colors.primary,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: Colors.transparent,
      selectedColor: theme.colors.primary.withOpacity(0.1),
      disabledColor: Colors.transparent,
      side: BorderSide(color: theme.colors.border, width: 1.2),
      selectedSide: BorderSide(color: theme.colors.primary, width: 1.5),
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      elevation: 0,
      shadowColor: Colors.transparent,
    );
  }

  /// Elevated filter chip style
  factory CrownFilterChipStyle.elevated(CrownThemeData theme) {
    return CrownFilterChipStyle(
      labelStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: Colors.transparent,
      selectedColor: theme.colors.primary,
      disabledColor: theme.colors.disabled.withOpacity(0.3),
      side: BorderSide(color: theme.colors.border.withOpacity(0.5)),
      selectedSide: BorderSide.none,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      elevation: 2,
      shadowColor: theme.colors.primary.withOpacity(0.2),
    );
  }
}
