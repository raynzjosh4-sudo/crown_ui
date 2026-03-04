import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

/// A themed CustomScrollView component
///
/// Provides a wrapper around Flutter's CustomScrollView with Crown theme support.
class CrownCustomScrollView extends StatelessWidget {
  /// List of sliver widgets
  final List<Widget> slivers;

  /// The scroll controller
  final ScrollController? controller;

  /// The scroll physics to use
  final ScrollPhysics? physics;

  /// Scroll direction
  final Axis scrollDirection;

  /// Whether to reverse the scroll direction
  final bool reverse;

  /// Primary property for nested scrolling
  final bool? primary;

  /// Called when the user scrolls
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

  /// Whether to clip behavior
  final Clip clipBehavior;

  const CrownCustomScrollView({
    Key? key,
    required this.slivers,
    this.controller,
    this.physics,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.primary,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.clipBehavior = Clip.hardEdge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      physics: physics ?? ClampingScrollPhysics(),
      scrollDirection: scrollDirection,
      reverse: reverse,
      primary: primary,
      keyboardDismissBehavior: keyboardDismissBehavior,
      clipBehavior: clipBehavior,
      slivers: slivers,
    );
  }
}
