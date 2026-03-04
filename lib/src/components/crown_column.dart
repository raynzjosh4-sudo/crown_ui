import 'package:flutter/material.dart';
import '../styles/crown_column_style.dart';

/// A theme-aware Column widget for Crown UI
///
/// Provides consistent alignment and sizing options through styles.
///
/// Usage:
/// ```dart
/// CrownColumn(
///   style: CrownColumnStyle.center(),
///   children: [
///     Text('Item 1'),
///     Text('Item 2'),
///   ],
/// )
/// ```
class CrownColumn extends StatelessWidget {
  final List<Widget> children;
  final CrownColumnStyle? style;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final TextDirection? textDirection;
  final VerticalDirection? verticalDirection;

  const CrownColumn({
    Key? key,
    required this.children,
    this.style,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.mainAxisSize,
    this.textDirection,
    this.verticalDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = style ?? CrownColumnStyle.defaultStyle();

    return Column(
      mainAxisAlignment: mainAxisAlignment ?? resolvedStyle.mainAxisAlignment,
      crossAxisAlignment:
          crossAxisAlignment ?? resolvedStyle.crossAxisAlignment,
      mainAxisSize: mainAxisSize ?? resolvedStyle.mainAxisSize,
      textDirection: textDirection ?? resolvedStyle.textDirection,
      verticalDirection: verticalDirection ?? resolvedStyle.verticalDirection,
      children: children,
    );
  }
}
