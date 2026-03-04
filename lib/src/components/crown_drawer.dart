import 'package:flutter/material.dart';
import '../styles/crown_drawer_style.dart';
import '../styles/crown_padding_style.dart';
import '../components/crown_padding.dart';
import '../theme/crown_theme.dart';

/// A theme-aware drawer for Crown UI
///
/// Provides consistent drawer styling with animations.
///
/// Usage:
/// ```dart
/// CrownDrawer(
///   style: CrownDrawerStyle.defaultStyle(),
///   child: Column(
///     children: [
///       DrawerHeader(child: Text('Menu')),
///       ListTile(title: Text('Home')),
///       ListTile(title: Text('Settings')),
///     ],
///   ),
/// )
/// ```
class CrownDrawer extends StatelessWidget {
  final Widget child;
  final CrownDrawerStyle? style;
  final Color? backgroundColor;

  const CrownDrawer({
    Key? key,
    required this.child,
    this.style,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = style ?? CrownDrawerStyle.defaultStyle();
    final theme = CrownTheme.of(context);

    return Drawer(
      backgroundColor: backgroundColor ??
          resolvedStyle.backgroundColor ??
          theme.colors.surface,
      elevation: resolvedStyle.elevation,
      child: CrownPadding(
        style: CrownPaddingStyle(
          padding: resolvedStyle.padding,
        ),
        child: child,
      ),
    );
  }
}
