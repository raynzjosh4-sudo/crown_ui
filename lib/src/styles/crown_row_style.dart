import 'package:flutter/material.dart';

class CrownRowStyle {
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;

  const CrownRowStyle({
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
  });

  factory CrownRowStyle.defaultStyle() {
    return const CrownRowStyle(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      verticalDirection: VerticalDirection.down,
    );
  }

  factory CrownRowStyle.center() {
    return const CrownRowStyle(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
    );
  }

  factory CrownRowStyle.spaceBetween() {
    return const CrownRowStyle(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
    );
  }

  factory CrownRowStyle.spaceEvenly() {
    return const CrownRowStyle(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
    );
  }

  factory CrownRowStyle.start() {
    return const CrownRowStyle(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
    );
  }

  CrownRowStyle copyWith({
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisSize? mainAxisSize,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
  }) {
    return CrownRowStyle(
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
      mainAxisSize: mainAxisSize ?? this.mainAxisSize,
      textDirection: textDirection ?? this.textDirection,
      verticalDirection: verticalDirection ?? this.verticalDirection,
    );
  }
}
