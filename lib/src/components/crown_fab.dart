import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_fab_style.dart';

/// A simple, theme-aware FloatingActionButton for Crown UI
class CrownFAB extends StatelessWidget {
  final Widget? child;
  final IconData? icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final CrownFabStyle? style;
  final String? tooltip;
  final bool mini;

  CrownFAB({
    Key? key,
    this.child,
    this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.style,
    this.tooltip,
    this.mini = false,
  })  : assert(
          child != null ||
              icon != null ||
              (style != null && style.icon != null),
          'Either child or icon (or style.icon) must be provided',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final resolvedStyle = style ?? CrownFabStyle.defaultStyle(theme);

    final bg = backgroundColor ??
        resolvedStyle.backgroundColor ??
        theme.colors.primary;
    final fg = foregroundColor ?? resolvedStyle.foregroundColor ?? Colors.white;
    final elev = elevation ?? resolvedStyle.elevation ?? 6.0;
    final isMini = mini || (resolvedStyle.mini == true);
    final resolvedIcon = icon ?? resolvedStyle.icon;

    assert(child != null || resolvedIcon != null,
        'Either child or icon (or style.icon) must be provided');

    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: bg,
      foregroundColor: fg,
      elevation: elev,
      mini: isMini,
      tooltip: tooltip,
      child:
          child ?? Icon(resolvedIcon, color: fg, size: resolvedStyle.iconSize),
    );
  }
}
