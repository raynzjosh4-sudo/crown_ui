import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';

class CrownStepperStyle {
  final Color? backgroundColor;
  final Color? activeColor;
  final Color? inactiveColor;
  final double? elevation;
  final EdgeInsets? contentPadding;
  final StepperType? stepperType;

  const CrownStepperStyle({
    this.backgroundColor,
    this.activeColor,
    this.inactiveColor,
    this.elevation,
    this.contentPadding,
    this.stepperType,
  });

  factory CrownStepperStyle.defaultStyle(CrownThemeData theme) {
    return CrownStepperStyle(
      backgroundColor: theme.colors.surface,
      activeColor: theme.colors.primary,
      inactiveColor: theme.colors.textSecondary,
      elevation: 0,
      contentPadding: const EdgeInsets.all(24),
      stepperType: StepperType.vertical,
    );
  }

  factory CrownStepperStyle.horizontal(CrownThemeData theme) {
    return CrownStepperStyle(
      backgroundColor: theme.colors.surface,
      activeColor: theme.colors.primary,
      inactiveColor: theme.colors.textSecondary,
      elevation: 0,
      contentPadding: const EdgeInsets.all(24),
      stepperType: StepperType.horizontal,
    );
  }

  factory CrownStepperStyle.vertical(CrownThemeData theme) {
    return CrownStepperStyle(
      backgroundColor: theme.colors.surface,
      activeColor: theme.colors.primary,
      inactiveColor: theme.colors.textSecondary,
      elevation: 0,
      contentPadding: const EdgeInsets.all(24),
      stepperType: StepperType.vertical,
    );
  }

  CrownStepperStyle copyWith({
    Color? backgroundColor,
    Color? activeColor,
    Color? inactiveColor,
    double? elevation,
    EdgeInsets? contentPadding,
    StepperType? stepperType,
  }) {
    return CrownStepperStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      activeColor: activeColor ?? this.activeColor,
      inactiveColor: inactiveColor ?? this.inactiveColor,
      elevation: elevation ?? this.elevation,
      contentPadding: contentPadding ?? this.contentPadding,
      stepperType: stepperType ?? this.stepperType,
    );
  }
}
