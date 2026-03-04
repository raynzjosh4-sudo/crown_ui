import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownRefreshIndicator example page body
class CrownRefreshIndicatorBody extends PageBody {
  @override
  Widget build(CrownThemeData theme) {
    return Builder(
      builder: (context) {
        return CrownRefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 2));
          },
          child: CrownScaffold(
            body: CrownSingleChildScrollView(
              style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
              child: CrownPadding(
                style: CrownPaddingStyle.defaultStyle(theme),
                child: CrownColumn(
                  style: CrownColumnStyle.start(),
                  children: [
                    CrownText(
                      'Refresh Indicator Component',
                      style: ComponentStyles.sectionHeaderText(theme),
                    ),
                    CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                    ),
                    CrownText(
                      'Pull down to refresh content',
                      style: ComponentStyles.subtitleText(theme),
                    ),
                    CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                    ),
                    CrownCard(
                      customStyle: ComponentStyles.glassmorphismCard(theme),
                      child: CrownColumn(
                        style: CrownColumnStyle.start(),
                        children: [
                          CrownText(
                            'Default Style',
                            style: ComponentStyles.cardTitleText(theme),
                          ),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.md),
                          ),
                          CrownText(
                            'This page uses the default refresh indicator style. Try pulling down from the top to simulate a refresh action.',
                            style: ComponentStyles.cardDescriptionText(theme),
                          ),
                        ],
                      ),
                    ),
                    CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                    ),
                    CrownCard(
                      customStyle: ComponentStyles.glassmorphismCard(theme),
                      child: CrownColumn(
                        style: CrownColumnStyle.start(),
                        children: [
                          CrownText(
                            'Features',
                            style: ComponentStyles.cardTitleText(theme),
                          ),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.md),
                          ),
                          _buildFeatureItem(theme, '✓ Pull to refresh pattern'),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.sm),
                          ),
                          _buildFeatureItem(
                              theme, '✓ Customizable indicator color'),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.sm),
                          ),
                          _buildFeatureItem(theme, '✓ Adjustable displacement'),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.sm),
                          ),
                          _buildFeatureItem(theme, '✓ Multiple style variants'),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.sm),
                          ),
                          _buildFeatureItem(theme, '✓ Smooth animations'),
                        ],
                      ),
                    ),
                    CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                    ),
                    CrownCard(
                      customStyle: ComponentStyles.glassmorphismCard(theme),
                      child: CrownColumn(
                        style: CrownColumnStyle.start(),
                        children: [
                          CrownText(
                            'Usage',
                            style: ComponentStyles.cardTitleText(theme),
                          ),
                          CrownSizedBox(
                            style:
                                CrownSizedBoxStyle.vertical(theme.spacing.md),
                          ),
                          CrownText(
                            'The refresh indicator detects pull gestures and triggers the onRefresh callback. It\'s perfect for list views and scrollable content.',
                            style: ComponentStyles.cardDescriptionText(theme),
                          ),
                        ],
                      ),
                    ),
                    CrownSizedBox(
                      style: CrownSizedBoxStyle.vertical(theme.spacing.xl),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFeatureItem(CrownThemeData theme, String text) {
    return CrownText(
      text,
      style: TextStyle(
        fontSize: 14,
        color: theme.colors.textPrimary,
      ),
    );
  }
}
