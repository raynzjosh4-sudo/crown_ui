import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// Time Picker demo page body
class TimePickerBody extends PageBody {
  @override
  Widget build(CrownThemeData theme) {
    return CrownSingleChildScrollView(
      style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText.display('Time Picker', color: theme.colors.primary),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.md),
            ),
            CrownText.body(
              'Select and customize time with CrownTimePicker',
              color: theme.colors.textSecondary,
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildDefaultTimePicker(theme),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildStyledTimePicker(theme),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildDarkTimePicker(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildDefaultTimePicker(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText.subheading(
            'Default Style',
            color: theme.colors.primary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText.caption(
            'Material Design time picker with platform-specific styling',
            color: theme.colors.textSecondary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownCenter(
            child: CrownTimePicker(
              initialTime: TimeOfDay(hour: 14, minute: 30),
              style: CrownTimePickerStyle.defaultStyle(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStyledTimePicker(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText.subheading(
            'Compact Style',
            color: theme.colors.primary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText.caption(
            'Compact time picker with smaller dimensions',
            color: theme.colors.textSecondary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownCenter(
            child: CrownTimePicker(
              initialTime: TimeOfDay(hour: 9, minute: 15),
              style: CrownTimePickerStyle.compact(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDarkTimePicker(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText.subheading(
            'Dark Style',
            color: theme.colors.primary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText.caption(
            'Dark mode time picker for night usage',
            color: theme.colors.textSecondary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownCenter(
            child: CrownTimePicker(
              initialTime: TimeOfDay(hour: 18, minute: 45),
              style: CrownTimePickerStyle.dark(),
            ),
          ),
        ],
      ),
    );
  }
}
