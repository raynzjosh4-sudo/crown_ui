import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

class CrownIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? color;
  final double? opacity;
  final VoidCallback? onTap;
  final bool isButton;
  final double? buttonSize;

  const CrownIcon(
    this.icon, {
    Key? key,
    this.size = 24,
    this.color,
    this.opacity,
    this.onTap,
    this.isButton = false,
    this.buttonSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final iconColor = color ?? theme.colors.textPrimary;

    if (isButton) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: buttonSize ?? 44,
          height: buttonSize ?? 44,
          decoration: BoxDecoration(color: theme.colors.surface, borderRadius: BorderRadius.circular(12), boxShadow: theme.borders.shadowSmall),
          child: Center(
            child: Icon(icon, size: size, color: iconColor),
          ),
        ),
      );
    }

    return Opacity(
      opacity: opacity ?? 1.0,
      child: GestureDetector(
        onTap: onTap,
        child: Icon(icon, size: size, color: iconColor),
      ),
    );
  }
}
