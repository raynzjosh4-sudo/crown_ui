import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

class CrownSliderBody extends PageBody {
  const CrownSliderBody();

  @override
  Widget build(CrownThemeData theme) {
    return CrownScaffold(
        body: CrownSingleChildScrollView(
      style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            // Header
            CrownText(
              'Slider Component',
              style: ComponentStyles.sectionHeaderText(theme),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
            ),
            CrownText(
              'Interactive range control for selecting values',
              style: ComponentStyles.subtitleText(theme),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),

            // Basic Slider Section
            CrownText(
              'Basic Sliders',
              style: ComponentStyles.cardTitleText(theme),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.md),
            ),

            CrownCard(
              customStyle: ComponentStyles.glassmorphismCard(theme),
              child: CrownPadding(
                style: CrownPaddingStyle.defaultStyle(theme),
                child: _BasicSliderExample(theme: theme),
              ),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),

            // Slider Styles Section
            CrownText(
              'Slider Styles',
              style: ComponentStyles.cardTitleText(theme),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.md),
            ),

            CrownCard(
              customStyle: ComponentStyles.glassmorphismCard(theme),
              child: CrownPadding(
                style: CrownPaddingStyle.defaultStyle(theme),
                child: _SliderStylesExample(theme: theme),
              ),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),

            // Slider with Divisions Section
            CrownText(
              'Slider with Divisions',
              style: ComponentStyles.cardTitleText(theme),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.md),
            ),

            CrownCard(
              customStyle: ComponentStyles.glassmorphismCard(theme),
              child: CrownPadding(
                style: CrownPaddingStyle.defaultStyle(theme),
                child: _DivisionsSliderExample(theme: theme),
              ),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),

            // Range Slider Section
            CrownText(
              'Range Selection',
              style: ComponentStyles.cardTitleText(theme),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.md),
            ),

            CrownCard(
              customStyle: ComponentStyles.glassmorphismCard(theme),
              child: CrownPadding(
                style: CrownPaddingStyle.defaultStyle(theme),
                child: _RangeSliderExample(theme: theme),
              ),
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
          ],
        ),
      ),
    ));
  }
}

class _BasicSliderExample extends StatefulWidget {
  final CrownThemeData theme;

  const _BasicSliderExample({required this.theme});

  @override
  State<_BasicSliderExample> createState() => _BasicSliderExampleState();
}

class _BasicSliderExampleState extends State<_BasicSliderExample> {
  double _value = 50.0;

  @override
  Widget build(BuildContext context) {
    return CrownColumn(
      style: CrownColumnStyle.start(),
      children: [
        CrownText(
          'Basic Slider - Default Style',
          style: ComponentStyles.cardTitleText(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.md),
        ),
        CrownSlider(
          value: _value,
          onChanged: (value) => setState(() => _value = value),
          min: 0.0,
          max: 100.0,
          label: _value.toStringAsFixed(0),
          style: CrownSliderStyle.defaultStyle(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.md),
        ),
        CrownText(
          'Selected Value: ${_value.toStringAsFixed(1)}',
          style: ComponentStyles.listTileTitleText(widget.theme),
        ),
      ],
    );
  }

  CrownThemeData get theme => widget.theme;
}

class _SliderStylesExample extends StatefulWidget {
  final CrownThemeData theme;

  const _SliderStylesExample({required this.theme});

  @override
  State<_SliderStylesExample> createState() => _SliderStylesExampleState();
}

class _SliderStylesExampleState extends State<_SliderStylesExample> {
  double _minimalValue = 30.0;
  double _prominentValue = 70.0;

