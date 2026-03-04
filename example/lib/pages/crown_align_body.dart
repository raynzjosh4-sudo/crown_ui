import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownAlign example page body
class CrownAlignBody extends PageBody {
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
                'Widget alignment component for precise positioning',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildAlignmentGrid(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAlignmentGrid(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Alignment Positions',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          SizedBox(
            height: 400,
            child: CrownContainer(
              style: CrownContainerStyle(
                backgroundColor: theme.colors.surface.withOpacity(0.5),
                borderRadius: 12,
              ),
              child: Stack(
                children: [
                  CrownAlign(
                    alignment: Alignment.topLeft,
                    child: CrownText('Top Left'),
                  ),
                  CrownAlign(
                    alignment: Alignment.topCenter,
                    child: CrownText('Top Center'),
                  ),
                  CrownAlign(
                    alignment: Alignment.topRight,
                    child: CrownText('Top Right'),
                  ),
                  CrownAlign(
                    alignment: Alignment.centerLeft,
                    child: CrownText('Center Left'),
                  ),
                  CrownAlign(
                    alignment: Alignment.center,
                    child: CrownText('Center'),
                  ),
                  CrownAlign(
                    alignment: Alignment.centerRight,
                    child: CrownText('Center Right'),
                  ),
                  CrownAlign(
                    alignment: Alignment.bottomLeft,
                    child: CrownText('Bottom Left'),
                  ),
                  CrownAlign(
                    alignment: Alignment.bottomCenter,
                    child: CrownText('Bottom Center'),
                  ),
                  CrownAlign(
                    alignment: Alignment.bottomRight,
                    child: CrownText('Bottom Right'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
