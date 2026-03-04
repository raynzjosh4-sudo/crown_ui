import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownInkWell example page body
class CrownInkWellBody extends PageBody {
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
                'Material ink well component for ripple effects',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildInkWellExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInkWellExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Ink Well Examples',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownInkWell(
            onTap: () => print('Item 1 tapped'),
            borderRadius: BorderRadius.circular(8),
            child: const CrownListTile(
              title: CrownText('text'),
              subtitle: CrownText('text'),
              leading: Icon(Icons.favorite),
            ),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownInkWell(
            onTap: () => print('Item 2 tapped'),
            borderRadius: BorderRadius.circular(8),
            child: const CrownListTile(
              title: CrownText('Tap to interact'),
              subtitle: CrownText('Tap to interact'),
              leading: Icon(Icons.star),
            ),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownInkWell(
            onTap: () => print('Item 3 tapped'),
            borderRadius: BorderRadius.circular(8),
            child: const CrownListTile(
              title: CrownText('Clickable Item 3'),
              subtitle: CrownText('Tap to interact'),
              leading: Icon(Icons.share),
            ),
          ),
        ],
      ),
    );
  }
}
