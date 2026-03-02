import 'package:flutter/material.dart';
import '../tokens/crown_colors.dart';
import '../tokens/crown_typography.dart';
import '../tokens/crown_spacing.dart';
import '../tokens/crown_borders.dart';

class CrownThemeData {
  final CrownColors colors;
  final CrownTypography typography;
  final CrownSpacing spacing;
  final CrownBorders borders;

  const CrownThemeData({required this.colors, required this.typography, required this.spacing, required this.borders});

  factory CrownThemeData.light() {
    return CrownThemeData(colors: CrownColors.light(), typography: CrownTypography.light(), spacing: CrownSpacing.default_(), borders: CrownBorders.default_());
  }

  factory CrownThemeData.dark() {
    return CrownThemeData(colors: CrownColors.dark(), typography: CrownTypography.light(), spacing: CrownSpacing.default_(), borders: CrownBorders.default_());
  }

  CrownThemeData copyWith({CrownColors? colors, CrownTypography? typography, CrownSpacing? spacing, CrownBorders? borders}) {
    return CrownThemeData(colors: colors ?? this.colors, typography: typography ?? this.typography, spacing: spacing ?? this.spacing, borders: borders ?? this.borders);
  }
}
