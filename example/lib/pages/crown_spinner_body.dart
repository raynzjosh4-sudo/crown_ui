import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownSpinner example page body
class CrownSpinnerBody extends PageBody {
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
                    'Spinner Component',
                    style: ComponentStyles.sectionHeaderText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                  ),
                  CrownText(
                    'Circular progress indicators for loading states',
                    style: ComponentStyles.subtitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Default Spinner
                  CrownText(
                    'Default Spinner',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownSpinner(),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Large Spinner
                  CrownText(
                    'Large Spinner',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownSpinner(
                      customStyle: CrownSpinnerStyle.large(theme),
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Small Spinner
                  CrownText(
                    'Small Spinner',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownSpinner(
                      customStyle: CrownSpinnerStyle.small(theme),
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Determinate Progress (75%)
                  CrownText(
                    'Determinate Progress (75%)',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownSpinner(value: 0.75),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Success Style
                  CrownText(
                    'Success Style',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownSpinner(
                      customStyle: CrownSpinnerStyle.success(theme),
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Warning Style
                  CrownText(
                    'Warning Style',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownSpinner(
                      customStyle: CrownSpinnerStyle.warning(theme),
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Minimal Style
                  CrownText(
                    'Minimal Style',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownSpinner(
                      customStyle: CrownSpinnerStyle.minimal(theme),
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
