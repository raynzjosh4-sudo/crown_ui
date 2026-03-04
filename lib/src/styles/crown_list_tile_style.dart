import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

/// Immutable style class for [CrownListTile]
class CrownListTileStyle {
  final Color? backgroundColor;
  final Color? selectedColor;
  final Color? titleTextColor;
  final Color? subtitleTextColor;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final EdgeInsets padding;
  final EdgeInsets contentPadding;
  final double minHeight;
  final ShapeBorder? shape;
  final BorderSide? border;
  final bool dense;
  final double? horizontalTitleGap;
  final double? minLeadingWidth;

  const CrownListTileStyle({
    this.backgroundColor,
    this.selectedColor,
    this.titleTextColor,
    this.subtitleTextColor,
    this.titleStyle,
    this.subtitleStyle,
    this.padding = const EdgeInsets.all(0),
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.minHeight = 56,
    this.shape,
    this.border,
    this.dense = false,
    this.horizontalTitleGap,
    this.minLeadingWidth,
  });

  /// Default ListTile style
  factory CrownListTileStyle.defaultStyle(CrownThemeData theme) {
    return CrownListTileStyle(
      backgroundColor: theme.colors.surface,
      titleTextColor: theme.colors.textPrimary,
      subtitleTextColor: theme.colors.textSecondary,
      titleStyle: theme.typography.bodyLarge,
      subtitleStyle: theme.typography.bodySmall,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      minHeight: 56,
    );
  }

  /// Compact ListTile style with smaller padding and height
  factory CrownListTileStyle.compact(CrownThemeData theme) {
    return CrownListTileStyle(
      backgroundColor: theme.colors.surface,
      titleTextColor: theme.colors.textPrimary,
      subtitleTextColor: theme.colors.textSecondary,
      titleStyle: theme.typography.bodyMedium,
      subtitleStyle: theme.typography.labelSmall,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      minHeight: 40,
      dense: true,
    );
  }

  /// Dense ListTile style for lists with many items
  factory CrownListTileStyle.dense(CrownThemeData theme) {
    return CrownListTileStyle(
      backgroundColor: theme.colors.surface,
      titleTextColor: theme.colors.textPrimary,
      subtitleTextColor: theme.colors.textSecondary,
      titleStyle: theme.typography.bodyMedium,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      minHeight: 48,
      dense: true,
    );
  }

  /// Outlined ListTile style with border
  factory CrownListTileStyle.outlined(CrownThemeData theme) {
    return CrownListTileStyle(
      backgroundColor: theme.colors.surface,
      titleTextColor: theme.colors.textPrimary,
      subtitleTextColor: theme.colors.textSecondary,
      titleStyle: theme.typography.bodyLarge,
      subtitleStyle: theme.typography.bodySmall,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      minHeight: 64,
      border: BorderSide(color: theme.colors.border, width: 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  /// Filled ListTile style with background color
  factory CrownListTileStyle.filled(CrownThemeData theme) {
    return CrownListTileStyle(
      backgroundColor: theme.colors.primary.withOpacity(0.1),
      selectedColor: theme.colors.primary,
      titleTextColor: theme.colors.primary,
      subtitleTextColor: theme.colors.textSecondary,
      titleStyle: theme.typography.bodyLarge?.copyWith(
        color: theme.colors.primary,
      ),
      subtitleStyle: theme.typography.bodySmall,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      minHeight: 64,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  /// Tonal ListTile style with subtle background
  factory CrownListTileStyle.tonal(CrownThemeData theme) {
    return CrownListTileStyle(
      backgroundColor: theme.colors.primary.withOpacity(0.08),
      titleTextColor: theme.colors.primary,
      subtitleTextColor: theme.colors.textSecondary,
      titleStyle: theme.typography.bodyLarge?.copyWith(
        color: theme.colors.primary,
      ),
      subtitleStyle: theme.typography.bodySmall,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      minHeight: 56,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  /// Selected/Active ListTile style
  factory CrownListTileStyle.selected(CrownThemeData theme) {
    return CrownListTileStyle(
      backgroundColor: theme.colors.primary.withOpacity(0.12),
      selectedColor: theme.colors.primary,
      titleTextColor: theme.colors.primary,
      subtitleTextColor: theme.colors.textSecondary,
      titleStyle: theme.typography.bodyLarge?.copyWith(
        fontWeight: FontWeight.w600,
        color: theme.colors.primary,
      ),
      subtitleStyle: theme.typography.bodySmall,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      minHeight: 56,
    );
  }

  CrownListTileStyle copyWith({
    Color? backgroundColor,
    Color? selectedColor,
    Color? titleTextColor,
    Color? subtitleTextColor,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    EdgeInsets? padding,
    EdgeInsets? contentPadding,
    double? minHeight,
    ShapeBorder? shape,
    BorderSide? border,
    bool? dense,
    double? horizontalTitleGap,
    double? minLeadingWidth,
  }) {
    return CrownListTileStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      selectedColor: selectedColor ?? this.selectedColor,
      titleTextColor: titleTextColor ?? this.titleTextColor,
      subtitleTextColor: subtitleTextColor ?? this.subtitleTextColor,
      titleStyle: titleStyle ?? this.titleStyle,
      subtitleStyle: subtitleStyle ?? this.subtitleStyle,
      padding: padding ?? this.padding,
      contentPadding: contentPadding ?? this.contentPadding,
      minHeight: minHeight ?? this.minHeight,
      shape: shape ?? this.shape,
      border: border ?? this.border,
      dense: dense ?? this.dense,
      horizontalTitleGap: horizontalTitleGap ?? this.horizontalTitleGap,
      minLeadingWidth: minLeadingWidth ?? this.minLeadingWidth,
    );
  }

  /// Resolved getter for title TextStyle with fallback
  TextStyle get resolvedTitleStyle {
    return titleStyle ??
        const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  }

  /// Resolved getter for subtitle TextStyle with fallback
  TextStyle get resolvedSubtitleStyle {
    return subtitleStyle ?? const TextStyle(fontSize: 14);
  }
}
