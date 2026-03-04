import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// A help text component for displaying hints and assistance messages
///
/// Provides styled help text below form fields or other components.
class CrownHelpText extends StatelessWidget {
  /// The help text content
  final String text;

  /// The text style for the help text
  final TextStyle? style;

  /// The color of the help text
  final Color? color;

  /// Icon to display before the text
  final Widget? icon;

  /// Padding around the help text
  final EdgeInsets padding;

  const CrownHelpText(
    this.text, {
    Key? key,
    this.style,
    this.color,
    this.icon,
    this.padding = const EdgeInsets.only(top: 8.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);

    return Padding(
      padding: padding,
      child: Row(
        children: [
          if (icon != null) ...[
            icon!,
            SizedBox(width: 8),
          ],
          Expanded(
            child: Text(
              text,
              style: style ??
                  TextStyle(
                    color: color ?? theme.colors.textSecondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
