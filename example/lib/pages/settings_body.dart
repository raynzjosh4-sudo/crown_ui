import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// Settings page body
class SettingsBody extends PageBody {
  Widget build(CrownThemeData theme) {
    return CrownSingleChildScrollView(
      style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText.heading('Settings', color: theme.colors.primary),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
            CrownCard(
              customStyle: ComponentStyles.statementCard(theme),
              child: CrownColumn(
                style: CrownColumnStyle.start(),
                children: [
                  CrownText.subheading('App Preferences',
                      color: theme.colors.primary),
                  CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
                  _setting(theme, 'Dark Mode', 'Currently enabled'),
                  CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
                  _setting(theme, 'Notifications', 'On'),
                  CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
                  _setting(theme, 'Language', 'English'),
                ],
              ),
            ),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
            CrownButton(
              'Save Settings',
              onPressed: () {},
              customStyle: ComponentStyles.largeActionButton(theme),
            ),
          ],
        ),
      ),
    );
  }

  Widget _setting(CrownThemeData theme, String title, String value) {
    return CrownRow(
      style: CrownRowStyle.spaceBetween(),
      children: [
        CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText.subheading(title, color: theme.colors.textPrimary),
            CrownText.caption(value, color: theme.colors.textSecondary),
          ],
        ),
        CrownIcon(Icons.chevron_right, color: theme.colors.textSecondary),
      ],
    );
  }
}
