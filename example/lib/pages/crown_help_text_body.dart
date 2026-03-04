import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownHelpText example page body
class CrownHelpTextBody extends PageBody {
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
                'Help text component for providing hints and assistance',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildHelpTextExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHelpTextExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Help Text Examples',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownHelpText(
            'This field is required for account creation',
            icon: Icon(Icons.info, size: 16),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownHelpText(
            'Password must be at least 8 characters long',
            icon: Icon(Icons.lock, size: 16),
            color: theme.colors.warning,
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownHelpText(
            'Email address already in use',
            icon: Icon(Icons.error, size: 16),
            color: theme.colors.error,
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownHelpText(
            'All fields completed successfully',
            icon: Icon(Icons.check_circle, size: 16),
            color: theme.colors.success,
          ),
        ],
      ),
    );
  }
}
