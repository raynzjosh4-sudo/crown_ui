import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// Grid View demo page body
class GridViewBody extends PageBody {
  @override
  Widget build(CrownThemeData theme) {
    return CrownScaffold(
        body: CrownSingleChildScrollView(
      style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText.display('Grid View', color: theme.colors.primary),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.md),
            ),
            CrownText.body(
              'Display items in a flexible grid layout',
              color: theme.colors.textSecondary,
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildBasicGrid(theme),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildCardGrid(theme),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildThreeColumnGrid(theme),
          ],
        ),
      ),
    ));
  }

  Widget _buildBasicGrid(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText.subheading(
            'Basic 2-Column Grid',
            color: theme.colors.primary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText.caption(
            'Simple grid with equal columns',
            color: theme.colors.textSecondary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          SizedBox(
            height: 250,
            child: CrownGridView(
              style: CrownGridViewStyle.padded(
                padding: 0,
                spacing: 12,
                crossAxisCount: 2,
              ),
              children: List.generate(
                6,
                (index) => _buildGridItem(
                  theme,
                  ['🎨', '🎭', '🎪', '🎨', '🎭', '🎪'][index],
                  [
                    'Design',
                    'Art',
                    'Comedy',
                    'Craft',
                    'Theater',
                    'Show'
                  ][index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardGrid(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText.subheading(
            'Card Style Grid',
            color: theme.colors.primary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText.caption(
            'Grid with rounded cards and padding',
            color: theme.colors.textSecondary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          SizedBox(
            height: 200,
            child: CrownGridView(
              style: CrownGridViewStyle.card(
                padding: 0,
                spacing: 10,
                crossAxisCount: 2,
              ),
              children: List.generate(
                4,
                (index) => CrownContainer(
                  style: CrownContainerStyle.card(
                    backgroundColor: theme.colors.surface,
                  ),
                  child: CrownCenter(
                    child: CrownColumn(
                      style: CrownColumnStyle.center(),
                      children: [
                        CrownText(
                          ['⚡', '🚀', '💎', '🎯'][index],
                          style: const TextStyle(fontSize: 32),
                        ),
                        CrownSizedBox(
                          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                        ),
                        CrownText(
                          ['Lightning', 'Rocket', 'Premium', 'Target'][index],
                          style: const TextStyle(fontWeight: FontWeight.w600),
                          color: theme.colors.textPrimary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThreeColumnGrid(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText.subheading(
            '3-Column Grid',
            color: theme.colors.primary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText.caption(
            'Grid with three equal columns',
            color: theme.colors.textSecondary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          SizedBox(
            height: 280,
            child: CrownGridView(
              style: CrownGridViewStyle.threeColumn(
                padding: 0,
                spacing: 8,
              ),
              children: List.generate(
                9,
                (index) => _buildSmallGridItem(theme, index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(CrownThemeData theme, String emoji, String label) {
    return CrownContainer(
      backgroundColor: theme.colors.surface,
      borderRadius: 12,
      child: CrownCenter(
        child: CrownColumn(
          style: CrownColumnStyle.center(),
          children: [
            CrownText(emoji, style: const TextStyle(fontSize: 36)),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
            ),
            CrownText(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              color: theme.colors.textPrimary,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSmallGridItem(CrownThemeData theme, int index) {
    return CrownContainer(
      backgroundColor: theme.colors.surface,
      borderRadius: 8,
      child: CrownCenter(
        child: CrownText(
          'Item ${index + 1}',
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          color: theme.colors.textPrimary,
        ),
      ),
    );
  }
}
