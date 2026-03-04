import 'package:flutter/material.dart';
import '../styles/crown_spinner_style.dart';
import '../theme/crown_theme.dart';

/// A themed circular progress indicator component
///
/// Provides a simple wrapper around Flutter's CircularProgressIndicator
/// with Crown theme styling and customization options.
class CrownSpinner extends StatelessWidget {
  /// The progress value (0.0 to 1.0)
  /// If null, shows indeterminate progress
  final double? value;

  /// Custom style for the spinner
  final CrownSpinnerStyle? customStyle;

  /// Size of the spinner
  final double? size;

  /// Stroke width for the spinner
  final double? strokeWidth;

  const CrownSpinner({
    Key? key,
    this.value,
    this.customStyle,
    this.size,
    this.strokeWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownSpinnerStyle.defaultStyle(theme);

    return SizedBox(
      width: size ?? style.size,
      height: size ?? style.size,
      child: CircularProgressIndicator(
        value: value,
        strokeWidth: strokeWidth ?? style.strokeWidth,
        valueColor: AlwaysStoppedAnimation<Color>(style.valueColor),
        backgroundColor: style.backgroundColor,
      ),
    );
  }
}
