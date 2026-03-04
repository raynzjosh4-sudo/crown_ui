import 'package:flutter/material.dart';

class CrownListViewStyle {
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? itemPadding;
  final double? spacing;
  final double? borderRadius;
  final Axis scrollDirection;
  final bool shrinkWrap;
  final bool reverse;
  final ScrollPhysics? physics;

  const CrownListViewStyle({
    this.backgroundColor,
    this.padding,
    this.itemPadding,
    this.spacing,
    this.borderRadius,
    this.scrollDirection = Axis.vertical,
    this.shrinkWrap = false,
    this.reverse = false,
    this.physics,
  });

  /// Default style
  factory CrownListViewStyle.defaultStyle() {
    return const CrownListViewStyle(
      backgroundColor: null,
      padding: EdgeInsets.zero,
      itemPadding: EdgeInsets.zero,
      spacing: 8,
      borderRadius: 0,
      scrollDirection: Axis.vertical,
      shrinkWrap: false,
      reverse: false,
      physics: BouncingScrollPhysics(),
    );
  }

  /// Padded style with spacing
  factory CrownListViewStyle.padded({
    Color? backgroundColor,
    double padding = 16,
    double spacing = 12,
    double itemPadding = 8,
  }) {
    return CrownListViewStyle(
      backgroundColor: backgroundColor,
      padding: EdgeInsets.all(padding),
      itemPadding: EdgeInsets.all(itemPadding),
      spacing: spacing,
      scrollDirection: Axis.vertical,
      shrinkWrap: false,
      physics: const BouncingScrollPhysics(),
    );
  }

  /// Card style with rounded corners
  factory CrownListViewStyle.card({
    Color? backgroundColor,
    double padding = 12,
    double spacing = 10,
  }) {
    return CrownListViewStyle(
      backgroundColor: backgroundColor,
      padding: EdgeInsets.all(padding),
      itemPadding: EdgeInsets.all(8),
      spacing: spacing,
      borderRadius: 12,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }

  /// Horizontal scrolling style
  factory CrownListViewStyle.horizontal({
    Color? backgroundColor,
    double padding = 16,
    double spacing = 12,
  }) {
    return CrownListViewStyle(
      backgroundColor: backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: padding),
      itemPadding: const EdgeInsets.symmetric(horizontal: 8),
      spacing: spacing,
      scrollDirection: Axis.horizontal,
      shrinkWrap: false,
      physics: const BouncingScrollPhysics(),
    );
  }

  /// Compact style with minimal spacing
  factory CrownListViewStyle.compact({
    Color? backgroundColor,
  }) {
    return CrownListViewStyle(
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.all(8),
      itemPadding: const EdgeInsets.all(4),
      spacing: 4,
      scrollDirection: Axis.vertical,
      shrinkWrap: false,
      physics: const BouncingScrollPhysics(),
    );
  }

  CrownListViewStyle copyWith({
    Color? backgroundColor,
    EdgeInsets? padding,
    EdgeInsets? itemPadding,
    double? spacing,
    double? borderRadius,
    Axis? scrollDirection,
    bool? shrinkWrap,
    bool? reverse,
    ScrollPhysics? physics,
  }) {
    return CrownListViewStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
      itemPadding: itemPadding ?? this.itemPadding,
      spacing: spacing ?? this.spacing,
      borderRadius: borderRadius ?? this.borderRadius,
      scrollDirection: scrollDirection ?? this.scrollDirection,
      shrinkWrap: shrinkWrap ?? this.shrinkWrap,
      reverse: reverse ?? this.reverse,
      physics: physics ?? this.physics,
    );
  }
}
