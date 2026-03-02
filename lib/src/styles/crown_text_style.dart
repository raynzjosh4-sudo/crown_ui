import 'package:flutter/material.dart';

class CrownTextStyle {
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextDecoration decoration;
  final double? height;
  final FontStyle fontStyle;

  const CrownTextStyle({
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.color,
    this.letterSpacing,
    this.wordSpacing,
    this.decoration = TextDecoration.none,
    this.height,
    this.fontStyle = FontStyle.normal,
  });

  factory CrownTextStyle.display() {
    return const CrownTextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  }

  factory CrownTextStyle.heading() {
    return const CrownTextStyle(fontSize: 24, fontWeight: FontWeight.w700);
  }

  factory CrownTextStyle.subheading() {
    return const CrownTextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  }

  factory CrownTextStyle.body() {
    return const CrownTextStyle(fontSize: 16, fontWeight: FontWeight.w400);
  }

  factory CrownTextStyle.caption() {
    return const CrownTextStyle(fontSize: 12, fontWeight: FontWeight.w400);
  }

  TextStyle toTextStyle() {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      decoration: decoration,
      height: height,
      fontStyle: fontStyle,
    );
  }

  CrownTextStyle copyWith({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? letterSpacing,
    double? wordSpacing,
    TextDecoration? decoration,
    double? height,
    FontStyle? fontStyle,
  }) {
    return CrownTextStyle(
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      color: color ?? this.color,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      decoration: decoration ?? this.decoration,
      height: height ?? this.height,
      fontStyle: fontStyle ?? this.fontStyle,
    );
  }
}
