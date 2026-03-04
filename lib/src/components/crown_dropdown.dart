import 'package:flutter/material.dart';
import '../styles/crown_dropdown_style.dart';

/// Crown dropdown button component
class CrownDropdown<T> extends StatelessWidget {
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final Function(T?)? onChanged;
  final CrownDropdownStyle style;
  final String? hint;
  final bool isExpanded;

  const CrownDropdown({
    Key? key,
    required this.items,
    this.value,
    this.onChanged,
    required this.style,
    this.hint,
    this.isExpanded = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: style.backgroundColor,
        border: Border.all(
          color: style.borderColor ?? Colors.transparent,
          width: style.borderWidth,
        ),
        borderRadius: BorderRadius.circular(style.borderRadius),
      ),
      child: Padding(
        padding: style.padding,
        child: DropdownButton<T>(
          value: value,
          items: items,
          onChanged: onChanged,
          hint: hint != null
              ? Text(
                  hint!,
                  style: TextStyle(color: style.textColor),
                )
              : null,
          isExpanded: isExpanded,
          underline: SizedBox(),
          elevation: (style.elevation ?? 2).toInt(),
          style: TextStyle(color: style.textColor),
          iconEnabledColor: style.iconColor,
        ),
      ),
    );
  }
}
