import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// Styles page body
class StylesBody extends PageBody {
  Widget build(CrownThemeData theme) {
    return CrownSingleChildScrollView(
      style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: _buildContent(theme),
      ),
    );
  }

  Widget _buildContent(CrownThemeData theme) {
    const checkbox1 = true;
    const checkbox2 = false;
    const checkbox3 = true;

    return CrownColumn(
      style: CrownColumnStyle.start(),
      children: [
        CrownText.heading('Button Styles', color: theme.colors.primary),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        CrownButton('Premium',
            onPressed: () {},
            customStyle: ComponentStyles.premiumButton(theme)),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        CrownButton('Soft',
            onPressed: () {}, customStyle: ComponentStyles.softButton(theme)),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        CrownButton('Minimalist',
            onPressed: () {},
            customStyle: ComponentStyles.minimalistButton(theme)),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
        CrownText.heading('Icon Button Styles', color: theme.colors.primary),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        CrownRow(
          style: CrownRowStyle.center(),
          children: [
            CrownIconButton(
              icon: Icons.settings,
              onPressed: () {},
              style: CrownIconButtonStyle.defaultStyle(),
            ),
            CrownSizedBox(
                style: CrownSizedBoxStyle.horizontal(theme.spacing.md)),
            CrownIconButton(
              icon: Icons.add,
              onPressed: () {},
              style: CrownIconButtonStyle.large(),
            ),
            CrownSizedBox(
                style: CrownSizedBoxStyle.horizontal(theme.spacing.md)),
            CrownIconButton(
              icon: Icons.delete,
              onPressed: () {},
              style: CrownIconButtonStyle.filled(
                backgroundColor: theme.colors.error.withAlpha(127),
                iconColor: theme.colors.error,
              ),
            ),
          ],
        ),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
        CrownText.heading('Checkbox Styles', color: theme.colors.primary),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        CrownRow(
          style: CrownRowStyle.center(),
          children: [
            CrownColumn(
              style: CrownColumnStyle.center(),
              children: [
                CrownCheckbox(
                  value: checkbox1,
                  onChanged: (value) {},
                  style: CrownCheckboxStyle.iphone(),
                ),
                CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm)),
                CrownText.caption('iPhone Style',
                    color: theme.colors.textSecondary),
              ],
            ),
            CrownSizedBox(
                style: CrownSizedBoxStyle.horizontal(theme.spacing.lg)),
            CrownColumn(
              style: CrownColumnStyle.center(),
              children: [
                CrownCheckbox(
                  value: checkbox2,
                  onChanged: (value) {},
                  style: CrownCheckboxStyle.large(),
                ),
                CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm)),
                CrownText.caption('Large', color: theme.colors.textSecondary),
              ],
            ),
            CrownSizedBox(
                style: CrownSizedBoxStyle.horizontal(theme.spacing.lg)),
            CrownColumn(
              style: CrownColumnStyle.center(),
              children: [
                CrownCheckbox(
                  value: checkbox3,
                  onChanged: (value) {},
                  style: CrownCheckboxStyle.small(),
                ),
                CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm)),
                CrownText.caption('Small', color: theme.colors.textSecondary),
              ],
            ),
          ],
        ),
        CrownColumn(children: [
          CrownSwitch(
              value: false,
              onChanged: (value) {
                value = true;
              },
              style: CrownSwitchStyle.ios()),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.sm)),
          CrownSwitch(
              value: false,
              onChanged: (value) {
                value = true;
              },
              style: CrownSwitchStyle.android()),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.sm)),
          CrownSwitch(
              value: false,
              onChanged: (value) {
                value = true;
              },
              style: CrownSwitchStyle.windows()),
        ]),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
        CrownText.heading('Switch Styles', color: theme.colors.primary),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        _buildSwitchSection(theme),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
        CrownText.heading('Date Picker Styles', color: theme.colors.primary),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        _buildDatePickerSection(theme),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
        CrownText.heading('Card Styles', color: theme.colors.primary),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        CrownCard(
          customStyle: ComponentStyles.glassmorphismCard(theme),
          child: CrownText.body('Glassmorphism Card',
              color: theme.colors.textPrimary),
        ),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        CrownCard(
          customStyle: ComponentStyles.gradientBorderCard(theme),
          child: CrownText.body('Gradient Border Card',
              color: theme.colors.textPrimary),
        ),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        CrownCard(
          customStyle: ComponentStyles.compactCard(theme),
          child:
              CrownText.body('Compact Card', color: theme.colors.textPrimary),
        ),
      ],
    );
  }

  Widget _buildSwitchSection(CrownThemeData theme) {
    return CrownColumn(
      style: CrownColumnStyle.start(),
      children: [
        _switchRow(
          theme,
          'iOS Style',
          CrownSwitchStyle.ios(),
        ),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        _switchRow(
          theme,
          'Android Style',
          CrownSwitchStyle.android(),
        ),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        _switchRow(
          theme,
          'Windows Style',
          CrownSwitchStyle.windows(),
        ),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        _switchRow(
          theme,
          'Linux Style',
          CrownSwitchStyle.linux(),
        ),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        _switchRow(
          theme,
          'Dark Mode',
          CrownSwitchStyle.dark(),
        ),
      ],
    );
  }

  Widget _switchRow(
    CrownThemeData theme,
    String label,
    CrownSwitchStyle style,
  ) {
    return CrownRow(
      style: CrownRowStyle.spaceBetween(),
      children: [
        CrownText.body(label, color: theme.colors.textPrimary),
        CrownSwitch(
          value: false,
          style: style,
          onChanged: (value) {},
        ),
      ],
    );
  }

  Widget _buildDatePickerSection(CrownThemeData theme) {
    return CrownColumn(
      style: CrownColumnStyle.start(),
      children: [
        _datePickerCard(theme, 'iOS Style', CrownDatePickerStyle.ios()),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        _datePickerCard(theme, 'Android Style', CrownDatePickerStyle.android()),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        _datePickerCard(theme, 'Windows Style', CrownDatePickerStyle.windows()),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        _datePickerCard(theme, 'Linux Style', CrownDatePickerStyle.linux()),
        CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
        _datePickerCard(theme, 'Dark Mode', CrownDatePickerStyle.dark()),
      ],
    );
  }

  Widget _datePickerCard(
    CrownThemeData theme,
    String label,
    CrownDatePickerStyle style,
  ) {
    return CrownCard(
      customStyle: ComponentStyles.compactCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText.subheading(label, color: theme.colors.primary),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownDatePicker(
            selectedDate: DateTime.now(),
            style: style,
            onDateSelected: (date) {},
          ),
        ],
      ),
    );
  }
}
