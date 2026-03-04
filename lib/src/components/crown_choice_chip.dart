import 'package:crown_ui/src/styles/crown_choice_chip_style.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// A themed choice chip component
///
/// Provides a chip for single selection within a group
/// integrated with Crown theme styling.
class CrownChoiceChip extends StatelessWidget {
  /// Label text for the chip
  final String label;

  /// Whether the choice is selected
  final bool selected;

  /// Callback when chip selection changes
  final ValueChanged<bool>? onSelected;

  /// Custom style for the chip
  final CrownChoiceChipStyle? customStyle;

  /// Leading icon widget
  final Widget? leading;

  /// Avatar widget displayed as leading
  final Widget? avatar;

  /// Whether the chip is disabled
  final bool disabled;

  const CrownChoiceChip(
    this.label, {
    Key? key,
    required this.selected,
    this.onSelected,
    this.customStyle,
    this.leading,
    this.avatar,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownChoiceChipStyle.defaultStyle(theme);

    return ChoiceChip(
      label: Text(
        label,
        style: selected ? style.selectedLabelStyle : style.labelStyle,
      ),
      selected: selected,
      onSelected: disabled ? null : onSelected,
      backgroundColor: style.backgroundColor,
      selectedColor: style.selectedColor,
      disabledColor: style.disabledColor,
      side: selected ? style.selectedSide : style.side,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(style.borderRadius),
      ),
      padding: style.padding,
      avatar: avatar ?? leading,
      elevation: style.elevation,
      shadowColor: style.shadowColor,
    );
  }
}
