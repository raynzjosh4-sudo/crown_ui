import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownBadge example page body
class CrownBadgeBody extends PageBody {
  @override
  Widget build(CrownThemeData theme) {
    return Builder(
      builder: (context) {
        return CrownScaffold(
          body: CrownSingleChildScrollView(
            style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
            child: CrownPadding(
              style: CrownPaddingStyle.defaultStyle(theme),
              child: CrownColumn(
                style: CrownColumnStyle.start(),
                children: [
                  CrownText(
                    'Badge Component',
                    style: ComponentStyles.sectionHeaderText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                  ),
                  CrownText(
                    'Badge notifications and indicators',
                    style: ComponentStyles.subtitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Count Badges
                  CrownText(
                    'Count Badges',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCard(
                    customStyle: ComponentStyles.glassmorphismCard(theme),
                    child: CrownRow(
                      style: CrownRowStyle.spaceEvenly(),
                      children: [
                        CrownBadge.count(
                          5,
                          customStyle: CrownBadgeStyle.defaultStyle(theme),
                          offset: const Offset(0, 0),
                        ),
                        CrownBadge.count(
                          12,
                          customStyle: CrownBadgeStyle.success(theme),
                        ),
                        CrownBadge.count(
                          99,
                          customStyle: CrownBadgeStyle.warning(theme),
                        ),
                        CrownBadge.count(
                          100,
                          customStyle: CrownBadgeStyle.info(theme),
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Dot Badges
                  CrownText(
                    'Dot Indicators',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCard(
                    customStyle: ComponentStyles.glassmorphismCard(theme),
                    child: CrownRow(
                      style: CrownRowStyle.spaceEvenly(),
                      children: [
                        CrownBadge.dot(
                          customStyle: CrownBadgeStyle.dot(theme),
                        ),
                        CrownBadge.dot(
                          customStyle: CrownBadgeStyle.success(theme),
                        ),
                        CrownBadge.dot(
                          customStyle: CrownBadgeStyle.warning(theme),
                        ),
                        CrownBadge.dot(
                          customStyle: CrownBadgeStyle.info(theme),
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Badge with Icons
                  CrownText(
                    'Badges with Icons',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCard(
                    customStyle: ComponentStyles.glassmorphismCard(theme),
                    child: CrownRow(
                      style: CrownRowStyle.spaceEvenly(),
                      children: [
                        CrownBadge.count(
                          3,
                          customStyle: CrownBadgeStyle.defaultStyle(theme),
                          offset: const Offset(-5, -5),
                        ),
                        CrownBadge.count(
                          7,
                          customStyle: CrownBadgeStyle.success(theme),
                          offset: const Offset(-5, -5),
                        ),
                        CrownBadge.count(
                          12,
                          customStyle: CrownBadgeStyle.warning(theme),
                          offset: const Offset(-5, -5),
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
        );
      },
    );
  }
}
