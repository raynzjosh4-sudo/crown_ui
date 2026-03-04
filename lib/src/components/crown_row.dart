import 'package:flutter/material.dart';
import '../styles/crown_row_style.dart';

/// A theme-aware Row widget for Crown UI
///
/// Provides consistent alignment and sizing options through styles.
///
/// Usage:
/// ```dart
/// CrownRow(
///   style: CrownRowStyle.center(),
///   children: [
///     Text('Item 1'),
///     Text('Item 2'),
///   ],
/// )
/// ```
class CrownRow extends StatelessWidget {
  final List<Widget> children;
  final CrownRowStyle? style;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final TextDirection? textDirection;
  final VerticalDirection? verticalDirection;

  const CrownRow({
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
    final resolvedStyle = style ?? CrownRowStyle.defaultStyle();

    return Row(
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
