import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/index.dart';

class CrownAlertDialogBody extends PageBody {
  @override
  Widget build(CrownThemeData theme) {
    return Builder(
      builder: (context) {
        return CrownScaffold(
          body: CrownSingleChildScrollView(
            style: CrownSingleChildScrollViewStyle.defaultStyle(theme),
            child: CrownPadding(
              style: CrownPaddingStyle.defaultStyle(theme),
              child: CrownColumn(
                style: CrownColumnStyle.start(),
                children: [
                  CrownText(
                    'Alert Dialog Component',
                    style: ComponentStyles.sectionHeaderText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
                  ),
                  CrownText(
                    'Modal dialogs for user interactions and confirmations',
                    style: ComponentStyles.subtitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Default Alert Dialog
                  CrownText(
                    'Default Dialog',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownButton(
                    'Show Default Dialog',
                    onPressed: () {
                      _showDefaultDialog(context, theme);
                    },
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Success Dialog
                  CrownText(
                    'Success Dialog',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownButton(
                    'Show Success Dialog',
                    onPressed: () {
                      _showSuccessDialog(context, theme);
                    },
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Error Dialog
                  CrownText(
                    'Error Dialog',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownButton(
                    'Show Error Dialog',
                    onPressed: () {
                      _showErrorDialog(context, theme);
                    },
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Confirmation Dialog
                  CrownText(
                    'Confirmation Dialog',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownButton(
                    'Show Confirmation Dialog',
                    onPressed: () {
                      _showConfirmationDialog(context, theme);
                    },
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Custom Style Dialog
                  CrownText(
                    'Outlined Style',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownButton(
                    'Show Outlined Dialog',
                    onPressed: () {
                      _showOutlinedDialog(context, theme);
                    },
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
                  ),

                  // Compact Dialog
                  CrownText(
                    'Compact Style',
                    style: ComponentStyles.cardTitleText(theme),
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.md),
                  ),
                  CrownButton(
                    'Show Compact Dialog',
                    onPressed: () {
                      _showCompactDialog(context, theme);
                    },
                  ),
                  CrownSizedBox(
                    style: CrownSizedBoxStyle.vertical(theme.spacing.xl),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showDefaultDialog(BuildContext context, CrownThemeData theme) {
    showDialog(
      context: context,
      builder: (context) => CrownAlertDialog(
        title: CrownText(
          'Welcome',
          style: ComponentStyles.cardTitleText(theme),
        ),
        content: CrownText(
          'This is a default alert dialog with theme integration and customizable styling.',
          style: ComponentStyles.cardDescriptionText(theme),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: CrownText(
              'OK',
              style: TextStyle(
                color: theme.colors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(BuildContext context, CrownThemeData theme) {
    showDialog(
      context: context,
      builder: (context) => CrownAlertDialog(
        title: CrownText(
          'Success',
          style: TextStyle(
            color: theme.colors.success,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        content: CrownText(
          'Your action has been completed successfully!',
          style: ComponentStyles.cardDescriptionText(theme),
        ),
        customStyle: CrownAlertDialogStyle.success(theme),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: CrownText(
              'Done',
              style: TextStyle(
                color: theme.colors.success,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showErrorDialog(BuildContext context, CrownThemeData theme) {
    showDialog(
      context: context,
      builder: (context) => CrownAlertDialog(
        title: CrownText(
          'Error',
          style: TextStyle(
            color: theme.colors.error,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        content: CrownText(
          'An error occurred while processing your request.',
          style: ComponentStyles.cardDescriptionText(theme),
        ),
        customStyle: CrownAlertDialogStyle.error(theme),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: CrownText(
              'Close',
              style: TextStyle(
                color: theme.colors.error,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context, CrownThemeData theme) {
    showDialog(
      context: context,
      builder: (context) => CrownAlertDialog(
        title: CrownText(
          'Confirm Action',
          style: ComponentStyles.cardTitleText(theme),
        ),
        content: CrownText(
          'Are you sure you want to proceed with this action?',
          style: ComponentStyles.cardDescriptionText(theme),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: CrownText(
              'Cancel',
              style: TextStyle(
                color: theme.colors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: CrownText(
              'Confirm',
              style: TextStyle(
                color: theme.colors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showOutlinedDialog(BuildContext context, CrownThemeData theme) {
    showDialog(
      context: context,
      builder: (context) => CrownAlertDialog(
        title: CrownText(
          'Outlined Dialog',
          style: ComponentStyles.cardTitleText(theme),
        ),
        content: CrownText(
          'This dialog uses the outlined style with a border.',
          style: ComponentStyles.cardDescriptionText(theme),
        ),
        customStyle: CrownAlertDialogStyle.outlined(theme),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: CrownText(
              'Close',
              style: TextStyle(
                color: theme.colors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCompactDialog(BuildContext context, CrownThemeData theme) {
    showDialog(
      context: context,
      builder: (context) => CrownAlertDialog(
        title: CrownText(
          'Compact',
          style: ComponentStyles.cardTitleText(theme),
        ),
        content: CrownText(
          'This is a compact dialog with minimal padding.',
          style: ComponentStyles.cardDescriptionText(theme),
        ),
        customStyle: CrownAlertDialogStyle.compact(theme),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: CrownText(
              'OK',
              style: TextStyle(
                color: theme.colors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
