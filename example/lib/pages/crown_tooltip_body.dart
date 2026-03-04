import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownTooltip example page body
class CrownTooltipBody extends PageBody {
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
                'Tooltip component for providing helpful information on hover',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildAndroidTooltipExample(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildIosTooltipExample(theme),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildWindowsTooltipExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAndroidTooltipExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Android Material Style',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownRow(
            style: CrownRowStyle.spaceEvenly(),
            children: [
              CrownTooltip(
                style: CrownTooltipStyle.android(theme, 'This is a button'),
                child: CrownButton(
                  'Hover Me',
                  onPressed: () {},
                ),
              ),
              CrownTooltip(
                style: CrownTooltipStyle.android(theme, 'Click to refresh'),
                child: CrownIconButton(
                  icon: Icons.refresh,
                  onPressed: () {},
                ),
              ),
              CrownTooltip(
                style: CrownTooltipStyle.android(theme, 'Download this'),
                child: CrownIconButton(
                  icon: Icons.download,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIosTooltipExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('iOS Cupertino Style',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownRow(
            style: CrownRowStyle.spaceEvenly(),
            children: [
              CrownCustomTooltip(
                style: CrownTooltipStyle.ios(theme, 'iOS-style tooltip'),
                showArrow: true,
                child: CrownButton(
                  'Hover Me',
                  onPressed: () {},
                ),
              ),
              CrownCustomTooltip(
                style: CrownTooltipStyle.ios(theme, 'Refresh content'),
                showArrow: true,
                child: CrownIconButton(
                  icon: Icons.refresh,
                  onPressed: () {},
                ),
              ),
              CrownCustomTooltip(
                style: CrownTooltipStyle.ios(theme, 'Save and download'),
                showArrow: true,
                child: CrownIconButton(
                  icon: Icons.download,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWindowsTooltipExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Windows Classic Style',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownRow(
            style: CrownRowStyle.spaceEvenly(),
            children: [
              CrownTooltip(
                style: CrownTooltipStyle.windows(theme, 'This is a button'),
                child: CrownButton(
                  'Hover Me',
                  onPressed: () {},
                ),
              ),
              CrownTooltip(
                style: CrownTooltipStyle.windows(theme, 'Click to refresh'),
                child: CrownIconButton(
                  icon: Icons.refresh,
                  onPressed: () {},
                ),
              ),
              CrownTooltip(
                style: CrownTooltipStyle.windows(theme, 'Download this'),
                child: CrownIconButton(
                  icon: Icons.download,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
