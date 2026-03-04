import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

class CrownDividerStyle {
  final Color? color;
  final double height;
  final double? thickness;
  final double? indent;
  final double? endIndent;

  const CrownDividerStyle({
    this.color,
    this.height = 16,
    this.thickness,
    this.indent,
    this.endIndent,
  });

  factory CrownDividerStyle.defaultStyle(CrownThemeData theme) {
    return CrownDividerStyle(
      color: theme.colors.border,
      height: 16,
      thickness: 1,
    );
  }

  factory CrownDividerStyle.compact(CrownThemeData theme) {
    return CrownDividerStyle(
      color: theme.colors.border,
      height: 8,
      thickness: 1,
    );
  }

  factory CrownDividerStyle.thick(CrownThemeData theme) {
    return CrownDividerStyle(
      color: theme.colors.border,
      height: 20,
      thickness: 2,
    );
  }

  CrownDividerStyle copyWith({
    Color? color,
    double? height,
    double? thickness,
    double? indent,
    double? endIndent,
  }) {
    return CrownDividerStyle(
      color: color ?? this.color,
      height: height ?? this.height,
      thickness: thickness ?? this.thickness,
      indent: indent ?? this.indent,
      endIndent: endIndent ?? this.endIndent,
    );
  }
}
