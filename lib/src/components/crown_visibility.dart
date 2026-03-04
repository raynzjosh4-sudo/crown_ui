import 'package:flutter/material.dart';

/// A themed Visibility component
///
/// Provides a wrapper around Flutter's Visibility widget with Crown theme support.
class CrownVisibility extends StatelessWidget {
  /// Whether the child is visible
  final bool visible;

  /// Whether to maintain the widget state when not visible
  final bool maintainState;

  /// Whether to maintain the size when not visible
  final bool maintainAnimation;

  /// Whether to maintain the interaction when not visible
  final bool maintainSemantics;

  /// The widget to show when visible
  final Widget child;

  /// The widget to show when not visible
  final Widget replacement;

  const CrownVisibility({
    Key? key,
    this.visible = true,
    this.maintainState = false,
    this.maintainAnimation = false,
    this.maintainSemantics = false,
    required this.child,
    this.replacement = const SizedBox.shrink(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      maintainState: maintainState,
      maintainAnimation: maintainAnimation,
      maintainSemantics: maintainSemantics,
      replacement: replacement,
      child: child,
    );
  }
}
