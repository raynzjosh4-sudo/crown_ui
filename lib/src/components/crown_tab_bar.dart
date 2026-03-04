import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/crown_tab_bar_style.dart';

/// A themed TabBar component with Crown theme support
class CrownTabBar extends StatelessWidget {
  /// The tabs to display
  final List<Tab> tabs;

  /// The tab controller
  final TabController? controller;

  /// Called when the tab changes
  final ValueChanged<int>? onTap;

  /// Whether the tabs are scrollable
  final bool? isScrollable;

  /// The style configuration for the tab bar
  final CrownTabBarStyle? style;

  const CrownTabBar({
    Key? key,
    required this.tabs,
    this.controller,
    this.onTap,
    this.isScrollable,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final tabStyle = style ?? CrownTabBarStyle.defaultStyle(theme);

    return TabBar(
      tabs: tabs,
      controller: controller,
      onTap: onTap,
      isScrollable: tabStyle.isScrollable,
      indicatorColor: tabStyle.indicatorColor,
      indicatorWeight: tabStyle.indicatorWeight,
      labelColor: tabStyle.labelColor,
      unselectedLabelColor: tabStyle.unselectedLabelColor,
      labelStyle: tabStyle.labelStyle,
      unselectedLabelStyle: tabStyle.unselectedLabelStyle,
      indicator: tabStyle.showIndicator
          ? UnderlineTabIndicator(
              borderSide: BorderSide(
                color: tabStyle.indicatorColor,
                width: tabStyle.indicatorWeight,
              ),
            )
          : _FilledTabIndicator(
              activeColor: tabStyle.activeTabBackgroundColor,
              borderRadius: BorderRadius.circular(6),
            ),
      dividerHeight: 0,
    );
  }
}

/// Custom indicator that fills the background instead of showing a line
class _FilledTabIndicator extends Decoration {
  final Color? activeColor;
  final BorderRadius borderRadius;

  _FilledTabIndicator({
    this.activeColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(0)),
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _FilledTabPainter(
      activeColor: activeColor,
      borderRadius: borderRadius,
    );
  }
}

class _FilledTabPainter extends BoxPainter {
  final Color? activeColor;
  final BorderRadius borderRadius;

  _FilledTabPainter({
    this.activeColor,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    if (activeColor == null) return;

    final paint = Paint()
      ..color = activeColor!
      ..style = PaintingStyle.fill;

    final rect =
        offset & Size(configuration.size!.width, configuration.size!.height);
    final rrect = borderRadius.resolve(TextDirection.ltr).toRRect(rect);

    canvas.drawRRect(rrect, paint);
  }
}
