import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_padding_style.dart';

/// A theme-aware padding wrapper for Crown UI
///
/// Simplifies applying consistent padding with support for predefined styles
/// or custom EdgeInsets.
///
/// Usage:
/// `dart
/// // Use default theme spacing
/// CrownPadding(
///   child: Text('Hello'),
/// )
///
/// // Use style preset
/// CrownPadding(
///   style: CrownPaddingStyle.large(theme),
///   child: Text('Hello'),
/// )
///
/// // Use custom padding value
/// CrownPadding(
///   all: 20,
///   child: Text('Hello'),
/// )
/// `
class CrownPadding extends StatelessWidget {
  final Widget child;
  final CrownPaddingStyle? style;
  final EdgeInsets? padding;
  final double? all;
  final double? horizontal;
  final double? vertical;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  const CrownPadding({
    Key? key,
    required this.child,
    this.style,
    this.padding,
    this.all,
    this.horizontal,
    this.vertical,
    this.top,
    this.bottom,
    this.left,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);

    // Resolve style or create one from explicit parameters
    final resolvedStyle = style ??
        CrownPaddingStyle(
          padding: padding,
          all: all,
          horizontal: horizontal,
          vertical: vertical,
          top: top,
          bottom: bottom,
          left: left,
          right: right,
        ) ??
        CrownPaddingStyle.defaultStyle(theme);

    final resolvedPadding = resolvedStyle.resolve();

    return Padding(
      padding: resolvedPadding,
      child: child,
    );
  }
}
