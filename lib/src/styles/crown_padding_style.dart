import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

class CrownPaddingStyle {
  final EdgeInsets? padding;
  final double? all;
  final double? horizontal;
  final double? vertical;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  const CrownPaddingStyle({
    this.padding,
    this.all,
    this.horizontal,
    this.vertical,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  factory CrownPaddingStyle.none() {
    return const CrownPaddingStyle(padding: EdgeInsets.zero);
  }

  factory CrownPaddingStyle.defaultStyle(CrownThemeData theme) {
    return CrownPaddingStyle(
      padding: EdgeInsets.all(theme.spacing.md),
    );
  }

  factory CrownPaddingStyle.small(CrownThemeData theme) {
    return CrownPaddingStyle(
      padding: EdgeInsets.all(theme.spacing.sm),
    );
  }

  factory CrownPaddingStyle.large(CrownThemeData theme) {
    return CrownPaddingStyle(
      padding: EdgeInsets.all(theme.spacing.lg),
    );
  }

  /// Resolve the EdgeInsets from style preferences
  EdgeInsets resolve() {
    if (padding != null) return padding!;

    if (all != null) {
      return EdgeInsets.all(all!);
    }

    if (horizontal != null || vertical != null) {
      return EdgeInsets.symmetric(
        horizontal: horizontal ?? 0,
        vertical: vertical ?? 0,
      );
    }

    if (top != null || bottom != null || left != null || right != null) {
      return EdgeInsets.only(
        top: top ?? 0,
        bottom: bottom ?? 0,
        left: left ?? 0,
        right: right ?? 0,
      );
    }

    return EdgeInsets.zero;
  }

  CrownPaddingStyle copyWith({
    EdgeInsets? padding,
    double? all,
    double? horizontal,
    double? vertical,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    return CrownPaddingStyle(
      padding: padding ?? this.padding,
      all: all ?? this.all,
      horizontal: horizontal ?? this.horizontal,
      vertical: vertical ?? this.vertical,
      top: top ?? this.top,
      bottom: bottom ?? this.bottom,
      left: left ?? this.left,
      right: right ?? this.right,
    );
  }
}
