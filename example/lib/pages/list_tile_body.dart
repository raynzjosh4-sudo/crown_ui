import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// ListTile example page body
class ListTileBody extends PageBody {
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
                'Single list item component with flexible layout',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildBasicTiles(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildStyleVariants(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildInteractiveTiles(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildDenseTiles(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBasicTiles(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Basic List Tiles',
            style: ComponentStyles.sectionHeaderText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Simple list tiles with title and leading icon',
            style: ComponentStyles.sectionDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownListTile(
            leading: CrownIcon(
              Icons.music_note,
              style: CrownIconStyle(
                color: theme.colors.primary,
              ),
            ),
            title: CrownText('Music',
                style: ComponentStyles.listTileTitleText(theme)),
            trailing: CrownIcon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownListTile(
            leading: CrownIcon(
              Icons.image,
              style: CrownIconStyle(
                color: theme.colors.success,
              ),
            ),
            title: CrownText('Gallery',
                style: ComponentStyles.listTileTitleText(theme)),
            trailing: CrownIcon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownListTile(
            leading: CrownIcon(
              Icons.settings,
              style: CrownIconStyle(
                color: theme.colors.warning,
              ),
            ),
            title: CrownText('Settings',
                style: ComponentStyles.listTileTitleText(theme)),
            trailing: CrownIcon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownListTile()
        ],
      ),
    );
  }

  Widget _buildStyleVariants(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Style Variants',
            style: ComponentStyles.sectionHeaderText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Different list tile styles and configurations',
            style: ComponentStyles.sectionDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          // Default style
          CrownListTile(
            customStyle: CrownListTileStyle.defaultStyle(theme),
            leading: CrownIcon(
              Icons.person,
              style: CrownIconStyle(
                color: theme.colors.primary,
              ),
            ),
            title: CrownText('Default Style',
                style: ComponentStyles.listTileTitleText(theme)),
            subtitle: CrownText('Regular list tile',
                style: ComponentStyles.listTileSubtitleText(theme)),
            trailing: CrownIcon(Icons.more_vert, size: 20),
            onTap: () {},
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          // Filled style
          CrownListTile(
            customStyle: CrownListTileStyle.filled(theme),
            leading: CrownIcon(
              Icons.favorite,
              style: CrownIconStyle(
                color: theme.colors.primary,
              ),
            ),
            title: CrownText('Filled Style',
                style: ComponentStyles.listTileAccentText(theme)),
            subtitle: CrownText('Highlighted background',
                style: ComponentStyles.listTileSubtitleText(theme)),
            trailing: CrownIcon(
              Icons.favorite,
              style: CrownIconStyle(
                color: theme.colors.primary,
              ),
            ),
            onTap: () {},
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          // Outlined style
          CrownListTile(
            customStyle: CrownListTileStyle.outlined(theme),
            leading: CrownIcon(
              Icons.info,
              style: CrownIconStyle(
                color: theme.colors.warning,
              ),
            ),
            title: CrownText('Outlined Style',
                style: ComponentStyles.listTileTitleText(theme)),
            subtitle: CrownText('With border',
                style: ComponentStyles.listTileSubtitleText(theme)),
            trailing: CrownIcon(Icons.chevron_right, size: 20),
            onTap: () {},
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          // Tonal style
          CrownListTile(
            customStyle: CrownListTileStyle.tonal(theme),
            leading: CrownIcon(
              Icons.star,
              style: CrownIconStyle(
                color: theme.colors.primary,
              ),
            ),
            title: CrownText('Tonal Style',
                style: ComponentStyles.listTileAccentText(theme)),
            subtitle: CrownText('Subtle background',
                style: ComponentStyles.listTileSubtitleText(theme)),
            trailing: CrownIcon(
              Icons.star,
              style: CrownIconStyle(
                color: theme.colors.primary,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildInteractiveTiles(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Interactive Tiles',
            style: ComponentStyles.sectionHeaderText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'List tiles with interactive trailing widgets',
            style: ComponentStyles.sectionDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownListTile(
            leading: CrownIcon(
              Icons.notifications,
              style: CrownIconStyle(
                color: theme.colors.primary,
              ),
            ),
            title: CrownText('Notifications',
                style: ComponentStyles.listTileTitleText(theme)),
            subtitle: CrownText('Push notifications enabled',
                style: ComponentStyles.listTileSubtitleText(theme)),
            trailing: CrownSwitch(
              value: true,
              onChanged: (_) {},
              style: CrownSwitchStyle.defaultStyle(),
            ),
            onTap: () {},
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownListTile(
            leading: CrownIcon(
              Icons.bluetooth,
              style: CrownIconStyle(
                color: theme.colors.success,
              ),
            ),
            title: CrownText('Bluetooth',
                style: ComponentStyles.listTileTitleText(theme)),
            subtitle: CrownText('Connected to Device',
                style: ComponentStyles.listTileSubtitleText(theme)),
            trailing: CrownIcon(
              Icons.check_circle,
              style: CrownIconStyle(
                color: theme.colors.success,
              ),
            ),
            onTap: () {},
          ),
          CrownDivider(style: ComponentStyles.standardDivider(theme)),
          CrownListTile(
            leading: CrownIcon(
              Icons.download,
              style: CrownIconStyle(
                color: theme.colors.warning,
              ),
            ),
            title: CrownText('Download',
                style: ComponentStyles.listTileTitleText(theme)),
            subtitle: CrownText('File.apk 45% complete',
                style: ComponentStyles.listTileSubtitleText(theme)),
            trailing: CrownText('45%',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: theme.colors.warning,
                )),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDenseTiles(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Dense Variants',
            style: ComponentStyles.sectionHeaderText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'Compact list tiles for efficient space usage',
            style: ComponentStyles.sectionDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownListTile(
            customStyle: CrownListTileStyle.compact(theme),
            leading: CrownIcon(Icons.folder, size: 20),
            title: CrownText('Documents',
                style: ComponentStyles.listTileTitleText(theme)),
            trailing: CrownIcon(Icons.more_horiz, size: 18),
            onTap: () {},
          ),
          CrownDivider(style: ComponentStyles.compactDivider(theme)),
          CrownListTile(
            customStyle: CrownListTileStyle.compact(theme),
            leading: CrownIcon(Icons.folder, size: 20),
            title: CrownText('Downloads',
                style: ComponentStyles.listTileTitleText(theme)),
            trailing: CrownIcon(Icons.more_horiz, size: 18),
            onTap: () {},
          ),
          CrownDivider(style: ComponentStyles.compactDivider(theme)),
          CrownListTile(
            customStyle: CrownListTileStyle.compact(theme),
            leading: CrownIcon(Icons.folder, size: 20),
            title: CrownText('Media',
                style: ComponentStyles.listTileTitleText(theme)),
            trailing: CrownIcon(Icons.more_horiz, size: 18),
            onTap: () {},
          ),
          CrownDivider(style: ComponentStyles.compactDivider(theme)),
          CrownListTile(
            customStyle: CrownListTileStyle.compact(theme),
            leading: CrownIcon(Icons.folder, size: 20),
            title: CrownText('Archive',
                style: ComponentStyles.listTileTitleText(theme)),
            trailing: CrownIcon(Icons.more_horiz, size: 18),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
