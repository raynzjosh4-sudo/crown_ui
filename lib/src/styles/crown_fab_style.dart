import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

class CrownFabStyle {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final double? iconSize;
  final IconData? icon;
  final bool mini;

  const CrownFabStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.iconSize,
    this.icon,
    this.mini = false,
  });

  factory CrownFabStyle.defaultStyle(CrownThemeData theme) {
    return CrownFabStyle(
      backgroundColor: theme.colors.primary,
      foregroundColor: Colors.white,
      elevation: 6.0,
      iconSize: 24.0,
      icon: Icons.add,
      mini: false,
    );
  }

  CrownFabStyle copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    double? elevation,
    double? iconSize,
    IconData? icon,
    bool? mini,
  }) {
    return CrownFabStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      elevation: elevation ?? this.elevation,
      iconSize: iconSize ?? this.iconSize,
      icon: icon ?? this.icon,
      mini: mini ?? this.mini,
    );
  }
}
