import 'package:flutter/material.dart';

class CrownStackStyle {
  final AlignmentGeometry alignment;
  final StackFit fit;
  final Clip clipBehavior;

  const CrownStackStyle({
    this.alignment = Alignment.topLeft,
    this.fit = StackFit.loose,
    this.clipBehavior = Clip.hardEdge,
  });

  factory CrownStackStyle.defaultStyle() {
    return const CrownStackStyle(
      alignment: Alignment.topLeft,
      fit: StackFit.loose,
      clipBehavior: Clip.hardEdge,
    );
  }

  factory CrownStackStyle.center() {
    return const CrownStackStyle(
      alignment: Alignment.center,
      fit: StackFit.loose,
      clipBehavior: Clip.hardEdge,
    );
  }

  factory CrownStackStyle.expand() {
    return const CrownStackStyle(
      alignment: Alignment.center,
      fit: StackFit.expand,
      clipBehavior: Clip.hardEdge,
    );
  }

  factory CrownStackStyle.topCenter() {
    return const CrownStackStyle(
      alignment: Alignment.topCenter,
      fit: StackFit.loose,
      clipBehavior: Clip.hardEdge,
    );
  }

  factory CrownStackStyle.bottomCenter() {
    return const CrownStackStyle(
      alignment: Alignment.bottomCenter,
      fit: StackFit.loose,
      clipBehavior: Clip.hardEdge,
    );
  }

  CrownStackStyle copyWith({
    AlignmentGeometry? alignment,
    StackFit? fit,
    Clip? clipBehavior,
  }) {
    return CrownStackStyle(
      alignment: alignment ?? this.alignment,
      fit: fit ?? this.fit,
      clipBehavior: clipBehavior ?? this.clipBehavior,
    );
  }
}
