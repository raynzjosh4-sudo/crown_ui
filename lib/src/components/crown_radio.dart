import 'package:flutter/material.dart';
import '../styles/crown_radio_style.dart';

/// A theme-aware radio button for Crown UI
///
/// Provides customizable radio button with various size options.
///
/// Usage:
/// ```dart
/// CrownRadio<String>(
///   value: 'option1',
///   groupValue: selectedValue,
///   onChanged: (value) => setState(() => selectedValue = value),
///   style: CrownRadioStyle.defaultStyle(),
/// )
/// ```
class CrownRadio<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final CrownRadioStyle? style;
  final Color? activeColor;
  final Color? inactiveColor;

  const CrownRadio({
    Key? key,
    required this.value,
    required this.groupValue,
    this.onChanged,
    this.style,
    this.activeColor,
    this.inactiveColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = style ?? CrownRadioStyle.defaultStyle();
    final isSelected = value == groupValue;

    final finalActiveColor =
        activeColor ?? resolvedStyle.activeColor ?? Colors.blue;
    final finalInactiveColor =
        inactiveColor ?? resolvedStyle.inactiveColor ?? Colors.grey;
    final selectedColor = isSelected ? finalActiveColor : finalInactiveColor;

    return GestureDetector(
      onTap: onChanged != null ? () => onChanged!(value) : null,
      child: Container(
        width: resolvedStyle.size,
        height: resolvedStyle.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: selectedColor,
            width: resolvedStyle.borderWidth,
          ),
        ),
        child: isSelected
            ? Center(
                child: Container(
                  width: resolvedStyle.innerCircleSize,
                  height: resolvedStyle.innerCircleSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: finalActiveColor,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
