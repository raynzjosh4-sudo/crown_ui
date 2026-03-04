import 'package:flutter/material.dart';

class CrownDrawerStyle {
  final Color? backgroundColor;
  final EdgeInsets padding;
  final double elevation;
  final Curve animationCurve;
  final Duration animationDuration;

  const CrownDrawerStyle({
    this.backgroundColor,
    this.padding = const EdgeInsets.all(16),
    this.elevation = 16,
    this.animationCurve = Curves.easeInOut,
    this.animationDuration = const Duration(milliseconds: 250),
  });

  factory CrownDrawerStyle.defaultStyle() {
    return const CrownDrawerStyle(
      backgroundColor: null,
      padding: EdgeInsets.all(16),
      elevation: 16,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 250),
    );
  }

  factory CrownDrawerStyle.minimal() {
    return const CrownDrawerStyle(
      backgroundColor: null,
      padding: EdgeInsets.all(8),
      elevation: 0,
      animationCurve: Curves.linear,
      animationDuration: Duration(milliseconds: 300),
    );
  }

  CrownDrawerStyle copyWith({
    Color? backgroundColor,
    EdgeInsets? padding,
    double? elevation,
    Curve? animationCurve,
    Duration? animationDuration,
  }) {
    return CrownDrawerStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
      elevation: elevation ?? this.elevation,
      animationCurve: animationCurve ?? this.animationCurve,
      animationDuration: animationDuration ?? this.animationDuration,
    );
  }
}
