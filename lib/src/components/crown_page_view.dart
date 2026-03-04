import 'package:flutter/material.dart';

/// A themed PageView component
///
/// Provides a wrapper around Flutter's PageView with Crown theme support.
class CrownPageView extends StatelessWidget {
  /// List of children pages
  final List<Widget> children;

  /// The page controller
  final PageController? controller;

  /// Called when the page changes
  final ValueChanged<int>? onPageChanged;

  /// Whether pages can scroll
  final bool physics;

  /// The scroll physics to use
  final ScrollPhysics? scrollPhysics;

  /// The axis direction
  final Axis scrollDirection;

  /// Whether to allow implicit scrolling
  final bool allowImplicitScrolling;

  const CrownPageView({
    Key? key,
    required this.children,
    this.controller,
    this.onPageChanged,
    this.physics = true,
    this.scrollPhysics,
    this.scrollDirection = Axis.horizontal,
    this.allowImplicitScrolling = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      physics: physics
          ? scrollPhysics ?? ClampingScrollPhysics()
          : NeverScrollableScrollPhysics(),
      scrollDirection: scrollDirection,
      allowImplicitScrolling: allowImplicitScrolling,
      children: children,
    );
  }
}
