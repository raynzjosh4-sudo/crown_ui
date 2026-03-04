import 'package:flutter/material.dart';

class CrownIconButtonStyle {
  final double iconSize;
  final Color? iconColor;
  final Color? backgroundColor;
  final EdgeInsets padding;
  final double? splashRadius;

  const CrownIconButtonStyle({
    this.iconSize = 24,
    this.iconColor,
    this.backgroundColor,
    this.padding = const EdgeInsets.all(8),
    this.splashRadius,
  });

  factory CrownIconButtonStyle.defaultStyle() {
    return const CrownIconButtonStyle(
      iconSize: 24,
      iconColor: null,
      backgroundColor: null,
      padding: EdgeInsets.all(8),
      splashRadius: 24,
    );
  }

  factory CrownIconButtonStyle.small() {
    return const CrownIconButtonStyle(
      iconSize: 18,
      iconColor: null,
      backgroundColor: null,
      padding: EdgeInsets.all(4),
      splashRadius: 18,
    );
  }

  factory CrownIconButtonStyle.large() {
    return const CrownIconButtonStyle(
      iconSize: 32,
      iconColor: null,
      backgroundColor: null,
      padding: EdgeInsets.all(12),
      splashRadius: 32,
    );
  }

  factory CrownIconButtonStyle.filled({
    required Color backgroundColor,
    Color? iconColor,
  }) {
    return CrownIconButtonStyle(
      iconSize: 24,
      iconColor: iconColor,
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.all(8),
      splashRadius: 24,
    );
  }

  CrownIconButtonStyle copyWith({
    double? iconSize,
    Color? iconColor,
    Color? backgroundColor,
    EdgeInsets? padding,
    double? splashRadius,
  }) {
    return CrownIconButtonStyle(
      iconSize: iconSize ?? this.iconSize,
      iconColor: iconColor ?? this.iconColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
      splashRadius: splashRadius ?? this.splashRadius,
    );
  }
}
