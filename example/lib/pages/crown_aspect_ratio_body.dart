import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownAspectRatio example page body
class CrownAspectRatioBody extends PageBody {
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
                'Aspect ratio component for maintaining consistent proportions',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildAspectRatioExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAspectRatioExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Aspect Ratio Examples',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownText('16:9 Aspect Ratio',
              style: ComponentStyles.subtitleText(theme)),
          SizedBox(height: 8),
          CrownAspectRatio(
            aspectRatio: 16 / 9,
            child: CrownContainer(
              style: CrownContainerStyle(
                backgroundColor: theme.colors.primary,
                borderRadius: 8,
              ),
              child: Center(
                child: CrownText('16:9', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownText('1:1 Aspect Ratio',
              style: ComponentStyles.subtitleText(theme)),
          SizedBox(height: 8),
          CrownAspectRatio(
            aspectRatio: 1 / 1,
            child: CrownContainer(
              style: CrownContainerStyle(
                backgroundColor: theme.colors.success,
                borderRadius: 8,
              ),
              child: Center(
                child: CrownText('1:1', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownText('9:16 Aspect Ratio',
              style: ComponentStyles.subtitleText(theme)),
          SizedBox(height: 8),
          CrownAspectRatio(
            aspectRatio: 9 / 16,
            child: CrownContainer(
              style: CrownContainerStyle(
                backgroundColor: theme.colors.warning,
                borderRadius: 8,
              ),
              child: Center(
                child: CrownText('9:16', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
