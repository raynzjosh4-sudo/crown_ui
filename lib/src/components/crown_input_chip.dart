import 'package:flutter/material.dart';
import '../styles/crown_input_chip_style.dart';
import '../theme/crown_theme.dart';

/// A themed input chip component
///
/// Provides a chip for input fields and selections with delete functionality
/// integrated with Crown theme styling.
class CrownInputChip extends StatelessWidget {
  /// Label text for the chip
  final String label;

  /// Custom style for the chip
  final CrownInputChipStyle? customStyle;

  /// Leading icon widget
  final Widget? leading;

  /// Callback when chip is deleted
  final VoidCallback? onDeleted;

  /// Callback when chip is pressed
  final VoidCallback? onPressed;

  /// Whether the chip is selected
  final bool selected;

  /// Whether the chip is disabled
  final bool disabled;

  /// Avatar widget displayed as leading
  final Widget? avatar;

  const CrownInputChip(
    this.label, {
    Key? key,
    this.customStyle,
    this.leading,
    this.onDeleted,
    this.onPressed,
    this.selected = false,
    this.disabled = false,
    this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownInputChipStyle.defaultStyle(theme);

    return InputChip(
      label: Text(
        label,
        style: style.labelStyle,
      ),
      backgroundColor:
          selected ? style.selectedBackgroundColor : style.backgroundColor,
      selectedColor: style.selectedColor,
      disabledColor: style.disabledColor,
      side: style.side,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(style.borderRadius),
      ),
      padding: style.padding,
      onDeleted: disabled ? null : onDeleted,
      deleteIcon: style.deleteIcon,
      deleteIconColor: style.deleteIconColor,
      onPressed: disabled ? null : onPressed,
      onSelected: disabled ? null : (_) => onPressed?.call(),
      elevation: style.elevation,
      shadowColor: style.shadowColor,
    );
  }
}
