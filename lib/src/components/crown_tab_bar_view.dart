import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

/// A themed TabBarView component
///
/// Provides a styled tab bar view with Crown theme support.
class CrownTabBarView extends StatelessWidget {
  /// The child widgets for each tab
  final List<Widget> children;

  /// The tab controller
  final TabController? controller;

  /// The physics for scrolling
  final ScrollPhysics? physics;

  /// Drag start behavior
  final DragStartBehavior dragStartBehavior;

  const CrownTabBarView({
    Key? key,
    required this.children,
    this.controller,
    this.physics,
    this.dragStartBehavior = DragStartBehavior.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      physics: physics ?? ClampingScrollPhysics(),
      dragStartBehavior: dragStartBehavior,
      children: children,
    );
  }
}
