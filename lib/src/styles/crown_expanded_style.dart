import 'package:flutter/material.dart';

class CrownExpandedStyle {
  final int flex;

  const CrownExpandedStyle({
    this.flex = 1,
  });

  factory CrownExpandedStyle.defaultStyle() {
    return const CrownExpandedStyle(flex: 1);
  }

  factory CrownExpandedStyle.flex(int flex) {
    return CrownExpandedStyle(flex: flex);
  }

  CrownExpandedStyle copyWith({
    int? flex,
  }) {
    return CrownExpandedStyle(
      flex: flex ?? this.flex,
    );
  }
}
