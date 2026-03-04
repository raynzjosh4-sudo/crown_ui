import 'package:flutter/material.dart';

/// A themed Offstage component
///
/// Provides a wrapper around Flutter's Offstage widget with Crown theme support.
class CrownOffstage extends StatelessWidget {
  /// Whether the widget is offstage
  final bool offstage;

  /// The child widget
  final Widget child;

  const CrownOffstage({
    Key? key,
    this.offstage = true,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: offstage,
      child: child,
    );
  }
}
