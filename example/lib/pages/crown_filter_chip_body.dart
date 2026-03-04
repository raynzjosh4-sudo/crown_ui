import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownFilterChip example page body
class CrownFilterChipBody extends PageBody {
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
                    'Filter Chip Component',
                    style: ComponentStyles.sectionHeaderText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                  ),
                  CrownText(
                    'Chips for filtering options with toggle states',
                    style: ComponentStyles.subtitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Default Filter Chips
                  CrownText(
                    'Default Filter Chips',
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
                        CrownFilterChip(
                          'All',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownFilterChipStyle.defaultStyle(theme),
                        ),
                        CrownFilterChip(
                          'Active',
                          selected: true,
                          onSelected: (bool value) {},
                          customStyle: CrownFilterChipStyle.defaultStyle(theme),
                        ),
                        CrownFilterChip(
                          'Archived',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownFilterChipStyle.defaultStyle(theme),
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Filled Filter Chips
                  CrownText(
                    'Filled Filter Chips',
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
                        CrownFilterChip(
                          'Small',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownFilterChipStyle.filled(theme),
                        ),
                        CrownFilterChip(
                          'Medium',
                          selected: true,
                          onSelected: (bool value) {},
                          customStyle: CrownFilterChipStyle.filled(theme),
                        ),
                        CrownFilterChip(
                          'Large',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownFilterChipStyle.filled(theme),
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Outlined Filter Chips
                  CrownText(
                    'Outlined Filter Chips',
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
                        CrownFilterChip(
                          'Red',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownFilterChipStyle.outlined(theme),
                        ),
                        CrownFilterChip(
                          'Blue',
                          selected: true,
                          onSelected: (bool value) {},
                          customStyle: CrownFilterChipStyle.outlined(theme),
                        ),
                        CrownFilterChip(
                          'Green',
                          selected: false,
                          onSelected: (bool value) {},
                          customStyle: CrownFilterChipStyle.outlined(theme),
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
