import 'package:flutter/material.dart';
import '../styles/crown_progress_bar_style.dart';
import '../theme/crown_theme.dart';

/// A themed linear progress indicator component
///
/// Provides a simple wrapper around Flutter's LinearProgressIndicator
/// with Crown theme styling and customization options.
class CrownProgressBar extends StatelessWidget {
  /// The progress value (0.0 to 1.0)
  /// If null, shows indeterminate progress
  final double? value;

  /// Custom style for the progress bar
  final CrownProgressBarStyle? customStyle;

  /// Minimum value for progress (default: 0.0)
  final double minValue;

  /// Maximum value for progress (default: 100.0)
  final double maxValue;

  /// Height of the progress bar
  final double? height;

  const CrownProgressBar({
    Key? key,
    this.value,
    this.customStyle,
    this.minValue = 0.0,
    this.maxValue = 100.0,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownProgressBarStyle.defaultStyle(theme);

    // Normalize value if provided
    double? normalizedValue;
    if (value != null) {
      normalizedValue = (value! - minValue) / (maxValue - minValue);
      normalizedValue = normalizedValue.clamp(0.0, 1.0);
    }

    return Container(
      height: height ?? style.height,
      decoration: BoxDecoration(
        color: style.backgroundColor,
        borderRadius: BorderRadius.circular(style.borderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(style.borderRadius),
        child: LinearProgressIndicator(
          value: normalizedValue,
          minHeight: height ?? style.height,
          backgroundColor: Colors.transparent,
          valueColor: AlwaysStoppedAnimation<Color>(style.valueColor),
        ),
      ),
    );
  }
}
