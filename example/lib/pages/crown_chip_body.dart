import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownChip example page body
class CrownChipBody extends PageBody {
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
                    'Chip Component',
                    style: ComponentStyles.sectionHeaderText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                  ),
                  CrownText(
                    'Simple chips with optional delete functionality',
                    style: ComponentStyles.subtitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Basic Chips
                  CrownText(
                    'Basic Chip Styles',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCard(
                    customStyle: ComponentStyles.glassmorphismCard(theme),
                    child: Wrap(
                      spacing: theme.spacing.sm,
                      children: [
                        CrownChip(
                          'Default',
                          customStyle: CrownChipStyle.defaultStyle(theme),
                        ),
                        CrownChip(
                          'Filled',
                          customStyle: CrownChipStyle.filled(theme),
                        ),
                        CrownChip(
                          'Outlined',
                          customStyle: CrownChipStyle.outlined(theme),
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Semantic Colors
                  CrownText(
                    'Semantic Colors',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCard(
                    customStyle: ComponentStyles.glassmorphismCard(theme),
                    child: Wrap(
                      spacing: theme.spacing.sm,
                      children: [
                        CrownChip(
                          'Success',
                          customStyle: CrownChipStyle.success(theme),
                        ),
                        CrownChip(
                          'Warning',
                          customStyle: CrownChipStyle.warning(theme),
                        ),
                        CrownChip(
                          'Error',
                          customStyle: CrownChipStyle.error(theme),
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // With Delete Icon
                  CrownText(
                    'Deletable Chips',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCard(
                    customStyle: ComponentStyles.glassmorphismCard(theme),
                    child: Wrap(
                      spacing: theme.spacing.sm,
                      children: [
                        CrownChip(
                          'Remove Me',
                          customStyle: CrownChipStyle.defaultStyle(theme),
                          onDeleted: () {},
                        ),
                        CrownChip(
                          'Delete it',
                          customStyle: CrownChipStyle.filled(theme),
                          onDeleted: () {},
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
