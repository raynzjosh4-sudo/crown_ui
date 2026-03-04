import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownDivider example page body
class CrownDividerBody extends PageBody {
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
              CrownText(
                'Visual separator component for organizing content',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildBasicDividers(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildWithContent(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildCustomDividers(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildInListExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBasicDividers(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Basic Dividers',
            style: ComponentStyles.sectionHeaderText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Standard dividers with theme colors',
            style: ComponentStyles.sectionDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Content above divider',
            style: ComponentStyles.listTileTitleText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Content below divider',
            style: ComponentStyles.listTileTitleText(theme),
          ),
        ],
      ),
    );
  }

  Widget _buildWithContent(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Divider with Content',
            style: ComponentStyles.sectionHeaderText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Dividers can separate multiple content sections',
            style: ComponentStyles.sectionDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownRow(
            style: CrownRowStyle.start(),
            children: [
              CrownIcon(
                Icons.star,
                style: CrownIconStyle(
                  color: theme.colors.warning,
                  size: 20,
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.horizontal(theme.spacing.md),
              ),
              CrownExpanded(
                child: CrownText(
                  'Featured Item',
                  style: ComponentStyles.listTileTitleText(theme),
                ),
              ),
            ],
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownRow(
            style: CrownRowStyle.start(),
            children: [
              CrownIcon(
                Icons.info,
                style: CrownIconStyle(
                  color: theme.colors.primary,
                  size: 20,
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.horizontal(theme.spacing.md),
              ),
              CrownExpanded(
                child: CrownText(
                  'Information Item',
                  style: ComponentStyles.listTileTitleText(theme),
                ),
              ),
            ],
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownRow(
            style: CrownRowStyle.start(),
            children: [
              CrownIcon(
                Icons.check_circle,
                style: CrownIconStyle(
                  color: theme.colors.success,
                  size: 20,
                ),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.horizontal(theme.spacing.md),
              ),
              CrownExpanded(
                child: CrownText(
                  'Completed Item',
                  style: ComponentStyles.listTileTitleText(theme),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCustomDividers(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Divider Styles',
            style: ComponentStyles.sectionHeaderText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Different divider variations and sizes',
            style: ComponentStyles.sectionDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Standard Divider',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: theme.colors.textSecondary,
            ),
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Compact Divider (thin)',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: theme.colors.textSecondary,
            ),
          ),
          CrownDivider(style: ComponentStyles.compactDivider(theme)),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Thick Divider',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: theme.colors.textSecondary,
            ),
          ),
          CrownDivider(
            style: CrownDividerStyle.thick(theme),
          ),
        ],
      ),
    );
  }

  Widget _buildInListExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'In List Context',
            style: ComponentStyles.sectionHeaderText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Dividers commonly separate list items',
            style: ComponentStyles.sectionDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownListTile(
            leading: CrownIcon(
              Icons.folder,
              style: CrownIconStyle(
                color: theme.colors.primary,
                size: 24,
              ),
            ),
            title: CrownText(
              'Documents',
              style: ComponentStyles.listTileTitleText(theme),
            ),
            trailing: CrownIcon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownListTile(
            leading: CrownIcon(
              Icons.image,
              style: CrownIconStyle(
                color: theme.colors.success,
                size: 24,
              ),
            ),
            title: CrownText(
              'Images',
              style: ComponentStyles.listTileTitleText(theme),
            ),
            trailing: CrownIcon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownListTile(
            leading: CrownIcon(
              Icons.music_note,
              style: CrownIconStyle(
                color: theme.colors.warning,
                size: 24,
              ),
            ),
            title: CrownText(
              'Music',
              style: ComponentStyles.listTileTitleText(theme),
            ),
            trailing: CrownIcon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
