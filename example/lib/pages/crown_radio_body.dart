import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownRadio example page body
class CrownRadioBody extends PageBody {
  const CrownRadioBody();

  @override
  Widget build(CrownThemeData theme) {
    return _RadioExample();
  }
}

class _RadioExample extends CrownStatefulWidget {
  String _selectedOptions = 'option1';
  String _largeSelected = 'large1';
  String _smallSelected = 'small1';

  _RadioExample({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context) {
    final theme = CrownTheme.of(context);

    return CrownScaffold(
      body: CrownSingleChildScrollView(
        style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
        child: CrownPadding(
          style: CrownPaddingStyle.defaultStyle(theme),
          child: CrownColumn(
            style: CrownColumnStyle.start(),
            children: [
              CrownText(
                'Radio Button Component',
                style: ComponentStyles.sectionHeaderText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
              ),
              CrownText(
                'Single selection control for radio buttons',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Default Radio Buttons
              CrownText(
                'Default Radio Buttons',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(theme),
                  child: CrownColumn(
                    style: CrownColumnStyle.start(),
                    children: [
                      _buildRadioOption(
                        theme,
                        'Option 1',
                        'option1',
                        _selectedOptions,
                        (value) => callSetState(() => _selectedOptions = value),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      _buildRadioOption(
                        theme,
                        'Option 2',
                        'option2',
                        _selectedOptions,
                        (value) => callSetState(() => _selectedOptions = value),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      _buildRadioOption(
                        theme,
                        'Option 3',
                        'option3',
                        _selectedOptions,
                        (value) => callSetState(() => _selectedOptions = value),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                      ),
                      CrownText(
                        'Selected: $_selectedOptions',
                        style: ComponentStyles.cardDescriptionText(theme),
                      ),
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Large Radio Buttons
              CrownText(
                'Large Radio Buttons',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(theme),
                  child: CrownColumn(
                    style: CrownColumnStyle.start(),
                    children: [
                      _buildRadioOption(
                        theme,
                        'Large Option 1',
                        'large1',
                        _largeSelected,
                        (value) => callSetState(() => _largeSelected = value),
                        style: CrownRadioStyle.large(),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      _buildRadioOption(
                        theme,
                        'Large Option 2',
                        'large2',
                        _largeSelected,
                        (value) => callSetState(() => _largeSelected = value),
                        style: CrownRadioStyle.large(),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                      ),
                      CrownText(
                        'Selected: $_largeSelected',
                        style: ComponentStyles.cardDescriptionText(theme),
                      ),
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Small Radio Buttons
              CrownText(
                'Small Radio Buttons',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownCard(
                customStyle: ComponentStyles.glassmorphismCard(theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(theme),
                  child: CrownColumn(
                    style: CrownColumnStyle.start(),
                    children: [
                      _buildRadioOption(
                        theme,
                        'Small Option 1',
                        'small1',
                        _smallSelected,
                        (value) => callSetState(() => _smallSelected = value),
                        style: CrownRadioStyle.small(),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      _buildRadioOption(
                        theme,
                        'Small Option 2',
                        'small2',
                        _smallSelected,
                        (value) => callSetState(() => _smallSelected = value),
                        style: CrownRadioStyle.small(),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                      ),
                      CrownText(
                        'Selected: $_smallSelected',
                        style: ComponentStyles.cardDescriptionText(theme),
                      ),
                    ],
                  ),
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRadioOption(
    CrownThemeData theme,
    String label,
    String value,
    String groupValue,
    ValueChanged<String> onChanged, {
    CrownRadioStyle? style,
  }) {
    return CrownRow(
      style: CrownRowStyle.start(),
      children: [
        CrownRadio<String>(
          value: value,
          groupValue: groupValue,
          onChanged: (value) => onChanged(value ?? ''),
          style: style,
          activeColor: theme.colors.primary,
          inactiveColor: theme.colors.border,
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.horizontal(theme.spacing.md),
        ),
        CrownText(
          label,
          style: ComponentStyles.listTileTitleText(theme),
        ),
      ],
    );
  }
}
