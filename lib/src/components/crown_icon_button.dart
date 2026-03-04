import 'package:flutter/material.dart';
import '../styles/crown_icon_button_style.dart';

/// A theme-aware icon button for Crown UI
///
/// Provides consistent icon button styling with optional background color.
///
/// Usage:
/// ```dart
/// CrownIconButton(
///   icon: Icons.settings,
///   onPressed: () {},
///   style: CrownIconButtonStyle.defaultStyle(),
/// )
///
/// CrownIconButton(
///   icon: Icons.add,
///   onPressed: () {},
///   style: CrownIconButtonStyle.large(),
/// )
///
/// CrownIconButton(
///   icon: Icons.delete,
///   onPressed: () {},
///   style: CrownIconButtonStyle.filled(backgroundColor: Colors.red),
/// )
/// ```
class CrownIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final CrownIconButtonStyle? style;
  final double? iconSize;
  final Color? iconColor;
  final Color? backgroundColor;
  final String? tooltip;
  final bool enabled;

  const CrownIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.style,
    this.iconSize,
    this.iconColor,
    this.backgroundColor,
    this.tooltip,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = style ?? CrownIconButtonStyle.defaultStyle();

    final finalIconSize = iconSize ?? resolvedStyle.iconSize;
    final finalIconColor = iconColor ?? resolvedStyle.iconColor;
    final finalBackgroundColor =
        backgroundColor ?? resolvedStyle.backgroundColor;
    final finalPadding = resolvedStyle.padding;
    final finalSplashRadius = resolvedStyle.splashRadius;

    if (finalBackgroundColor != null) {
      return Container(
        decoration: BoxDecoration(
          color: finalBackgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: IconButton(
          icon: Icon(icon, size: finalIconSize, color: finalIconColor),
          onPressed: enabled ? onPressed : null,
          tooltip: tooltip,
          padding: finalPadding,
          splashRadius: finalSplashRadius,
        ),
      );
    }

    return IconButton(
      icon: Icon(icon, size: finalIconSize, color: finalIconColor),
      onPressed: enabled ? onPressed : null,
      tooltip: tooltip,
      padding: finalPadding,
      splashRadius: finalSplashRadius,
    );
  }
}
