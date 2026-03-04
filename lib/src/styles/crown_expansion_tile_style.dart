import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// Style configuration for CrownExpansionTile
///
/// Controls the appearance and behavior of the expansion tile including
/// colors, borders, padding, animations, and shape.
class CrownExpansionTileStyle {
  /// Background color when expanded
  final Color? backgroundColor;

  /// Background color when collapsed
  final Color? collapsedBackgroundColor;

  /// Text color when expanded
  final Color? expandedTextColor;

  /// Text color when collapsed
  final Color? collapsedTextColor;

  /// Icon color when expanded
  final Color? expandedIconColor;

  /// Icon color when collapsed
  final Color? collapsedIconColor;

  /// Shape of the tile
  final ShapeBorder shape;

  /// Shape when collapsed
  final ShapeBorder collapsedShape;

  /// Elevation when expanded
  final double elevation;

  /// Elevation when collapsed
  final double collapsedElevation;

  /// Padding of the tile
  final EdgeInsets tilePadding;

  /// Padding of children
  final EdgeInsets childrenPadding;

  /// Divider color between tile and children
  final Color? dividerColor;

  /// Margin around the tile
  final EdgeInsets margin;

  /// Animation duration
  final Duration animationDuration;

  const CrownExpansionTileStyle({
    this.backgroundColor,
    this.collapsedBackgroundColor,
    this.expandedTextColor,
    this.collapsedTextColor,
    this.expandedIconColor,
    this.collapsedIconColor,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    this.collapsedShape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    this.elevation = 2,
    this.collapsedElevation = 0,
    this.tilePadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.childrenPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.dividerColor,
    this.margin = const EdgeInsets.all(0),
    this.animationDuration = const Duration(milliseconds: 200),
  });

  /// Default style using the theme's colors
  factory CrownExpansionTileStyle.defaultStyle(CrownThemeData theme) {
    return CrownExpansionTileStyle(
      backgroundColor: theme.colors.surface,
      collapsedBackgroundColor: theme.colors.surface,
      expandedTextColor: theme.colors.textPrimary,
      collapsedTextColor: theme.colors.textPrimary,
      expandedIconColor: theme.colors.primary,
      collapsedIconColor: theme.colors.textSecondary,
      shape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusMedium,
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusMedium,
      ),
      elevation: 0,
      collapsedElevation: 0,
      tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      dividerColor: theme.colors.border,
      animationDuration: const Duration(milliseconds: 200),
    );
  }

  /// Elevated style with shadow
  factory CrownExpansionTileStyle.elevated(CrownThemeData theme) {
    return CrownExpansionTileStyle(
      backgroundColor: theme.colors.surface,
      collapsedBackgroundColor: theme.colors.surface,
      expandedTextColor: theme.colors.textPrimary,
      collapsedTextColor: theme.colors.textPrimary,
      expandedIconColor: theme.colors.primary,
      collapsedIconColor: theme.colors.textSecondary,
      shape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusMedium,
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusMedium,
      ),
      elevation: 4,
      collapsedElevation: 2,
      tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      dividerColor: theme.colors.border,
      animationDuration: const Duration(milliseconds: 200),
    );
  }

  /// Outlined style with border
  factory CrownExpansionTileStyle.outlined(CrownThemeData theme) {
    return CrownExpansionTileStyle(
      backgroundColor: theme.colors.surface,
      collapsedBackgroundColor: theme.colors.surface,
      expandedTextColor: theme.colors.textPrimary,
      collapsedTextColor: theme.colors.textPrimary,
      expandedIconColor: theme.colors.primary,
      collapsedIconColor: theme.colors.textSecondary,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: theme.colors.border, width: 1),
        borderRadius: theme.borders.radiusMedium,
      ),
      collapsedShape: RoundedRectangleBorder(
        side: BorderSide(color: theme.colors.border, width: 1),
        borderRadius: theme.borders.radiusMedium,
      ),
      elevation: 0,
      collapsedElevation: 0,
      tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      dividerColor: theme.colors.border,
      animationDuration: const Duration(milliseconds: 200),
    );
  }

  /// Filled style with color
  factory CrownExpansionTileStyle.filled(CrownThemeData theme) {
    return CrownExpansionTileStyle(
      backgroundColor: theme.colors.primaryLight,
      collapsedBackgroundColor: theme.colors.surfaceLight,
      expandedTextColor: theme.colors.textPrimary,
      collapsedTextColor: theme.colors.textPrimary,
      expandedIconColor: theme.colors.textPrimary,
      collapsedIconColor: theme.colors.textSecondary,
      shape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusMedium,
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusMedium,
      ),
      elevation: 0,
      collapsedElevation: 0,
      tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      dividerColor: theme.colors.border,
      animationDuration: const Duration(milliseconds: 200),
    );
  }

  /// Compact style with minimal padding
  factory CrownExpansionTileStyle.compact(CrownThemeData theme) {
    return CrownExpansionTileStyle(
      backgroundColor: theme.colors.surface,
      collapsedBackgroundColor: theme.colors.surface,
      expandedTextColor: theme.colors.textPrimary,
      collapsedTextColor: theme.colors.textPrimary,
      expandedIconColor: theme.colors.primary,
      collapsedIconColor: theme.colors.textSecondary,
      shape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusSmall,
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusSmall,
      ),
      elevation: 0,
      collapsedElevation: 0,
      tilePadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      dividerColor: theme.colors.border,
      animationDuration: const Duration(milliseconds: 150),
    );
  }

  /// Copy with method for creating modified versions
  CrownExpansionTileStyle copyWith({
    Color? backgroundColor,
    Color? collapsedBackgroundColor,
    Color? expandedTextColor,
    Color? collapsedTextColor,
    Color? expandedIconColor,
    Color? collapsedIconColor,
    ShapeBorder? shape,
    ShapeBorder? collapsedShape,
    double? elevation,
    double? collapsedElevation,
    EdgeInsets? tilePadding,
    EdgeInsets? childrenPadding,
    Color? dividerColor,
    EdgeInsets? margin,
    Duration? animationDuration,
  }) {
    return CrownExpansionTileStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      collapsedBackgroundColor:
          collapsedBackgroundColor ?? this.collapsedBackgroundColor,
      expandedTextColor: expandedTextColor ?? this.expandedTextColor,
      collapsedTextColor: collapsedTextColor ?? this.collapsedTextColor,
      expandedIconColor: expandedIconColor ?? this.expandedIconColor,
      collapsedIconColor: collapsedIconColor ?? this.collapsedIconColor,
      shape: shape ?? this.shape,
      collapsedShape: collapsedShape ?? this.collapsedShape,
      elevation: elevation ?? this.elevation,
      collapsedElevation: collapsedElevation ?? this.collapsedElevation,
      tilePadding: tilePadding ?? this.tilePadding,
      childrenPadding: childrenPadding ?? this.childrenPadding,
      dividerColor: dividerColor ?? this.dividerColor,
      margin: margin ?? this.margin,
      animationDuration: animationDuration ?? this.animationDuration,
    );
  }
}
