import 'package:flutter/material.dart';
import '../styles/crown_single_child_scroll_view_style.dart';

/// A theme-aware scrollable container for Crown UI
///
/// Simplifies creating scrollable layouts with consistent scroll physics
/// and optional padding.
///
/// Usage:
/// `dart
/// CrownSingleChildScrollView(
///   child: Column(
///     children: [Text('Item 1'), Text('Item 2')],
///   ),
/// )
///
/// CrownSingleChildScrollView(
///   style: CrownSingleChildScrollViewStyle.horizontal(),
///   child: Row(children: [...]),
/// )
/// `
class CrownSingleChildScrollView extends StatelessWidget {
  final Widget child;
  final CrownSingleChildScrollViewStyle? style;
  final Axis? scrollDirection;
  final bool? reverse;
  final ScrollPhysics? physics;
  final EdgeInsets? padding;

  const CrownSingleChildScrollView({
    Key? key,
    required this.child,
    this.style,
    this.scrollDirection,
    this.reverse,
    this.physics,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resolvedStyle =
        style ?? CrownSingleChildScrollViewStyle.defaultStyle(null);

    final direction = scrollDirection ?? resolvedStyle.scrollDirection;
    final isReverse = reverse ?? resolvedStyle.reverse;
    final scrollPhysics =
        physics ?? resolvedStyle.physics ?? const BouncingScrollPhysics();
    final contentPadding = padding ?? resolvedStyle.padding ?? EdgeInsets.zero;

    return SingleChildScrollView(
      scrollDirection: direction,
      reverse: isReverse,
      physics: scrollPhysics,
      padding: contentPadding,
      child: child,
    );
  }
}
