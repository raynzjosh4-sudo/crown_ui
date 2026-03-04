import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownImage example page body
class CrownImageBody extends PageBody {
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
                    'Image Component',
                    style: ComponentStyles.sectionHeaderText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                  ),
                  CrownText(
                    'Themed image display with loading and error states',
                    style: ComponentStyles.subtitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Square Image
                  CrownText(
                    'Square Image',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownImage(
                      const AssetImage('images/icon_small.png'),
                      customStyle: CrownImageStyle.square(theme),
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Circular Image
                  CrownText(
                    'Circular Image',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownImage(
                      AssetImage('images/icon_small.png'),
                      customStyle: CrownImageStyle.circular(theme),
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Landscape Image
                  CrownText(
                    'Landscape Image',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownImage(
                      AssetImage('images/icon_small.png'),
                      customStyle: CrownImageStyle.landscape(theme),
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Card Style Image
                  CrownText(
                    'Card Style',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownImage(
                      AssetImage('images/icon_small.png'),
                      customStyle: CrownImageStyle.card(theme),
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // iOS Style Image
                  CrownText(
                    'iOS Style',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownCenter(
                    child: CrownImage(
                      AssetImage('images/icon_small.png'),
                      customStyle: CrownImageStyle.iosStyle(theme),
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
