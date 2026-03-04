import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_icon_style.dart';

class CrownIcon extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color? color;
  final double? opacity;
  final VoidCallback? onTap;
  final bool isButton;
  final double? buttonSize;
  final CrownIconStyle? style;

  const CrownIcon(
    this.icon, {
    Key? key,
    this.size,
    this.color,
    this.opacity,
    this.onTap,
    this.isButton = false,
    this.buttonSize,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final resolvedStyle = style ?? CrownIconStyle.defaultStyle(theme);

    final iconSize = size ?? resolvedStyle.size ?? 24.0;
    final iconColor = color ?? resolvedStyle.color ?? theme.colors.textPrimary;
    final iconOpacity = opacity ?? resolvedStyle.opacity ?? 1.0;
    final isIconButton = isButton || (resolvedStyle.isButton == true);
    final btnSize = buttonSize ?? resolvedStyle.buttonSize;

    if (isIconButton) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: btnSize ?? 44,
          height: btnSize ?? 44,
          decoration: BoxDecoration(
            color: theme.colors.surface,
            borderRadius: BorderRadius.circular(12),
            boxShadow: theme.borders.shadowSmall,
          ),
          child: Center(
            child: Icon(icon, size: iconSize, color: iconColor),
          ),
        ),
      );
    }

    return Opacity(
      opacity: iconOpacity,
      child: GestureDetector(
        onTap: onTap,
        child: Icon(icon, size: iconSize, color: iconColor),
      ),
    );
  }
}
