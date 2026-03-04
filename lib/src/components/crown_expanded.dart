import 'package:flutter/material.dart';
import '../styles/crown_expanded_style.dart';

/// A theme-aware Expanded widget for Crown UI
///
/// Provides consistent flex-based expansion through styles.
///
/// Usage:
/// ```dart
/// CrownRow(
///   children: [
///     Text('Fixed'),
///     CrownExpanded(
///       child: Text('Expands to fill remaining space'),
///     ),
///   ],
/// )
/// ```
class CrownExpanded extends StatelessWidget {
  final Widget child;
  final CrownExpandedStyle? style;
  final int? flex;

  const CrownExpanded({
    Key? key,
    required this.child,
    this.style,
    this.flex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = style ?? CrownExpandedStyle.defaultStyle();

    return Expanded(
      flex: flex ?? resolvedStyle.flex,
      child: child,
    );
  }
}
