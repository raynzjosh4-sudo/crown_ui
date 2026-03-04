import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

/// CrownSnackBar example page body
class CrownSnackBarBody extends PageBody {
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
                'Snackbar component for displaying notifications',
                style: ComponentStyles.subtitleText(theme),
              ),
              CrownSizedBox(
                style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
              ),
              _buildSnackBarExample(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSnackBarExample(CrownThemeData theme) {
    return CrownCard(
      customStyle: ComponentStyles.glassmorphismCard(theme),
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          CrownText('Snackbar Types',
              style: ComponentStyles.sectionHeaderText(theme)),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownButton(
            'Show Success',
            onPressed: () => CrownSnackBar.showSuccess(
              _getContext(),
              message: 'Operation completed successfully!',
            ),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownButton(
            'Show Error',
            onPressed: () => CrownSnackBar.showError(
              _getContext(),
              message: 'An error occurred. Please try again.',
            ),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownButton(
            'Show Info',
            onPressed: () => CrownSnackBar.showInfo(
              _getContext(),
              message: 'This is an informational message.',
            ),
          ),
          CrownSizedBox(style: CrownSizedBoxStyle.vertical(theme.spacing.md)),
          CrownButton(
            'Show Warning',
            onPressed: () => CrownSnackBar.showWarning(
              _getContext(),
              message: 'Please be careful with this action.',
            ),
          ),
        ],
      ),
    );
  }

  BuildContext _getContext() {
    return navigatorKey.currentContext!;
  }

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
