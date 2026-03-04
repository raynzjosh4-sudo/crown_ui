import 'package:flutter/material.dart';

class CrownRadioStyle {
  final Color? activeColor;
  final Color? inactiveColor;
  final double size;
  final double borderWidth;
  final double innerCircleSize;

  const CrownRadioStyle({
    this.activeColor,
    this.inactiveColor,
    this.size = 24,
    this.borderWidth = 2,
    this.innerCircleSize = 8,
  });

  factory CrownRadioStyle.defaultStyle() {
    return const CrownRadioStyle(
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
      size: 24,
      borderWidth: 2,
      innerCircleSize: 8,
    );
  }

  factory CrownRadioStyle.large() {
    return const CrownRadioStyle(
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
      size: 32,
      borderWidth: 2.5,
      innerCircleSize: 12,
    );
  }

  factory CrownRadioStyle.small() {
    return const CrownRadioStyle(
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
      size: 18,
      borderWidth: 1.5,
      innerCircleSize: 6,
    );
  }

  factory CrownRadioStyle.minimal() {
    return const CrownRadioStyle(
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
      size: 20,
      borderWidth: 1.5,
      innerCircleSize: 7,
    );
  }

  CrownRadioStyle copyWith({
    Color? activeColor,
    Color? inactiveColor,
    double? size,
    double? borderWidth,
    double? innerCircleSize,
  }) {
    return CrownRadioStyle(
      activeColor: activeColor ?? this.activeColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      size: size ?? this.size,
      borderWidth: borderWidth ?? this.borderWidth,
      innerCircleSize: innerCircleSize ?? this.innerCircleSize,
    );
  }
}
