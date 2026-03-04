import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownVerticalDivider example page body
class CrownVerticalDividerBody extends PageBody {
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
                'Vertical separator component for organizing content',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildVerticalDividerExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalDividerExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Vertical Divider',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          SizedBox(
            height: 200,
            child: CrownRow(
              style: CrownRowStyle.spaceBetween(),
              children: [
                Expanded(
                  child: Center(
                    child: CrownColumn(
                      style: CrownColumnStyle.center(),
                      children: [
                        Icon(Icons.home, size: 32, color: theme.colors.primary),
                        SizedBox(height: 8),
                        CrownText('Home'),
                      ],
                    ),
                  ),
                ),
                CrownVerticalDivider(
                  width: 2,
                  thickness: 2,
                ),
                Expanded(
                  child: Center(
                    child: CrownColumn(
                      style: CrownColumnStyle.center(),
                      children: [
                        Icon(Icons.search,
                            size: 32, color: theme.colors.primary),
                        SizedBox(height: 8),
                        CrownText('Search'),
                      ],
                    ),
                  ),
                ),
                CrownVerticalDivider(
                  width: 2,
                  thickness: 2,
                ),
                Expanded(
                  child: Center(
                    child: CrownColumn(
                      style: CrownColumnStyle.center(),
                      children: [
                        Icon(Icons.person,
                            size: 32, color: theme.colors.primary),
                        SizedBox(height: 8),
                        CrownText('Profile'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
