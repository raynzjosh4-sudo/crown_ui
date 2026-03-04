import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownBottomSheet example page body
class CrownBottomSheetBody extends PageBody {
  @override
  Widget build(CrownThemeData theme) {
    return Builder(
        builder: (context) => CrownScaffold(
              body: CrownSingleChildScrollView(
                style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
                child: CrownPadding(
                  style: CrownPaddingStyle.defaultStyle(theme),
                  child: CrownColumn(
                    style: CrownColumnStyle.start(),
                    children: [
                      CrownText(
                        'Bottom Sheet Component',
                        style: ComponentStyles.sectionHeaderText(theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                      ),
                      CrownText(
                        'Modal sheets that slide up from the bottom of the screen',
                        style: ComponentStyles.subtitleText(theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                      ),

                      // Default Bottom Sheet
                      CrownText(
                        'Default Sheet',
                        style: ComponentStyles.cardTitleText(theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      CrownButton(
                        'Show Default Sheet',
                        onPressed: () {
                          _showDefaultSheet(context, theme);
                        },
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                      ),

                      // Menu Bottom Sheet
                      CrownText(
                        'Menu Sheet',
                        style: ComponentStyles.cardTitleText(theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      CrownButton(
                        'Show Menu Sheet',
                        onPressed: () {
                          _showMenuSheet(context, theme);
                        },
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                      ),

                      // Settings Bottom Sheet
                      CrownText(
                        'Settings Sheet',
                        style: ComponentStyles.cardTitleText(theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      CrownButton(
                        'Show Settings Sheet',
                        onPressed: () {
                          _showSettingsSheet(context, theme);
                        },
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                      ),

                      // Elevated Style
                      CrownText(
                        'Elevated Sheet',
                        style: ComponentStyles.cardTitleText(theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      CrownButton(
                        'Show Elevated Sheet',
                        onPressed: () {
                          _showElevatedSheet(context, theme);
                        },
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                      ),

                      // Filled Style
                      CrownText(
                        'Filled Sheet',
                        style: ComponentStyles.cardTitleText(theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      CrownButton(
                        'Show Filled Sheet',
                        onPressed: () {
                          _showFilledSheet(context, theme);
                        },
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                      ),

                      // Bordered Style
                      CrownText(
                        'Bordered Sheet',
                        style: ComponentStyles.cardTitleText(theme),
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                      ),
                      CrownButton(
                        'Show Bordered Sheet',
                        onPressed: () {
                          _showBorderedSheet(context, theme);
                        },
                      ),
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(theme.spacing.xl),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}

void _showDefaultSheet(BuildContext context, CrownThemeData theme) {
  showModalBottomSheet(
    context: context,
    builder: (context) => CrownBottomSheet(
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Default Bottom Sheet',
            style: ComponentStyles.cardTitleText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'This is a default bottom sheet with theme integration and smooth animations.',
            style: ComponentStyles.cardDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
          ),
          CrownButton(
            'Close',
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    ),
  );
}

void _showMenuSheet(BuildContext context, CrownThemeData theme) {
  showModalBottomSheet(
    context: context,
    builder: (context) => CrownBottomSheet(
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Menu Options',
            style: ComponentStyles.cardTitleText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
          ),
          _buildMenuItem(theme, Icons.edit, 'Edit', () {}),
          _buildMenuItem(theme, Icons.copy, 'Copy', () {}),
          _buildMenuItem(theme, Icons.delete, 'Delete', () {}),
          _buildMenuItem(theme, Icons.share, 'Share', () {}),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
        ],
      ),
    ),
  );
}

void _showSettingsSheet(BuildContext context, CrownThemeData theme) {
  showModalBottomSheet(
    context: context,
    builder: (context) => CrownBottomSheet(
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Settings',
            style: ComponentStyles.cardTitleText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
          ),
          _buildSettingItem(theme, 'Notifications', 'Enabled'),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          _buildSettingItem(theme, 'Dark Mode', 'On'),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          _buildSettingItem(theme, 'Language', 'English'),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
          ),
        ],
      ),
    ),
  );
}

void _showElevatedSheet(BuildContext context, CrownThemeData theme) {
  showModalBottomSheet(
    context: context,
    builder: (context) => CrownBottomSheet(
      customStyle: CrownBottomSheetStyle.elevated(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Elevated Bottom Sheet',
            style: ComponentStyles.cardTitleText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'This sheet uses the elevated style with prominent shadow.',
            style: ComponentStyles.cardDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
          ),
          CrownButton(
            'Close',
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    ),
  );
}

void _showFilledSheet(BuildContext context, CrownThemeData theme) {
  showModalBottomSheet(
    context: context,
    builder: (context) => CrownBottomSheet(
      customStyle: CrownBottomSheetStyle.filled(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Filled Bottom Sheet',
            style: ComponentStyles.cardTitleText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'This sheet uses the filled style with a colored background.',
            style: ComponentStyles.cardDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
          ),
          CrownButton(
            'Close',
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    ),
  );
}

void _showBorderedSheet(BuildContext context, CrownThemeData theme) {
  showModalBottomSheet(
    context: context,
    builder: (context) => CrownBottomSheet(
      customStyle: CrownBottomSheetStyle.bordered(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText(
            'Bordered Bottom Sheet',
            style: ComponentStyles.cardTitleText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.md),
          ),
          CrownText(
            'This sheet uses the bordered style with a subtle border.',
            style: ComponentStyles.cardDescriptionText(theme),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
          ),
          CrownButton(
            'Close',
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    ),
  );
}

Widget _buildMenuItem(
  CrownThemeData theme,
  IconData icon,
  String label,
  VoidCallback onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: CrownRow(
        style: CrownRowStyle.start(),
        children: [
          CrownIcon(
            icon,
            style: CrownIconStyle(
              color: theme.colors.primary,
              size: 24,
            ),
          ),
          CrownSizedBox(
            style: CrownSizedBoxStyle.horizontal(theme.spacing.md),
          ),
          CrownText(
            label,
            style: ComponentStyles.cardDescriptionText(theme),
          ),
        ],
      ),
    ),
  );
}

Widget _buildSettingItem(
  CrownThemeData theme,
  String title,
  String value,
) {
  return CrownRow(
    style: CrownRowStyle.spaceBetween(),
    children: [
      CrownText(
        title,
        style: ComponentStyles.cardDescriptionText(theme),
      ),
      CrownText(
        value,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: theme.colors.textSecondary,
        ),
      ),
    ],
  );
}
