import 'package:flutter/material.dart';

/// A themed AspectRatio component
///
/// Provides a wrapper around Flutter's AspectRatio widget with Crown theme support.
class CrownAspectRatio extends StatelessWidget {
  /// The aspect ratio of the child
  final double aspectRatio;

  /// The child widget
  final Widget child;

  const CrownAspectRatio({
    Key? key,
    required this.aspectRatio,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: child,
    );
  }
}
