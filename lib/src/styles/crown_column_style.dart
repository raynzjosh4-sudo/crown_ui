import 'package:flutter/material.dart';

class CrownColumnStyle {
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;

  const CrownColumnStyle({
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
  });

  factory CrownColumnStyle.defaultStyle() {
    return const CrownColumnStyle(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      verticalDirection: VerticalDirection.down,
    );
  }

  factory CrownColumnStyle.center() {
    return const CrownColumnStyle(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
    );
  }

  factory CrownColumnStyle.spaceBetween() {
    return const CrownColumnStyle(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
    );
  }

  factory CrownColumnStyle.start() {
    return const CrownColumnStyle(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
    );
  }

  CrownColumnStyle copyWith({
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisSize? mainAxisSize,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
  }) {
    return CrownColumnStyle(
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
      mainAxisSize: mainAxisSize ?? this.mainAxisSize,
      textDirection: textDirection ?? this.textDirection,
      verticalDirection: verticalDirection ?? this.verticalDirection,
    );
  }
}
