import 'package:flutter/material.dart';

class CrownBorders {
  final BorderRadius radiusSmall;
  final BorderRadius radiusMedium;
  final BorderRadius radiusLarge;
  final BorderRadius radiusXLarge;
  final BorderRadius radiusFull;
  final List<BoxShadow> shadowSmall;
  final List<BoxShadow> shadowMedium;
  final List<BoxShadow> shadowLarge;
  final List<BoxShadow> shadowXLarge;

  const CrownBorders({required this.radiusSmall, required this.radiusMedium, required this.radiusLarge, required this.radiusXLarge, required this.radiusFull, required this.shadowSmall, required this.shadowMedium, required this.shadowLarge, required this.shadowXLarge});

  factory CrownBorders.default_() {
    return CrownBorders(
      radiusSmall: BorderRadius.circular(4),
      radiusMedium: BorderRadius.circular(8),
      radiusLarge: BorderRadius.circular(12),
      radiusXLarge: BorderRadius.circular(16),
      radiusFull: BorderRadius.circular(999),
      shadowSmall: [const BoxShadow(color: Color(0x1A000000), blurRadius: 2, offset: Offset(0, 1))],
      shadowMedium: [const BoxShadow(color: Color(0x1F000000), blurRadius: 8, offset: Offset(0, 4))],
      shadowLarge: [const BoxShadow(color: Color(0x26000000), blurRadius: 16, offset: Offset(0, 8))],
      shadowXLarge: [const BoxShadow(color: Color(0x33000000), blurRadius: 24, offset: Offset(0, 12))],
    );
  }
}
