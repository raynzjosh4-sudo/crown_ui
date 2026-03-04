import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownChoiceChip
class CrownChoiceChipStyle {
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

  const CrownChoiceChipStyle({
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

  /// Default choice chip style
  factory CrownChoiceChipStyle.defaultStyle(CrownThemeData theme) {
    return CrownChoiceChipStyle(
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
      disabledColor: theme.colors.disabled.withOpacity(0.3),
      side: BorderSide(color: theme.colors.border.withOpacity(0.5)),
      selectedSide: BorderSide.none,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      elevation: 0,
      shadowColor: Colors.transparent,
    );
  }

  /// Outlined choice chip style
  factory CrownChoiceChipStyle.outlined(CrownThemeData theme) {
    return CrownChoiceChipStyle(
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
      selectedColor: Colors.transparent,
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

  /// Filled choice chip style
  factory CrownChoiceChipStyle.filled(CrownThemeData theme) {
    return CrownChoiceChipStyle(
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
      backgroundColor: theme.colors.border.withOpacity(0.08),
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

  /// Success color choice chip style
  factory CrownChoiceChipStyle.success(CrownThemeData theme) {
    return CrownChoiceChipStyle(
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
      selectedColor: theme.colors.success,
      disabledColor: theme.colors.disabled,
      side: BorderSide(color: theme.colors.border.withOpacity(0.5)),
      selectedSide: BorderSide.none,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      elevation: 0,
      shadowColor: Colors.transparent,
    );
  }
}
