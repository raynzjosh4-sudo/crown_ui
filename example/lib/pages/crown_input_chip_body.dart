import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownInputChip example page body
class CrownInputChipBody extends PageBody {
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
                    'Input Chip Component',
                    style: ComponentStyles.sectionHeaderText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                  ),
                  CrownText(
                    'Chips for input fields and selections with delete functionality',
                    style: ComponentStyles.subtitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Default Input Chips
                  CrownText(
                    'Basic Input Chips',
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
                        CrownInputChip(
                          'Apple',
                          customStyle: CrownInputChipStyle.defaultStyle(theme),
                          onDeleted: () {},
                        ),
                        CrownInputChip(
                          'Banana',
                          customStyle: CrownInputChipStyle.defaultStyle(theme),
                          onDeleted: () {},
                        ),
                        CrownInputChip(
                          'Cherry',
                          customStyle: CrownInputChipStyle.defaultStyle(theme),
                          onDeleted: () {},
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Filled Input Chips
                  CrownText(
                    'Filled Input Chips',
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
                        CrownInputChip(
                          'Tag1',
                          customStyle: CrownInputChipStyle.filled(theme),
                          onDeleted: () {},
                        ),
                        CrownInputChip(
                          'Tag2',
                          customStyle: CrownInputChipStyle.filled(theme),
                          onDeleted: () {},
                        ),
                        CrownInputChip(
                          'Tag3',
                          customStyle: CrownInputChipStyle.filled(theme),
                          onDeleted: () {},
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Selected Input Chips
                  CrownText(
                    'Selected Input Chips',
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
                        CrownInputChip(
                          'Selected',
                          selected: true,
                          customStyle: CrownInputChipStyle.defaultStyle(theme),
                          onDeleted: () {},
                        ),
                        CrownInputChip(
                          'Active',
                          selected: true,
                          customStyle: CrownInputChipStyle.filled(theme),
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
