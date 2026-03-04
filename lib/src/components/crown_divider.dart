import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_divider_style.dart';

class CrownDivider extends StatelessWidget {
  final CrownDividerStyle? style;
  final Color? color;
  final double? height;
  final double? thickness;
  final double? indent;
  final double? endIndent;

  const CrownDivider({
    Key? key,
    this.style,
    this.color,
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final resolvedStyle = style ?? CrownDividerStyle.defaultStyle(theme);

    return Divider(
      color: color ?? resolvedStyle.color,
      height: height ?? resolvedStyle.height,
      thickness: thickness ?? resolvedStyle.thickness,
      indent: indent ?? resolvedStyle.indent,
      endIndent: endIndent ?? resolvedStyle.endIndent,
    );
  }
}
