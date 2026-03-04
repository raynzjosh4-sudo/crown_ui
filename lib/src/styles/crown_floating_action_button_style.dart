import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

class CrownFloatingActionButtonStyle {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final double? iconSize;
  final IconData? icon;
  final bool mini;
  final ShapeBorder? shape;

  const CrownFloatingActionButtonStyle({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.iconSize,
    this.icon,
    this.mini = false,
    this.shape,
  });

  factory CrownFloatingActionButtonStyle.defaultStyle(CrownThemeData? theme) {
    return CrownFloatingActionButtonStyle(
      backgroundColor: theme?.colors.primary ?? Colors.blue,
      foregroundColor: Colors.white,
      elevation: 6.0,
      iconSize: 24.0,
      icon: Icons.add,
      mini: false,
      shape: const CircleBorder(),
    );
  }

  factory CrownFloatingActionButtonStyle.extended({
    required String label,
    required IconData icon,
    Color? backgroundColor,
    Color? foregroundColor,
  }) {
    return CrownFloatingActionButtonStyle(
      backgroundColor: backgroundColor ?? Colors.blue,
      foregroundColor: foregroundColor ?? Colors.white,
      elevation: 6.0,
      iconSize: 24.0,
      icon: icon,
      mini: false,
      shape: const CircleBorder(),
    );
  }

  factory CrownFloatingActionButtonStyle.mini() {
    return const CrownFloatingActionButtonStyle(
      backgroundColor: null,
      foregroundColor: null,
      elevation: 6.0,
      iconSize: 18.0,
      icon: Icons.add,
      mini: true,
      shape: CircleBorder(),
    );
  }

  CrownFloatingActionButtonStyle copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    double? elevation,
    double? iconSize,
    IconData? icon,
    bool? mini,
    ShapeBorder? shape,
  }) {
    return CrownFloatingActionButtonStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      elevation: elevation ?? this.elevation,
      iconSize: iconSize ?? this.iconSize,
      icon: icon ?? this.icon,
      mini: mini ?? this.mini,
      shape: shape ?? this.shape,
    );
  }
}
