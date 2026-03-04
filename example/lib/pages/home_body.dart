import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// Home page body - separated from the page class
/// Just focus on UI here, no scaffolding needed
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    return _buildContent(theme);
  }

  Widget _buildContent(CrownThemeData theme) {
    return CrownSingleChildScrollView(
      style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText.display('Welcome!', color: theme.colors.primary),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
            CrownText.body('Crown UI makes Flutter development simpler',
                color: theme.colors.textSecondary),
            CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.lg)),
            CrownCard(
              customStyle: ComponentStyles.glassmorphismCard(theme),
              child: CrownColumn(
                style: CrownColumnStyle.start(),
                children: [
                  CrownText.subheading('Features', color: theme.colors.primary),
                  CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
                  _feature(theme, Icons.code, 'Simple',
                      'Easy to write and understand'),
                  CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.sm)),
                  _feature(
                      theme, Icons.palette, 'Beautiful', 'iOS-inspired design'),
                  CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.sm)),
                  _feature(
                      theme, Icons.flash_on, 'Fast', 'Built for performance'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _feature(
      CrownThemeData theme, IconData icon, String title, String desc) {
    return CrownRow(
      style: CrownRowStyle.start(),
      children: [
        CrownIcon(icon, color: theme.colors.primary, size: 20),
        CrownSizedBox(style: CrownSizedBoxStyle.horizontal(theme.spacing.md)),
        CrownExpanded(
          child: CrownColumn(
            style: CrownColumnStyle.start(),
            children: [
              CrownText.subheading(title, color: theme.colors.textPrimary),
              CrownText.caption(desc, color: theme.colors.textSecondary),
            ],
          ),
        ),
      ],
    );
  }
}
