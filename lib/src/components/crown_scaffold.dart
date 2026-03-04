import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// Crown Scaffold Component
///
/// A pre-styled scaffold that provides:
/// - AppBar with Crown UI styling
/// - Body with proper background
/// - BottomNavigationBar support
/// - Drawer support
/// - FAB support
/// - Safe area handling

class CrownScaffold extends StatelessWidget {
  /// Main content of the scaffold
  final Widget body;

  /// Optional app bar title
  final String? title;

  /// Custom app bar widget (overrides title)
  final PreferredSizeWidget? appBar;

  /// Bottom navigation bar items
  final List<BottomNavigationBarItem>? bottomNavItems;

  /// Bottom navigation bar callback
  final void Function(int)? onBottomNavTap;

  /// Current selected index for bottom nav
  final int? currentBottomNavIndex;

  /// Floating action button
  final CrownFloatingActionButton? fab;

  /// Floating action button location
  final FloatingActionButtonLocation? fabLocation;

  /// Drawer (sidebar)
  final Widget? drawer;

  /// End drawer (right sidebar)
  final Widget? endDrawer;

  /// Show safe area padding
  final bool useSafeArea;

  /// Background color
  final Color? backgroundColor;

  /// App bar leading widget (back button, etc)
  final Widget? leading;

  /// App bar actions (right side buttons)
  final List<Widget>? actions;

  /// Show bottom safe area
  final bool showBottomSafeArea;

  const CrownScaffold({
    Key? key,
    required this.body,
    this.title,
    this.appBar,
    this.bottomNavItems,
    this.onBottomNavTap,
    this.currentBottomNavIndex,
    this.fab,
    this.fabLocation,
    this.drawer,
    this.endDrawer,
    this.useSafeArea = true,
    this.backgroundColor,
    this.leading,
    this.actions,
    this.showBottomSafeArea = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);

    return Scaffold(
      backgroundColor: backgroundColor ?? theme.colors.background,
      appBar: appBar ?? _buildAppBar(theme),
      body: useSafeArea
          ? SafeArea(
              bottom: showBottomSafeArea,
              child: body,
            )
          : body,
      bottomNavigationBar:
          bottomNavItems != null ? _buildBottomNav(theme) : null,
      drawer: drawer,
      endDrawer: endDrawer,
      floatingActionButton: fab,
      floatingActionButtonLocation: fabLocation,
    );
  }

  /// Build default app bar with Crown styling
  AppBar _buildAppBar(CrownThemeData theme) {
    if (title == null) {
      return AppBar(
        backgroundColor: theme.colors.surface,
        elevation: 0,
        leading: leading,
        actions: actions,
      );
    }

    return AppBar(
      title: Text(
        title!,
        style: theme.typography.headingMedium.copyWith(
          color: theme.colors.textPrimary,
        ),
      ),
      backgroundColor: theme.colors.surface,
      elevation: 0,
      leading: leading,
      actions: actions,
      iconTheme: IconThemeData(color: theme.colors.textPrimary),
    );
  }

  /// Build bottom navigation bar with Crown styling
  BottomNavigationBar _buildBottomNav(CrownThemeData theme) {
    return BottomNavigationBar(
      items: bottomNavItems!,
      currentIndex: currentBottomNavIndex ?? 0,
      onTap: onBottomNavTap,
      backgroundColor: theme.colors.surface,
      selectedItemColor: theme.colors.primary,
      unselectedItemColor: theme.colors.textSecondary,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    );
  }
}
