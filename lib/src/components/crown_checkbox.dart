import 'package:flutter/material.dart';
import '../styles/crown_checkbox_style.dart';

/// A theme-aware checkbox for Crown UI
///
/// Provides iOS-style checkbox with custom styling options.
///
/// Usage:
/// ```dart
/// CrownCheckbox(
///   value: isChecked,
///   onChanged: (value) => setState(() => isChecked = value ?? false),
///   style: CrownCheckboxStyle.iphone(),
/// )
/// ```
class CrownCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final CrownCheckboxStyle? style;
  final Color? activeColor;
  final Color? checkColor;
  final double? size;

  const CrownCheckbox({
    Key? key,
    required this.value,
    this.onChanged,
    this.style,
    this.activeColor,
    this.checkColor,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = style ?? CrownCheckboxStyle.iphone();
    final finalActiveColor =
        activeColor ?? resolvedStyle.activeColor ?? Colors.blue;
    final finalCheckColor =
        checkColor ?? resolvedStyle.checkColor ?? Colors.white;
    final finalSize = size ?? resolvedStyle.size;

    return GestureDetector(
      onTap: onChanged != null ? () => onChanged!(!value) : null,
      child: Container(
        width: finalSize,
        height: finalSize,
        decoration: BoxDecoration(
          color: value ? finalActiveColor : Colors.transparent,
          border: Border.all(
            color: value
                ? finalActiveColor
                : (resolvedStyle.inactiveColor ?? Colors.grey),
            width: resolvedStyle.strokeWidth,
          ),
          borderRadius: BorderRadius.circular(resolvedStyle.borderRadius),
        ),
        child: value
            ? Icon(
                Icons.check,
                color: finalCheckColor,
                size: finalSize * 0.6,
              )
            : null,
      ),
    );
  }
}
