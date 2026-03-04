import 'package:flutter/material.dart';

class CrownCheckboxStyle {
  final Color? activeColor;
  final Color? checkColor;
  final double size;
  final double borderRadius;
  final double strokeWidth;
  final Color? inactiveColor;

  const CrownCheckboxStyle({
    this.activeColor,
    this.checkColor = Colors.white,
    this.size = 24,
    this.borderRadius = 6,
    this.strokeWidth = 2,
    this.inactiveColor,
  });

  factory CrownCheckboxStyle.defaultStyle() {
    return const CrownCheckboxStyle(
      activeColor: Colors.blue,
      checkColor: Colors.white,
      size: 24,
      borderRadius: 6,
      strokeWidth: 2,
      inactiveColor: Colors.grey,
    );
  }

  factory CrownCheckboxStyle.iphone() {
    return const CrownCheckboxStyle(
      activeColor: Colors.blue,
      checkColor: Colors.white,
      size: 20,
      borderRadius: 5,
      strokeWidth: 2.5,
      inactiveColor: Colors.grey,
    );
  }

  factory CrownCheckboxStyle.large() {
    return const CrownCheckboxStyle(
      activeColor: Colors.blue,
      checkColor: Colors.white,
      size: 32,
      borderRadius: 8,
      strokeWidth: 2.5,
      inactiveColor: Colors.grey,
    );
  }

  factory CrownCheckboxStyle.small() {
    return const CrownCheckboxStyle(
      activeColor: Colors.blue,
      checkColor: Colors.white,
      size: 16,
      borderRadius: 4,
      strokeWidth: 1.5,
      inactiveColor: Colors.grey,
    );
  }

  CrownCheckboxStyle copyWith({
    Color? activeColor,
    Color? checkColor,
    double? size,
    double? borderRadius,
    double? strokeWidth,
    Color? inactiveColor,
  }) {
    return CrownCheckboxStyle(
      activeColor: activeColor ?? this.activeColor,
      checkColor: checkColor ?? this.checkColor,
      size: size ?? this.size,
      borderRadius: borderRadius ?? this.borderRadius,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      inactiveColor: inactiveColor ?? this.inactiveColor,
    );
  }
}
