import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_stepper_style.dart';

class CrownStepper extends StatelessWidget {
  final int currentStep;
  final List<Step> steps;
  final ValueChanged<int>? onStepTapped;
  final VoidCallback? onStepContinue;
  final VoidCallback? onStepCancel;
  final CrownStepperStyle? style;
  final StepperType? type;
  final EdgeInsetsGeometry? margin;

  const CrownStepper({
    Key? key,
    required this.currentStep,
    required this.steps,
    this.onStepTapped,
    this.onStepContinue,
    this.onStepCancel,
    this.style,
    this.type,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final resolvedStyle = style ?? CrownStepperStyle.defaultStyle(theme);

    return Container(
      margin: margin,
      child: Stepper(
        currentStep: currentStep,
        steps: steps,
        onStepTapped: onStepTapped,
        onStepContinue: onStepContinue,
        onStepCancel: onStepCancel,
        type: type ?? resolvedStyle.stepperType ?? StepperType.vertical,
      ),
    );
  }
}