  @override
  Widget build(BuildContext context) {
    return CrownColumn(
      style: CrownColumnStyle.start(),
      children: [
        // Minimal Style
        CrownText(
          'Minimal Style',
          style: ComponentStyles.cardTitleText(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
        ),
        CrownText(
          'Minimal label, subtle appearance',
          style: ComponentStyles.subtitleText(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.md),
        ),
        CrownSlider(
          value: _minimalValue,
          onChanged: (value) => setState(() => _minimalValue = value),
          min: 0.0,
          max: 100.0,
          style: CrownSliderStyle.minimal(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
        ),

        // Prominent Style
        CrownText(
          'Prominent Style',
          style: ComponentStyles.cardTitleText(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
        ),
        CrownText(
          'Always visible label, bold appearance',
          style: ComponentStyles.subtitleText(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.md),
        ),
        CrownSlider(
          value: _prominentValue,
          onChanged: (value) => setState(() => _prominentValue = value),
          min: 0.0,
          max: 100.0,
          label: _prominentValue.toStringAsFixed(0),
          style: CrownSliderStyle.prominent(widget.theme),
        ),
      ],
    );
  }

  CrownThemeData get theme => widget.theme;
}

class _DivisionsSliderExample extends StatefulWidget {
  final CrownThemeData theme;

  const _DivisionsSliderExample({required this.theme});

  @override
  State<_DivisionsSliderExample> createState() =>
      _DivisionsSliderExampleState();
}

class _DivisionsSliderExampleState extends State<_DivisionsSliderExample> {
  double _discreteValue = 20.0;

  @override
  Widget build(BuildContext context) {
    return CrownColumn(
      style: CrownColumnStyle.start(),
      children: [
        CrownText(
          'Discrete Steps',
          style: ComponentStyles.cardTitleText(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
        ),
        CrownText(
          'Values can only be selected from predefined divisions',
          style: ComponentStyles.subtitleText(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.md),
        ),
        CrownSlider(
          value: _discreteValue,
          onChanged: (value) => setState(() => _discreteValue = value),
          min: 0.0,
          max: 100.0,
          divisions: 5,
          label: _discreteValue.toStringAsFixed(0),
          style: CrownSliderStyle.defaultStyle(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.md),
        ),
        CrownText(
          'Selected: ${_discreteValue.toStringAsFixed(0)} (5 divisions)',
          style: ComponentStyles.listTileTitleText(widget.theme),
        ),
      ],
    );
  }

  CrownThemeData get theme => widget.theme;
}

class _RangeSliderExample extends StatefulWidget {
  final CrownThemeData theme;

  const _RangeSliderExample({required this.theme});

  @override
  State<_RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<_RangeSliderExample> {
  double _minValue = 25.0;
  double _maxValue = 75.0;

  @override
  Widget build(BuildContext context) {
    return CrownColumn(
      style: CrownColumnStyle.start(),
      children: [
        CrownText(
          'Range Slider (Dual Control)',
          style: ComponentStyles.cardTitleText(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
        ),
        CrownText(
          'Select a range with minimum and maximum values',
          style: ComponentStyles.subtitleText(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.md),
        ),

        // Min Slider
        CrownText(
          'Minimum Value',
          style: ComponentStyles.listTileTitleText(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
        ),
        CrownSlider(
          value: _minValue,
          onChanged: (value) {
            if (value <= _maxValue) {
              setState(() => _minValue = value);
            }
          },
          min: 0.0,
          max: 100.0,
          label: _minValue.toStringAsFixed(0),
          style: CrownSliderStyle.defaultStyle(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.md),
        ),

        // Max Slider
        CrownText(
          'Maximum Value',
          style: ComponentStyles.cardDescriptionText(theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
        ),
        CrownSlider(
          value: _maxValue,
          onChanged: (value) {
            if (value >= _minValue) {
              setState(() => _maxValue = value);
            }
          },
          min: 0.0,
          max: 100.0,
          label: _maxValue.toStringAsFixed(0),
          style: CrownSliderStyle.defaultStyle(widget.theme),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.md),
        ),

        // Range Display
        CrownContainer(
          style: CrownContainerStyle.defaultStyle().copyWith(
            backgroundColor: widget.theme.colors.primary.withOpacity(0.1),
            padding: EdgeInsets.all(theme.spacing.md),
          ),
          child: CrownText(
            'Selected Range: ${_minValue.toStringAsFixed(0)} - ${_maxValue.toStringAsFixed(0)}',
            style: ComponentStyles.cardTitleText(widget.theme).copyWith(
              color: widget.theme.colors.primary,
            ),
          ),
        ),
      ],
    );
  }

  CrownThemeData get theme => widget.theme;
}
