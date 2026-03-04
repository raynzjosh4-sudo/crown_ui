import 'package:flutter/material.dart';
import '../styles/crown_stack_style.dart';

/// A theme-aware Stack for Crown UI
///
/// Provides consistent stacking options for layering widgets.
///
/// Usage:
/// ```dart
/// CrownStack(
///   style: CrownStackStyle.defaultStyle(),
///   children: [
///     Container(color: Colors.blue, width: 200, height: 200),
///     Positioned(
///       top: 10,
///       left: 10,
///       child: Text('Label'),
///     ),
///   ],
/// )
///
/// CrownStack(
///   style: CrownStackStyle.center(),
///   children: [
///     Container(color: Colors.red),
///     Container(color: Colors.green, width: 100, height: 100),
///   ],
/// )
/// ```
class CrownStack extends StatelessWidget {
  final List<Widget> children;
  final CrownStackStyle? style;

  const CrownStack({
    Key? key,
    required this.children,
    this.style,
  }) : super(key: key);

  factory CrownStack.center({
    Key? key,
    required List<Widget> children,
  }) {
    return CrownStack(
      key: key,
      children: children,
      style: CrownStackStyle.center(),
    );
  }

  factory CrownStack.expand({
    Key? key,
    required List<Widget> children,
  }) {
    return CrownStack(
      key: key,
      children: children,
      style: CrownStackStyle.expand(),
    );
  }

  factory CrownStack.topCenter({
    Key? key,
    required List<Widget> children,
  }) {
    return CrownStack(
      key: key,
      children: children,
      style: CrownStackStyle.topCenter(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = style ?? CrownStackStyle.defaultStyle();

    return Stack(
      alignment: resolvedStyle.alignment,
      fit: resolvedStyle.fit,
      clipBehavior: resolvedStyle.clipBehavior,
      children: children,
    );
  }
}
