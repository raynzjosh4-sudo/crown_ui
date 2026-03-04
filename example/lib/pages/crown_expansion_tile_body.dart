import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownExpansionTile example page body
class CrownExpansionTileBody extends PageBody {
  const CrownExpansionTileBody();

  @override
  Widget build(CrownThemeData theme) {
    return _ExpansionTileExample();
  }
}

class _ExpansionTileExample extends CrownStatefulWidget {
  bool _section1Expanded = false;
  bool _section2Expanded = false;
  bool _section3Expanded = false;

  _ExpansionTileExample({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context) {
    final theme = CrownTheme.of(context);

    return CrownScaffold(
      body: CrownSingleChildScrollView(
        style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
        child: CrownPadding(
          style: CrownPaddingStyle.defaultStyle(theme),
          child: CrownColumn(
            style: CrownColumnStyle.start(),
            children: [
              CrownText(
                'Expansion Tile Component',
                style: ComponentStyles.sectionHeaderText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
              ),
              CrownText(
                'Interactive collapsible sections for organizing content',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Default Style
              CrownText(
                'Default Style',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownExpansionTile(
                title: CrownText(
                  'Section 1: About',
                  style: ComponentStyles.cardDescriptionText(theme),
                ),
                initiallyExpanded: _section1Expanded,
                onExpansionChanged: (expanded) {
                  callSetState(() => _section1Expanded = expanded);
                },
                children: [
                  CrownPadding(
                    style: CrownPaddingStyle.defaultStyle(theme),
                    child: CrownText(
                      'This is an expansion tile that can be expanded and collapsed. It\'s perfect for organizing content and keeping your UI clean and organized.',
                      style: ComponentStyles.cardDescriptionText(theme),
                    ),
                  ),
                ],
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),

              // With Subtitle
              CrownExpansionTile(
                title: CrownText(
                  'Section 2: Features',
                  style: ComponentStyles.cardDescriptionText(theme),
                ),
                subtitle: CrownText(
                  'Learn about key features',
                  style: ComponentStyles.cardDescriptionText(theme).copyWith(
                      fontSize: 12, color: theme.colors.textSecondary),
                ),
                initiallyExpanded: _section2Expanded,
                onExpansionChanged: (expanded) {
                  callSetState(() => _section2Expanded = expanded);
                },
                children: [
                  CrownPadding(
                    style: CrownPaddingStyle.defaultStyle(theme),
                    child: CrownColumn(
                      style: CrownColumnStyle.start(),
                      children: [
                        _buildFeatureItem(theme, '✓ Customizable styling'),
                        CrownSizedBox(
                          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                        ),
                        _buildFeatureItem(theme, '✓ Smooth animations'),
                        CrownSizedBox(
                          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                        ),
                        _buildFeatureItem(theme, '✓ Theme integration'),
                        CrownSizedBox(
                          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                        ),
                        _buildFeatureItem(theme, '✓ Easy to use'),
                      ],
                    ),
                  ),
                ],
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),

              // With Icon
              CrownExpansionTile(
                title: CrownText(
                  'Section 3: Settings',
                  style: ComponentStyles.cardDescriptionText(theme),
                ),
                leading: Icon(
                  Icons.settings,
                  color: theme.colors.primary,
                ),
                initiallyExpanded: _section3Expanded,
                onExpansionChanged: (expanded) {
                  callSetState(() => _section3Expanded = expanded);
                },
                children: [
                  CrownPadding(
                    style: CrownPaddingStyle.defaultStyle(theme),
                    child: CrownText(
                      'Configure various options to customize the expansion tiles according to your needs. You can control colors, animations, padding, and more.',
                      style: ComponentStyles.cardDescriptionText(theme),
                    ),
                  ),
                ],
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Outlined Style
              CrownText(
                'Outlined Style',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownExpansionTile(
                title: CrownText(
                  'Outlined Section',
                  style: ComponentStyles.cardDescriptionText(theme),
                ),
                customStyle: CrownExpansionTileStyle.outlined(theme),
                children: [
                  CrownPadding(
                    style: CrownPaddingStyle.defaultStyle(theme),
                    child: CrownText(
                      'This expansion tile uses the outlined style with a border.',
                      style: ComponentStyles.cardDescriptionText(theme),
                    ),
                  ),
                ],
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Filled Style
              CrownExpansionTile(
                title: CrownText(
                  'Filled Section',
                  style: ComponentStyles.cardDescriptionText(theme),
                ),
                customStyle: CrownExpansionTileStyle.filled(theme),
                children: [
                  CrownPadding(
                    style: CrownPaddingStyle.defaultStyle(theme),
                    child: CrownText(
                      'This expansion tile uses the filled style with a colored background.',
                      style: ComponentStyles.cardDescriptionText(theme),
                    ),
                  ),
                ],
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),

              // Compact Style
              CrownText(
                'Compact Style',
                style: ComponentStyles.cardTitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.md),
              ),
              CrownExpansionTile(
                title: CrownText(
                  'Compact Section',
                  style: ComponentStyles.cardDescriptionText(theme),
                ),
                customStyle: CrownExpansionTileStyle.compact(theme),
                children: [
                  CrownPadding(
                    style: CrownPaddingStyle.defaultStyle(theme),
                    child: CrownText(
                      'This expansion tile uses the compact style with minimal padding.',
                      style: ComponentStyles.cardDescriptionText(theme),
                    ),
                  ),
                ],
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.xl),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(CrownThemeData theme, String text) {
    return CrownText(
      text,
      style: ComponentStyles.cardDescriptionText(theme),
    );
  }
}
