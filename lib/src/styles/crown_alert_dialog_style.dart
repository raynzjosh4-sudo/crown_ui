import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// Style configuration for CrownAlertDialog
///
/// Controls the appearance and behavior of the alert dialog including
/// colors, shapes, padding, typography, and alignment.
class CrownAlertDialogStyle {
  /// Background color of the dialog
  final Color backgroundColor;

  /// Shape of the dialog
  final ShapeBorder shape;

  /// Elevation of the dialog
  final double elevation;

  /// Padding of the content area
  final EdgeInsets contentPadding;

  /// Padding of the title area
  final EdgeInsets titlePadding;

  /// Padding of the actions area
  final EdgeInsets actionsPadding;

  /// Text style for the title
  final TextStyle? titleTextStyle;

  /// Text style for the content
  final TextStyle? contentTextStyle;

  /// Alignment of the action buttons
  final MainAxisAlignment actionsAlignment;

  const CrownAlertDialogStyle({
    required this.backgroundColor,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    this.elevation = 24,
    this.contentPadding = const EdgeInsets.fromLTRB(24, 20, 24, 24),
    this.titlePadding = const EdgeInsets.fromLTRB(24, 24, 24, 16),
    this.actionsPadding =
        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    this.titleTextStyle,
    this.contentTextStyle,
    this.actionsAlignment = MainAxisAlignment.end,
  });

  /// Default style using the theme's colors
  factory CrownAlertDialogStyle.defaultStyle(CrownThemeData theme) {
    return CrownAlertDialogStyle(
      backgroundColor: theme.colors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusLarge,
      ),
      elevation: 24,
      contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
      titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: theme.colors.textPrimary,
      ),
      contentTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: theme.colors.textSecondary,
      ),
      actionsAlignment: MainAxisAlignment.end,
    );
  }

  /// Outlined style with border
  factory CrownAlertDialogStyle.outlined(CrownThemeData theme) {
    return CrownAlertDialogStyle(
      backgroundColor: theme.colors.surface,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: theme.colors.border, width: 1),
        borderRadius: theme.borders.radiusLarge,
      ),
      elevation: 8,
      contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
      titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: theme.colors.textPrimary,
      ),
      contentTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: theme.colors.textSecondary,
      ),
      actionsAlignment: MainAxisAlignment.end,
    );
  }

  /// Filled style with color
  factory CrownAlertDialogStyle.filled(CrownThemeData theme) {
    return CrownAlertDialogStyle(
      backgroundColor: theme.colors.primaryLight,
      shape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusLarge,
      ),
      elevation: 24,
      contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
      titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: theme.colors.textPrimary,
      ),
      contentTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: theme.colors.textSecondary,
      ),
      actionsAlignment: MainAxisAlignment.end,
    );
  }

  /// Compact style with minimal padding
  factory CrownAlertDialogStyle.compact(CrownThemeData theme) {
    return CrownAlertDialogStyle(
      backgroundColor: theme.colors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: theme.borders.radiusMedium,
      ),
      elevation: 16,
      contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: theme.colors.textPrimary,
      ),
      contentTextStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: theme.colors.textSecondary,
      ),
      actionsAlignment: MainAxisAlignment.end,
    );
  }

  /// Success style for confirmation dialogs
  factory CrownAlertDialogStyle.success(CrownThemeData theme) {
    return CrownAlertDialogStyle(
      backgroundColor: theme.colors.surface,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: theme.colors.success, width: 2),
        borderRadius: theme.borders.radiusLarge,
      ),
      elevation: 24,
      contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
      titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: theme.colors.success,
      ),
      contentTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: theme.colors.textSecondary,
      ),
      actionsAlignment: MainAxisAlignment.end,
    );
  }

  /// Error style for warning/destructive dialogs
  factory CrownAlertDialogStyle.error(CrownThemeData theme) {
    return CrownAlertDialogStyle(
      backgroundColor: theme.colors.surface,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: theme.colors.error, width: 2),
        borderRadius: theme.borders.radiusLarge,
      ),
      elevation: 24,
      contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
      titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: theme.colors.error,
      ),
      contentTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: theme.colors.textSecondary,
      ),
      actionsAlignment: MainAxisAlignment.end,
    );
  }

  /// Copy with method for creating modified versions
  CrownAlertDialogStyle copyWith({
    Color? backgroundColor,
    ShapeBorder? shape,
    double? elevation,
    EdgeInsets? contentPadding,
    EdgeInsets? titlePadding,
    EdgeInsets? actionsPadding,
    TextStyle? titleTextStyle,
    TextStyle? contentTextStyle,
    MainAxisAlignment? actionsAlignment,
  }) {
    return CrownAlertDialogStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      shape: shape ?? this.shape,
      elevation: elevation ?? this.elevation,
      contentPadding: contentPadding ?? this.contentPadding,
      titlePadding: titlePadding ?? this.titlePadding,
      actionsPadding: actionsPadding ?? this.actionsPadding,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      contentTextStyle: contentTextStyle ?? this.contentTextStyle,
      actionsAlignment: actionsAlignment ?? this.actionsAlignment,
    );
  }
}
