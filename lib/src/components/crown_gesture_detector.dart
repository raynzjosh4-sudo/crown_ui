import 'package:flutter/material.dart';

/// A themed GestureDetector component
///
/// Provides a wrapper around Flutter's GestureDetector with Crown theme support.
class CrownGestureDetector extends StatelessWidget {
  /// Called when the user taps
  final VoidCallback? onTap;

  /// Called when the user presses down
  final VoidCallback? onTapDown;

  /// Called when the user releases a button
  final VoidCallback? onTapUp;

  /// Called when the user cancels
  final VoidCallback? onTapCancel;

  /// Called when user long presses
  final VoidCallback? onLongPress;

  /// Called when user long presses and releases
  final VoidCallback? onLongPressUp;

  /// Called when user double taps
  final VoidCallback? onDoubleTap;

  /// Called when the user begins a pan
  final GestureDragStartCallback? onPanStart;

  /// Called when the user moves during a pan
  final GestureDragUpdateCallback? onPanUpdate;

  /// Called when user finishes a pan
  final GestureDragEndCallback? onPanEnd;

  /// The child widget
  final Widget child;

  /// Whether to exclude this widget from the gesture detector
  final bool excludeFromSemantics;

  /// Behavior for hit testing
  final HitTestBehavior? behavior;

  const CrownGestureDetector({
    Key? key,
    this.onTap,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onLongPress,
    this.onLongPressUp,
    this.onDoubleTap,
    this.onPanStart,
    this.onPanUpdate,
    this.onPanEnd,
    required this.child,
    this.excludeFromSemantics = false,
    this.behavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onTapDown: onTapDown != null ? (_) => onTapDown!() : null,
      onTapUp: onTapUp != null ? (_) => onTapUp!() : null,
      onTapCancel: onTapCancel,
      onLongPress: onLongPress,
      onLongPressUp: onLongPressUp,
      onDoubleTap: onDoubleTap,
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      excludeFromSemantics: excludeFromSemantics,
      behavior: behavior ?? HitTestBehavior.deferToChild,
      child: child,
    );
  }
}
