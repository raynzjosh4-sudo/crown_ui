import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_card_style.dart';

class CrownCard extends StatelessWidget {
  final Widget child;
  final CrownCardStyle? customStyle;
  final VoidCallback? onTap;

  const CrownCard({
    Key? key,
    required this.child,
    this.customStyle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownCardStyle.elevated(theme);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: style.backgroundColor ?? theme.colors.surface,
          borderRadius: style.borderRadius,
          border: style.borderWidth > 0 ? Border.all(color: style.borderColor ?? theme.colors.border, width: style.borderWidth) : null,
          boxShadow: style.boxShadow,
        ),
        child: Padding(
          padding: style.padding,
          child: child,
        ),
      ),
    );
  }
}
