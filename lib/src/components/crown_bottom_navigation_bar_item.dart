import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_bottom_navigation_bar_item_style.dart';

/// A theme-aware BottomNavigationBarItem for Crown UI
///
/// Simplifies creating styled bottom navigation items with automatic
/// theme colors and consistent typography.
///
/// Usage:
/// `dart
/// CrownBottomNavigationBarItem(
///   icon: Icons.home,
///   label: 'Home',
/// )
///
/// CrownBottomNavigationBarItem(
///   icon: Icons.settings,
///   label: 'Settings',
///   style: CrownBottomNavigationBarItemStyle.minimal(theme),
/// )
/// `
class CrownBottomNavigationBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final CrownBottomNavigationBarItemStyle? style;
  final Color? iconColor;

  const CrownBottomNavigationBarItem({
    Key? key,
    required this.icon,
    required this.label,
    this.style,
    this.iconColor,
  }) : super(key: key);

  /// Build a BottomNavigationBarItem with Crown styling
  BottomNavigationBarItem buildNavItem(BuildContext context) {
    final theme = CrownTheme.of(context);
    final resolvedStyle =
        style ?? CrownBottomNavigationBarItemStyle.defaultStyle(theme);

    return BottomNavigationBarItem(
      icon: Icon(icon, size: resolvedStyle.iconSize),
      label: label,
      backgroundColor: resolvedStyle.backgroundColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    // This widget is meant to be used in a builder context where you
    // call buildNavItem() to get the BottomNavigationBarItem.
    // But we provide this as a fallback widget that returns a Container.
    return Container(
      child: Icon(icon),
    );
  }
}

/// Helper function to build styled BottomNavigationBarItems from a list of Crown items
List<BottomNavigationBarItem> buildCrownBottomNavItems(
  BuildContext context,
  List<CrownBottomNavigationBarItem> items,
) {
  return items.map((item) => item.buildNavItem(context)).toList();
}
