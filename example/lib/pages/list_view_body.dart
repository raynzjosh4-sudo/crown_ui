import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// List View demo page body
class ListViewBody extends PageBody {
  @override
  Widget build(CrownThemeData theme) {
    return CrownSingleChildScrollView(
      style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText.display('List View', color: theme.colors.primary),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.md),
            ),
            CrownText.body(
              'Display scrollable lists with customizable styling',
              color: theme.colors.textSecondary,
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildBasicListView(theme),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildCardListView(theme),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildBuilderListView(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildBasicListView(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText.subheading(
            'Basic List',
            color: theme.colors.primary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText.caption(
            'Simple list with padding and spacing',
            color: theme.colors.textSecondary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          SizedBox(
            height: 200,
            child: CrownListView(
              children: [
                _buildListItem(theme, Icons.star, 'Favorites'),
                _buildListItem(theme, Icons.download, 'Downloads'),
                _buildListItem(theme, Icons.settings, 'Settings'),
                _buildListItem(theme, Icons.info, 'About'),
                _buildListItem(theme, Icons.help, 'Help'),
              ],
              style: CrownListViewStyle.padded(
                padding: 0,
                spacing: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardListView(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText.subheading(
            'Card Style List',
            color: theme.colors.primary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText.caption(
            'List with rounded cards and compact styling',
            color: theme.colors.textSecondary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownListView(
            children: [
              _buildCardItem(theme, '🎨', 'Design', 'Beautiful UI components'),
              _buildCardItem(theme, '⚡', 'Performance', 'Built for speed'),
              _buildCardItem(theme, '🎯', 'Easy', 'Simple to use'),
            ],
            style: CrownListViewStyle.card(
              padding: 0,
              spacing: 8,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBuilderListView(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText.subheading(
            'Dynamic List (Builder)',
            color: theme.colors.primary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText.caption(
            'Generated list with itemBuilder',
            color: theme.colors.textSecondary,
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          SizedBox(
            height: 180,
            child: CrownListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) => _buildDynamicItem(
                theme,
                'Item ${index + 1}',
                'Description ${index + 1}',
              ),
              style: CrownListViewStyle.padded(
                padding: 0,
                spacing: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(CrownThemeData theme, IconData icon, String label) {
    return CrownRow(
      style: CrownRowStyle.start(),
      children: [
        CrownIcon(icon, color: theme.colors.primary, size: 20),
        CrownSizedBox(
          style: CrownSizedBoxStyle.horizontal(theme.spacing.md),
        ),
        CrownText(label, color: theme.colors.textPrimary),
      ],
    );
  }

  Widget _buildCardItem(
      CrownThemeData theme, String emoji, String title, String description) {
    return CrownContainer(
      style: CrownContainerStyle.card(
        backgroundColor: theme.colors.surface,
      ),
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownRow(
              style: CrownRowStyle.start(),
              children: [
                CrownText(emoji, style: const TextStyle(fontSize: 24)),
                CrownSizedBox(
                  style: CrownSizedBoxStyle.horizontal(theme.spacing.sm),
                ),
                CrownText(title,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.xs),
            ),
            CrownText(
              description,
              color: theme.colors.textSecondary,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDynamicItem(
      CrownThemeData theme, String title, String description) {
    return CrownContainer(
      backgroundColor: theme.colors.surface,
      borderRadius: 8,
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme),
        child: CrownColumn(
          style: CrownColumnStyle.start(),
          children: [
            CrownText(title,
                style: const TextStyle(fontWeight: FontWeight.w600),
                color: theme.colors.textPrimary),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.xs),
            ),
            CrownText(
              description,
              color: theme.colors.textSecondary,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
