import 'package:flutter/material.dart';

/// A themed animated widget component
///
/// Provides a simple wrapper for animation based on an AnimationController.
class CrownAnimatedWidget extends AnimatedWidget {
  /// The child widget to animate
  final Widget Function(BuildContext context) buildWidget;

  /// Creates a Crown animated widget
  const CrownAnimatedWidget({
    Key? key,
    required Listenable listenable,
    required this.buildWidget,
  }) : super(
          key: key,
          listenable: listenable,
        );

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }
}

/// A helper widget for building animated transitions
class CrownAnimationBuilder<T> extends StatefulWidget {
  /// Initial value of the animation
  final T initialValue;

  /// Duration of the animation
  final Duration duration;

  /// Curve of the animation
  final Curve curve;

  /// The animation value callback
  final Widget Function(BuildContext context, T value, Widget? child) builder;

  /// Optional child widget
  final Widget? child;

  const CrownAnimationBuilder({
    Key? key,
    required this.initialValue,
    required this.duration,
    required this.builder,
    this.curve = Curves.easeInOut,
    this.child,
  }) : super(key: key);

  @override
  _CrownAnimationBuilderState<T> createState() =>
      _CrownAnimationBuilderState<T>();
}

class _CrownAnimationBuilderState<T> extends State<CrownAnimationBuilder<T>>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: widget.curve),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return widget.builder(context, widget.initialValue, widget.child);
      },
    );
  }
}
