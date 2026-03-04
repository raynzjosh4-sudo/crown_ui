import 'package:flutter/material.dart';
import '../styles/crown_floating_action_button_style.dart';

/// A theme-aware floating action button for Crown UI
///
/// Provides consistent FAB styling with shape and size support.
///
/// Usage:
/// ```dart
/// CrownFloatingActionButton(
///   onPressed: () {},
///   style: CrownFloatingActionButtonStyle.defaultStyle(theme),
/// )
///
/// CrownFloatingActionButton(
///   onPressed: () {},
///   style: CrownFloatingActionButtonStyle.mini(),
/// )
///
/// CrownFloatingActionButton(
///   onPressed: () {},
///   icon: Icons.edit,
///   style: CrownFloatingActionButtonStyle.extended(
///     label: 'Edit',
///     icon: Icons.edit,
///   ),
/// )
/// ```
class CrownFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final CrownFloatingActionButtonStyle? style;
  final IconData? icon;
  final String? tooltip;
  final bool heroAnimation;

  const CrownFloatingActionButton({
    Key? key,
    required this.onPressed,
    this.style,
    this.icon,
    this.tooltip,
    this.heroAnimation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resolvedStyle =
        style ?? CrownFloatingActionButtonStyle.defaultStyle(null);

    // Validate that either style has icon or icon is provided
    assert(
      resolvedStyle.icon != null || icon != null,
      'Either provide an icon in the style or pass icon parameter',
    );

    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: resolvedStyle.backgroundColor,
      foregroundColor: resolvedStyle.foregroundColor,
      elevation: resolvedStyle.elevation,
      mini: resolvedStyle.mini,
      shape: resolvedStyle.shape,
      tooltip: tooltip,
      child: Icon(
        icon ?? resolvedStyle.icon,
        size: resolvedStyle.iconSize,
      ),
    );
  }
}
