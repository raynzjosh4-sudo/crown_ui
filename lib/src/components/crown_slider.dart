import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_slider_style.dart';

class CrownSlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;
  final ValueChanged<double>? onChangeStart;
  final ValueChanged<double>? onChangeEnd;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  final CrownSliderStyle? style;
  final EdgeInsets? margin;

  const CrownSlider({
    Key? key,
    required this.value,
    required this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
    this.min = 0.0,
    this.max = 100.0,
    this.divisions,
    this.label,
    this.style,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final resolvedStyle = style ?? CrownSliderStyle.defaultStyle(theme);

    return Container(
      margin: margin,
      child: SliderTheme(
        data: SliderThemeData(
          trackHeight: resolvedStyle.trackHeight,
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: resolvedStyle.thumbRadius ?? 4.0,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: (resolvedStyle.thumbRadius ?? 4.0) * 1.5,
          ),
        ),
        child: Slider(
          value: value,
          onChanged: onChanged,
          onChangeStart: onChangeStart,
          onChangeEnd: onChangeEnd,
          min: min,
          max: max,
          divisions: divisions,
          label: label,
          activeColor: resolvedStyle.activeColor,
          inactiveColor: resolvedStyle.inactiveColor,
        ),
      ),
    );
  }
}
