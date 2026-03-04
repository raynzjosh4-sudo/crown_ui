import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../theme/crown_theme_data.dart';

/// Style configuration for CrownBottomSheet
///
/// Controls the appearance and behavior of the bottom sheet including
/// colors, shapes, padding, shadows, and drag handle styling.
class CrownBottomSheetStyle {
  /// Background color of the sheet
  final Color backgroundColor;

  /// Shape of the sheet
  final ShapeBorder shape;

  /// Box shadow for elevation effect
  final List<BoxShadow>? boxShadow;

  /// Padding of the content area
  final EdgeInsets padding;

  /// Color of the drag handle
  final Color dragHandleColor;

  /// Border radius for the drag handle
  final BorderRadius dragHandleBorderRadius;

  /// Duration of show/hide animation
  final Duration animationDuration;

  /// Clip behavior
  final Clip clipBehavior;

  const CrownBottomSheetStyle({
    required this.backgroundColor,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    this.boxShadow,
    this.padding = const EdgeInsets.all(16),
    this.dragHandleColor = const Color(0xFFBDBDBD),
    this.dragHandleBorderRadius = const BorderRadius.all(Radius.circular(2)),
    this.animationDuration = const Duration(milliseconds: 300),
    this.clipBehavior = Clip.antiAlias,
  });

  /// Default style using the theme's colors
  factory CrownBottomSheetStyle.defaultStyle(CrownThemeData theme) {
    return CrownBottomSheetStyle(
      backgroundColor: theme.colors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      boxShadow: theme.borders.shadowLarge,
      padding: const EdgeInsets.all(16),
      dragHandleColor: theme.colors.border,
      dragHandleBorderRadius: const BorderRadius.all(Radius.circular(2)),
      animationDuration: const Duration(milliseconds: 300),
    );
  }

  /// Elevated style with shadow
  factory CrownBottomSheetStyle.elevated(CrownThemeData theme) {
    return CrownBottomSheetStyle(
      backgroundColor: theme.colors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      boxShadow: theme.borders.shadowXLarge,
      padding: const EdgeInsets.all(20),
      dragHandleColor: theme.colors.border,
      dragHandleBorderRadius: const BorderRadius.all(Radius.circular(2)),
      animationDuration: const Duration(milliseconds: 300),
    );
  }

  /// Filled style with color
  factory CrownBottomSheetStyle.filled(CrownThemeData theme) {
    return CrownBottomSheetStyle(
      backgroundColor: theme.colors.primaryLight,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      boxShadow: theme.borders.shadowLarge,
      padding: const EdgeInsets.all(16),
      dragHandleColor: theme.colors.primary,
      dragHandleBorderRadius: const BorderRadius.all(Radius.circular(2)),
      animationDuration: const Duration(milliseconds: 300),
    );
  }

  /// Bordered style
  factory CrownBottomSheetStyle.bordered(CrownThemeData theme) {
    return CrownBottomSheetStyle(
      backgroundColor: theme.colors.surface,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: theme.colors.border, width: 1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      boxShadow: theme.borders.shadowMedium,
      padding: const EdgeInsets.all(16),
      dragHandleColor: theme.colors.border,
      dragHandleBorderRadius: const BorderRadius.all(Radius.circular(2)),
      animationDuration: const Duration(milliseconds: 300),
    );
  }

  /// Compact style with minimal padding and smaller handle
  factory CrownBottomSheetStyle.compact(CrownThemeData theme) {
    return CrownBottomSheetStyle(
      backgroundColor: theme.colors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      boxShadow: theme.borders.shadowSmall,
      padding: const EdgeInsets.all(12),
      dragHandleColor: theme.colors.border,
      dragHandleBorderRadius: const BorderRadius.all(Radius.circular(1)),
      animationDuration: const Duration(milliseconds: 200),
    );
  }

  /// Copy with method for creating modified versions
  CrownBottomSheetStyle copyWith({
    Color? backgroundColor,
    ShapeBorder? shape,
    List<BoxShadow>? boxShadow,
    EdgeInsets? padding,
    Color? dragHandleColor,
    BorderRadius? dragHandleBorderRadius,
    Duration? animationDuration,
    Clip? clipBehavior,
  }) {
    return CrownBottomSheetStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shape: shape ?? this.shape,
      boxShadow: boxShadow ?? this.boxShadow,
      padding: padding ?? this.padding,
      dragHandleColor: dragHandleColor ?? this.dragHandleColor,
      dragHandleBorderRadius:
          dragHandleBorderRadius ?? this.dragHandleBorderRadius,
      animationDuration: animationDuration ?? this.animationDuration,
      clipBehavior: clipBehavior ?? this.clipBehavior,
    );
  }
}
