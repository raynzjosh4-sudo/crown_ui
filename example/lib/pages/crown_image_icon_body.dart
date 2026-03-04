import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownImageIcon example page body
class CrownImageIconBody extends PageBody {
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
                    'Image Icon Component',
                    style: ComponentStyles.sectionHeaderText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                  ),
                  CrownText(
                    'Display images as icons with theme styling',
                    style: ComponentStyles.subtitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Icon Sizes
                  CrownText(
                    'Icon Sizes',
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
                        CrownColumn(
                          style: CrownColumnStyle.center(),
                          children: [
                            CrownImageIcon(
                              AssetImage('images/icon_small.png'),
                              customStyle: CrownImageIconStyle.xs(theme),
                            ),
                            CrownSizedBox(
                              style:
                                  CrownSizedBoxStyle.vertical(theme.spacing.sm),
                            ),
                            CrownText('XS',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colors.textSecondary,
                                )),
                          ],
                        ),
                        CrownColumn(
                          style: CrownColumnStyle.center(),
                          children: [
                            CrownImageIcon(
                              AssetImage('images/icon_small.png'),
                              customStyle: CrownImageIconStyle.small(theme),
                            ),
                            CrownSizedBox(
                              style:
                                  CrownSizedBoxStyle.vertical(theme.spacing.sm),
                            ),
                            CrownText('SM',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colors.textSecondary,
                                )),
                          ],
                        ),
                        CrownColumn(
                          style: CrownColumnStyle.center(),
                          children: [
                            CrownImageIcon(
                              AssetImage('images/icon_small.png'),
                              customStyle: CrownImageIconStyle.medium(theme),
                            ),
                            CrownSizedBox(
                              style:
                                  CrownSizedBoxStyle.vertical(theme.spacing.sm),
                            ),
                            CrownText('MD',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colors.textSecondary,
                                )),
                          ],
                        ),
                        CrownColumn(
                          style: CrownColumnStyle.center(),
                          children: [
                            CrownImageIcon(
                              AssetImage('images/icon_small.png'),
                              customStyle: CrownImageIconStyle.large(theme),
                            ),
                            CrownSizedBox(
                              style:
                                  CrownSizedBoxStyle.vertical(theme.spacing.sm),
                            ),
                            CrownText('LG',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colors.textSecondary,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Semantic Colors
                  CrownText(
                    'Semantic Styles',
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
                        CrownColumn(
                          style: CrownColumnStyle.center(),
                          children: [
                            CrownImageIcon(
                              AssetImage('images/icon_small.png'),
                              customStyle: CrownImageIconStyle.success(theme),
                            ),
                            CrownSizedBox(
                              style:
                                  CrownSizedBoxStyle.vertical(theme.spacing.sm),
                            ),
                            CrownText('Success',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colors.textSecondary,
                                )),
                          ],
                        ),
                        CrownColumn(
                          style: CrownColumnStyle.center(),
                          children: [
                            CrownImageIcon(
                              AssetImage('images/icon_small.png'),
                              customStyle: CrownImageIconStyle.warning(theme),
                            ),
                            CrownSizedBox(
                              style:
                                  CrownSizedBoxStyle.vertical(theme.spacing.sm),
                            ),
                            CrownText('Warning',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colors.textSecondary,
                                )),
                          ],
                        ),
                        CrownColumn(
                          style: CrownColumnStyle.center(),
                          children: [
                            CrownImageIcon(
                              AssetImage('images/icon_small.png'),
                              customStyle: CrownImageIconStyle.error(theme),
                            ),
                            CrownSizedBox(
                              style:
                                  CrownSizedBoxStyle.vertical(theme.spacing.sm),
                            ),
                            CrownText('Error',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colors.textSecondary,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Default and Secondary
                  CrownText(
                    'Additional Styles',
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
                        CrownColumn(
                          style: CrownColumnStyle.center(),
                          children: [
                            CrownImageIcon(
                              AssetImage('images/icon_small.png'),
                              customStyle:
                                  CrownImageIconStyle.defaultStyle(theme),
                            ),
                            CrownSizedBox(
                              style:
                                  CrownSizedBoxStyle.vertical(theme.spacing.sm),
                            ),
                            CrownText('Default',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colors.textSecondary,
                                )),
                          ],
                        ),
                        CrownColumn(
                          style: CrownColumnStyle.center(),
                          children: [
                            CrownImageIcon(
                              AssetImage('images/icon_small.png'),
                              customStyle: CrownImageIconStyle.secondary(theme),
                            ),
                            CrownSizedBox(
                              style:
                                  CrownSizedBoxStyle.vertical(theme.spacing.sm),
                            ),
                            CrownText('Secondary',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colors.textSecondary,
                                )),
                          ],
                        ),
                        CrownColumn(
                          style: CrownColumnStyle.center(),
                          children: [
                            CrownImageIcon(
                              AssetImage('images/icon_small.png'),
                              customStyle: CrownImageIconStyle.disabled(theme),
                            ),
                            CrownSizedBox(
                              style:
                                  CrownSizedBoxStyle.vertical(theme.spacing.sm),
                            ),
                            CrownText('Disabled',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: theme.colors.textSecondary,
                                )),
                          ],
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
