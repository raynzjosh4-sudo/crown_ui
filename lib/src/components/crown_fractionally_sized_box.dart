import 'package:flutter/material.dart';

/// A themed FractionallySizedBox component
///
/// Provides a wrapper around Flutter's FractionallySizedBox widget with Crown theme support.
class CrownFractionallySizedBox extends StatelessWidget {
  /// The width fraction
  final double? widthFactor;

  /// The height fraction
  final double? heightFactor;

  /// The alignment of the child
  final Alignment alignment;

  /// The child widget
  final Widget? child;

  const CrownFractionallySizedBox({
    Key? key,
    this.widthFactor,
    this.heightFactor,
    this.alignment = Alignment.center,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      alignment: alignment,
      child: child,
    );
  }
}
