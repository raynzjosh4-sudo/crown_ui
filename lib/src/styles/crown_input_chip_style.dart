import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownInputChip
class CrownInputChipStyle {
  final TextStyle labelStyle;
  final Color backgroundColor;
  final Color selectedBackgroundColor;
  final Color selectedColor;
  final Color disabledColor;
  final BorderSide side;
  final double borderRadius;
  final EdgeInsets padding;
  final Widget? deleteIcon;
  final Color deleteIconColor;
  final double elevation;
  final Color shadowColor;

  const CrownInputChipStyle({
    required this.labelStyle,
    required this.backgroundColor,
    required this.selectedBackgroundColor,
    required this.selectedColor,
    required this.disabledColor,
    required this.side,
    required this.borderRadius,
    required this.padding,
    this.deleteIcon,
    required this.deleteIconColor,
    required this.elevation,
    required this.shadowColor,
  });

  /// Default input chip style
  factory CrownInputChipStyle.defaultStyle(CrownThemeData theme) {
    return CrownInputChipStyle(
      labelStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: theme.colors.border.withOpacity(0.1),
      selectedBackgroundColor: theme.colors.primary.withOpacity(0.2),
      selectedColor: theme.colors.primary.withOpacity(0.3),
      disabledColor: theme.colors.disabled.withOpacity(0.3),
      side: BorderSide(color: theme.colors.border.withOpacity(0.5)),
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      deleteIcon: const Icon(Icons.clear, size: 18),
      deleteIconColor: theme.colors.textSecondary,
      elevation: 0,
      shadowColor: Colors.transparent,
    );
  }

  /// Filled input chip style
  factory CrownInputChipStyle.filled(CrownThemeData theme) {
    return CrownInputChipStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: theme.colors.primary.withOpacity(0.7),
      selectedBackgroundColor: theme.colors.primary,
      selectedColor: theme.colors.primary.withOpacity(0.8),
      disabledColor: theme.colors.disabled,
      side: BorderSide.none,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      deleteIcon: const Icon(Icons.clear, size: 18),
      deleteIconColor: Colors.white,
      elevation: 2,
      shadowColor: theme.colors.primary.withOpacity(0.3),
    );
  }

  /// Outlined input chip style
  factory CrownInputChipStyle.outlined(CrownThemeData theme) {
    return CrownInputChipStyle(
      labelStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: Colors.transparent,
      selectedBackgroundColor: theme.colors.primary.withOpacity(0.1),
      selectedColor: Colors.transparent,
      disabledColor: Colors.transparent,
      side: BorderSide(color: theme.colors.border, width: 1.5),
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      deleteIcon: const Icon(Icons.clear, size: 18),
      deleteIconColor: theme.colors.textSecondary,
      elevation: 0,
      shadowColor: Colors.transparent,
    );
  }

  /// Success input chip style
  factory CrownInputChipStyle.success(CrownThemeData theme) {
    return CrownInputChipStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: theme.colors.success.withOpacity(0.7),
      selectedBackgroundColor: theme.colors.success,
      selectedColor: theme.colors.success.withOpacity(0.8),
      disabledColor: theme.colors.disabled,
      side: BorderSide.none,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      deleteIcon: const Icon(Icons.clear, size: 18),
      deleteIconColor: Colors.white,
      elevation: 2,
      shadowColor: theme.colors.success.withOpacity(0.3),
    );
  }
}
