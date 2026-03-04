import 'package:crown_ui/src/styles/crown_chip_style.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// A themed chip component
///
/// Provides a simple wrapper around Flutter's Chip widget
/// with Crown theme styling, optional delete functionality, and consistent theming.
class CrownChip extends StatelessWidget {
  /// Label text for the chip
  final String label;

  /// Custom style for the chip
  final CrownChipStyle? customStyle;

  /// Leading icon widget
  final Widget? leading;

  /// Trailing icon widget
  final Widget? trailing;

  /// Callback when chip is deleted
  final VoidCallback? onDeleted;

  /// Whether the chip is disabled
  final bool disabled;

  /// Chip padding
  final EdgeInsets? padding;

  /// Avatar widget displayed as leading
  final Widget? avatar;

  const CrownChip(
    this.label, {
    Key? key,
    this.customStyle,
    this.leading,
    this.trailing,
    this.onDeleted,
    this.disabled = false,
    this.padding,
    this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownChipStyle.defaultStyle(theme);

    return Chip(
      label: Text(
        label,
        style: style.labelStyle,
      ),
      backgroundColor: style.backgroundColor,
      side: style.side,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(style.borderRadius),
      ),
      padding: padding ?? style.padding,
      avatar: avatar ?? leading,
      onDeleted: disabled ? null : onDeleted,
      deleteIcon: style.deleteIcon,
      deleteIconColor: style.deleteIconColor,
      elevation: style.elevation,
      shadowColor: style.shadowColor,
    );
  }
}
