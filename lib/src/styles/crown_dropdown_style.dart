import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// Dropdown button style configuration
class CrownDropdownStyle {
  final Color? backgroundColor;
  final Color? borderColor;
  final double borderRadius;
  final double borderWidth;
  final EdgeInsets padding;
  final Color? textColor;
  final Color? iconColor;
  final double? elevation;

  const CrownDropdownStyle({
    this.backgroundColor,
    this.borderColor,
    this.borderRadius = 8,
    this.borderWidth = 1,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    this.textColor,
    this.iconColor,
    this.elevation,
  });

  /// Default dropdown style
  factory CrownDropdownStyle.defaultStyle(CrownThemeData theme) {
    return CrownDropdownStyle(
      backgroundColor: theme.colors.surface,
      borderColor: theme.colors.border,
      borderRadius: 8,
      borderWidth: 1,
      padding: EdgeInsets.symmetric(
        horizontal: theme.spacing.md,
        vertical: theme.spacing.sm,
      ),
      textColor: theme.colors.textPrimary,
      iconColor: theme.colors.textSecondary,
      elevation: 2,
    );
  }

  /// Outlined dropdown style
  factory CrownDropdownStyle.outlined(CrownThemeData theme) {
    return CrownDropdownStyle(
      backgroundColor: Colors.transparent,
      borderColor: theme.colors.primary,
      borderRadius: 8,
      borderWidth: 2,
      padding: EdgeInsets.symmetric(
        horizontal: theme.spacing.md,
        vertical: theme.spacing.sm,
      ),
      textColor: theme.colors.textPrimary,
      iconColor: theme.colors.primary,
      elevation: 0,
    );
  }

  /// Filled dropdown style
  factory CrownDropdownStyle.filled(CrownThemeData theme) {
    return CrownDropdownStyle(
      backgroundColor: theme.colors.primary.withOpacity(0.1),
      borderColor: Colors.transparent,
      borderRadius: 8,
      borderWidth: 0,
      padding: EdgeInsets.symmetric(
        horizontal: theme.spacing.md,
        vertical: theme.spacing.sm,
      ),
      textColor: theme.colors.textPrimary,
      iconColor: theme.colors.primary,
      elevation: 0,
    );
  }

  /// Compact dropdown style
  factory CrownDropdownStyle.compact(CrownThemeData theme) {
    return CrownDropdownStyle(
      backgroundColor: theme.colors.surface,
      borderColor: theme.colors.border,
      borderRadius: 6,
      borderWidth: 1,
      padding: EdgeInsets.symmetric(
        horizontal: theme.spacing.sm,
        vertical: theme.spacing.xs,
      ),
      textColor: theme.colors.textPrimary,
      iconColor: theme.colors.textSecondary,
      elevation: 1,
    );
  }

  /// Copy with method
  CrownDropdownStyle copyWith({
    Color? backgroundColor,
    Color? borderColor,
    double? borderRadius,
    double? borderWidth,
    EdgeInsets? padding,
    Color? textColor,
    Color? iconColor,
    double? elevation,
  }) {
    return CrownDropdownStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      borderRadius: borderRadius ?? this.borderRadius,
      borderWidth: borderWidth ?? this.borderWidth,
      padding: padding ?? this.padding,
      textColor: textColor ?? this.textColor,
      iconColor: iconColor ?? this.iconColor,
      elevation: elevation ?? this.elevation,
    );
  }
}
