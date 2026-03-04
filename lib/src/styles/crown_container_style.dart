import 'package:flutter/material.dart';

class CrownContainerStyle {
  final Color? backgroundColor;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final double? width;
  final double? height;

  const CrownContainerStyle({
    this.backgroundColor,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.borderRadius = 8.0,
    this.border,
    this.boxShadow,
    this.width,
    this.height,
  });

  factory CrownContainerStyle.defaultStyle() {
    return const CrownContainerStyle(
      backgroundColor: null,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      borderRadius: 8.0,
      border: null,
      boxShadow: null,
      width: null,
      height: null,
    );
  }

  factory CrownContainerStyle.padded({
    Color? backgroundColor,
    double padding = 16.0,
  }) {
    return CrownContainerStyle(
      backgroundColor: backgroundColor,
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.zero,
      borderRadius: 8.0,
    );
  }

  factory CrownContainerStyle.card({
    Color? backgroundColor,
  }) {
    return CrownContainerStyle(
      backgroundColor: backgroundColor ?? Colors.white,
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(8.0),
      borderRadius: 12.0,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withAlpha(26),
          blurRadius: 6,
          offset: const Offset(0, 2),
        ),
      ],
    );
  }

  factory CrownContainerStyle.rounded({
    Color? backgroundColor,
    double radius = 16.0,
  }) {
    return CrownContainerStyle(
      backgroundColor: backgroundColor,
      borderRadius: radius,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
    );
  }

  factory CrownContainerStyle.bordered({
    Color? backgroundColor,
    Color? borderColor,
    double borderWidth = 1.0,
  }) {
    return CrownContainerStyle(
      backgroundColor: backgroundColor,
      border: Border.all(
        color: borderColor ?? Colors.grey,
        width: borderWidth,
      ),
      borderRadius: 8.0,
    );
  }

  CrownContainerStyle copyWith({
    Color? backgroundColor,
    EdgeInsets? padding,
    EdgeInsets? margin,
    double? borderRadius,
    BoxBorder? border,
    List<BoxShadow>? boxShadow,
    double? width,
    double? height,
  }) {
    return CrownContainerStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
      margin: margin ?? this.margin,
      borderRadius: borderRadius ?? this.borderRadius,
      border: border ?? this.border,
      boxShadow: boxShadow ?? this.boxShadow,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }
}
