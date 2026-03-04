import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownChoiceChip example page body
class CrownChoiceChipBody extends PageBody {
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
                    'Choice Chip Component',
                    style: ComponentStyles.sectionHeaderText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                  ),
                  CrownText(
                    'Chips for single selection within a group',
                    style: ComponentStyles.subtitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Default Choice Chips
                  CrownText(
                    'Default Choice Chips',
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
                        CrownChoiceChip(
                          'Option 1',
                          selected: true,
                          onSelected: (bool value) {},
                          customStyle: CrownChoiceChipStyle.defaultStyle(theme),
                        ),
                        CrownChoiceChip(
                          'Option 2',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownChoiceChipStyle.defaultStyle(theme),
                        ),
                        CrownChoiceChip(
                          'Option 3',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownChoiceChipStyle.defaultStyle(theme),
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Outlined Choice Chips
                  CrownText(
                    'Outlined Choice Chips',
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
                        CrownChoiceChip(
                          'List View',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownChoiceChipStyle.outlined(theme),
                        ),
                        CrownChoiceChip(
                          'Grid View',
                          selected: true,
                          onSelected: (bool value) {},
                          customStyle: CrownChoiceChipStyle.outlined(theme),
                        ),
                        CrownChoiceChip(
                          'Table View',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownChoiceChipStyle.outlined(theme),
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Filled Choice Chips
                  CrownText(
                    'Filled Choice Chips',
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
                        CrownChoiceChip(
                          'Coffee',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownChoiceChipStyle.filled(theme),
                        ),
                        CrownChoiceChip(
                          'Tea',
                          selected: true,
                          onSelected: (bool value) {},
                          customStyle: CrownChoiceChipStyle.filled(theme),
                        ),
                        CrownChoiceChip(
                          'Water',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownChoiceChipStyle.filled(theme),
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
