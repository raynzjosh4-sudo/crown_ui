import 'package:flutter/material.dart';

class CrownSizedBoxStyle {
  final double? width;
  final double? height;

  const CrownSizedBoxStyle({
    this.width,
    this.height,
  });

  factory CrownSizedBoxStyle.defaultStyle() {
    return const CrownSizedBoxStyle(width: null, height: null);
  }

  factory CrownSizedBoxStyle.xs() {
    return const CrownSizedBoxStyle(width: 4, height: 4);
  }

  factory CrownSizedBoxStyle.sm() {
    return const CrownSizedBoxStyle(width: 8, height: 8);
  }

  factory CrownSizedBoxStyle.md() {
    return const CrownSizedBoxStyle(width: 16, height: 16);
  }

  factory CrownSizedBoxStyle.lg() {
    return const CrownSizedBoxStyle(width: 24, height: 24);
  }

  factory CrownSizedBoxStyle.xl() {
    return const CrownSizedBoxStyle(width: 32, height: 32);
  }

  factory CrownSizedBoxStyle.x2l() {
    return const CrownSizedBoxStyle(width: 48, height: 48);
  }

  factory CrownSizedBoxStyle.x3l() {
    return const CrownSizedBoxStyle(width: 64, height: 64);
  }

  factory CrownSizedBoxStyle.horizontal(double width) {
    return CrownSizedBoxStyle(width: width, height: null);
  }

  factory CrownSizedBoxStyle.vertical(double height) {
    return CrownSizedBoxStyle(width: null, height: height);
  }

  CrownSizedBoxStyle copyWith({
    double? width,
    double? height,
  }) {
    return CrownSizedBoxStyle(
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }
}
