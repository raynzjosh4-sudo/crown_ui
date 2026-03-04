import 'package:flutter/material.dart';
import '../styles/crown_sized_box_style.dart';

/// A theme-aware SizedBox widget for Crown UI
///
/// Provides consistent spacing through predefined style presets.
///
/// Usage:
/// ```dart
/// CrownSizedBox(style: CrownSizedBoxStyle.md())
///
/// CrownSizedBox(style: CrownSizedBoxStyle.horizontal(16))
///
/// CrownSizedBox(
///   style: CrownSizedBoxStyle.vertical(8),
///   child: Text('Content'),
/// )
/// ```
class CrownSizedBox extends StatelessWidget {
  final CrownSizedBoxStyle? style;
  final double? width;
  final double? height;
  final Widget? child;

  const CrownSizedBox({
    Key? key,
    this.style,
    this.width,
    this.height,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resolvedStyle = style ?? CrownSizedBoxStyle.defaultStyle();

    return SizedBox(
      width: width ?? resolvedStyle.width,
      height: height ?? resolvedStyle.height,
      child: child,
    );
  }
}
