import 'package:flutter/material.dart';

/// A themed Align component
///
/// Provides a wrapper around Flutter's Align widget with Crown theme support.
class CrownAlign extends StatelessWidget {
  /// The alignment of the child widget
  final Alignment alignment;

  /// The child widget to align
  final Widget child;

  /// Width of the align widget
  final double? widthFactor;

  /// Height of the align widget
  final double? heightFactor;

  const CrownAlign({
    Key? key,
    this.alignment = Alignment.center,
    this.widthFactor,
    this.heightFactor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: child,
    );
  }
}
