import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownChip
class CrownChipStyle {
  final TextStyle labelStyle;
  final Color backgroundColor;
  final Color selectedColor;
  final Color disabledColor;
  final BorderSide side;
  final double borderRadius;
  final EdgeInsets padding;
  final Widget? deleteIcon;
  final Color deleteIconColor;
  final double elevation;
  final Color shadowColor;

  const CrownChipStyle({
    required this.labelStyle,
    required this.backgroundColor,
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

  /// Default chip style
  factory CrownChipStyle.defaultStyle(CrownThemeData theme) {
    return CrownChipStyle(
      labelStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: theme.colors.border.withOpacity(0.1),
      selectedColor: theme.colors.primary.withOpacity(0.2),
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

  /// Filled chip style with primary color
  factory CrownChipStyle.filled(CrownThemeData theme) {
    return CrownChipStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: theme.colors.primary,
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

  /// Outlined chip style
  factory CrownChipStyle.outlined(CrownThemeData theme) {
    return CrownChipStyle(
      labelStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: Colors.transparent,
      selectedColor: theme.colors.primary.withOpacity(0.1),
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

  /// Success chip style
  factory CrownChipStyle.success(CrownThemeData theme) {
    return CrownChipStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: theme.colors.success,
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

  /// Warning chip style
  factory CrownChipStyle.warning(CrownThemeData theme) {
    return CrownChipStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: theme.colors.warning,
      selectedColor: theme.colors.warning.withOpacity(0.8),
      disabledColor: theme.colors.disabled,
      side: BorderSide.none,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      deleteIcon: const Icon(Icons.clear, size: 18),
      deleteIconColor: Colors.white,
      elevation: 2,
      shadowColor: theme.colors.warning.withOpacity(0.3),
    );
  }

  /// Error chip style
  factory CrownChipStyle.error(CrownThemeData theme) {
    return CrownChipStyle(
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: theme.colors.error,
      selectedColor: theme.colors.error.withOpacity(0.8),
      disabledColor: theme.colors.disabled,
      side: BorderSide.none,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
          horizontal: theme.spacing.md, vertical: theme.spacing.sm),
      deleteIcon: const Icon(Icons.clear, size: 18),
      deleteIconColor: Colors.white,
      elevation: 2,
      shadowColor: theme.colors.error.withOpacity(0.3),
    );
  }

  /// Compact chip style
  factory CrownChipStyle.compact(CrownThemeData theme) {
    return CrownChipStyle(
      labelStyle: TextStyle(
        color: theme.colors.textPrimary,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: theme.colors.border.withOpacity(0.1),
      selectedColor: theme.colors.primary.withOpacity(0.2),
      disabledColor: theme.colors.disabled.withOpacity(0.3),
      side: BorderSide.none,
      borderRadius: 16,
      padding: EdgeInsets.symmetric(horizontal: theme.spacing.sm, vertical: 4),
      deleteIcon: const Icon(Icons.clear, size: 14),
      deleteIconColor: theme.colors.textSecondary,
      elevation: 0,
      shadowColor: Colors.transparent,
    );
  }
}
