import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownVisibility example page body
class CrownVisibilityBody extends PageBody {
  bool _isVisible = true;

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
                'Visibility component for toggling widget visibility',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildVisibilityExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVisibilityExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Visibility Control',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownButton(
            _isVisible ? 'Hide Content' : 'Show Content',
            onPressed: () {
              // Toggle visibility would go here
            },
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownVisibility(
            visible: _isVisible,
            replacement: CrownContainer(
              style: CrownContainerStyle(
                backgroundColor: theme.colors.primary,
                borderRadius: 8,
                padding: const EdgeInsets.all(24),
              ),
              child: const Center(
                child: CrownText(
                  'Content is hidden',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            child: CrownContainer(
              style: CrownContainerStyle(
                backgroundColor: theme.colors.primary,
                borderRadius: 8,
                padding: const EdgeInsets.all(24),
              ),
              child: const Center(
                child: CrownText(
                  'This content is visible',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
