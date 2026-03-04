import 'package:flutter/material.dart';

class CrownGridViewStyle {
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? itemPadding;
  final double spacing;
  final double runSpacing;
  final double? borderRadius;
  final int crossAxisCount;
  final double childAspectRatio;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final Axis scrollDirection;

  const CrownGridViewStyle({
    this.backgroundColor,
    this.padding,
    this.itemPadding,
    this.spacing = 8,
    this.runSpacing = 8,
    this.borderRadius,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1.0,
    this.shrinkWrap = false,
    this.physics,
    this.scrollDirection = Axis.vertical,
  });

  /// Default style
  factory CrownGridViewStyle.defaultStyle() {
    return const CrownGridViewStyle(
      backgroundColor: null,
      padding: EdgeInsets.zero,
      itemPadding: EdgeInsets.zero,
      spacing: 8,
      runSpacing: 8,
      borderRadius: 0,
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      shrinkWrap: false,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }

  /// Padded style with spacing
  factory CrownGridViewStyle.padded({
    Color? backgroundColor,
    double padding = 16,
    double spacing = 12,
    double itemPadding = 8,
    int crossAxisCount = 2,
  }) {
    return CrownGridViewStyle(
      backgroundColor: backgroundColor,
      padding: EdgeInsets.all(padding),
      itemPadding: EdgeInsets.all(itemPadding),
      spacing: spacing,
      runSpacing: spacing,
      crossAxisCount: crossAxisCount,
      childAspectRatio: 1.0,
      shrinkWrap: false,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }

  /// Card style with rounded corners
  factory CrownGridViewStyle.card({
    Color? backgroundColor,
    double padding = 12,
    double spacing = 10,
    int crossAxisCount = 2,
  }) {
    return CrownGridViewStyle(
      backgroundColor: backgroundColor,
      padding: EdgeInsets.all(padding),
      itemPadding: EdgeInsets.all(8),
      spacing: spacing,
      runSpacing: spacing,
      borderRadius: 12,
      crossAxisCount: crossAxisCount,
      childAspectRatio: 1.0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }

  /// Three column grid
  factory CrownGridViewStyle.threeColumn({
    Color? backgroundColor,
    double padding = 16,
    double spacing = 12,
  }) {
    return CrownGridViewStyle(
      backgroundColor: backgroundColor,
      padding: EdgeInsets.all(padding),
      itemPadding: EdgeInsets.all(6),
      spacing: spacing,
      runSpacing: spacing,
      crossAxisCount: 3,
      childAspectRatio: 0.9,
      shrinkWrap: false,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }

  /// Compact style with minimal spacing
  factory CrownGridViewStyle.compact({
    Color? backgroundColor,
    int crossAxisCount = 2,
  }) {
    return CrownGridViewStyle(
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.all(8),
      itemPadding: const EdgeInsets.all(4),
      spacing: 4,
      runSpacing: 4,
      crossAxisCount: crossAxisCount,
      childAspectRatio: 1.0,
      shrinkWrap: false,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }

  CrownGridViewStyle copyWith({
    Color? backgroundColor,
    EdgeInsets? padding,
    EdgeInsets? itemPadding,
    double? spacing,
    double? runSpacing,
    double? borderRadius,
    int? crossAxisCount,
    double? childAspectRatio,
    bool? shrinkWrap,
    ScrollPhysics? physics,
    Axis? scrollDirection,
  }) {
    return CrownGridViewStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
      itemPadding: itemPadding ?? this.itemPadding,
      spacing: spacing ?? this.spacing,
      runSpacing: runSpacing ?? this.runSpacing,
      borderRadius: borderRadius ?? this.borderRadius,
      crossAxisCount: crossAxisCount ?? this.crossAxisCount,
      childAspectRatio: childAspectRatio ?? this.childAspectRatio,
      shrinkWrap: shrinkWrap ?? this.shrinkWrap,
      physics: physics ?? this.physics,
      scrollDirection: scrollDirection ?? this.scrollDirection,
    );
  }
}
