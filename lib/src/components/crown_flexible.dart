import 'package:flutter/material.dart';

/// A themed Flexible component
///
/// Provides a wrapper around Flutter's Flexible widget with Crown theme support.
class CrownFlexible extends StatelessWidget {
  /// The flex factor for the widget
  final int flex;

  /// How to fit the child in the available space
  final FlexFit fit;

  /// The child widget
  final Widget child;

  const CrownFlexible({
    Key? key,
    this.flex = 1,
    this.fit = FlexFit.loose,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      fit: fit,
      child: child,
    );
  }
}
