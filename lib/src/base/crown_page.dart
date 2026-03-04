import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// Ultra-simple page/widget base class
/// No @override needed, no parameters, auto-inject everything
///
/// Usage:
/// `dart
/// class MyPage extends CrownPage {
///   String get title => 'My Page';
///
///   build() {
///     return CrownText('Hello');
///   }
/// }
/// `

abstract class CrownPage extends StatelessWidget {
  const CrownPage({Key? key}) : super(key: key);

  /// Get theme automatically
  static CrownThemeData _getTheme(BuildContext context) =>
      CrownTheme.of(context);

  /// Page title (optional)
  String get title => '';

  /// Page body - just return widgets, no parameters!
  Widget body(CrownThemeData theme);

  /// Show snackbar easily
  void showSnack(BuildContext context, String message) {
    final theme = CrownTheme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: theme.colors.primary,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  /// Show dialog easily (named `showAlert` to avoid colliding with Flutter API)
  void showAlert(
    BuildContext context, {
    required String title,
    required String message,
    String confirmText = 'OK',
    VoidCallback? onConfirm,
  }) {
    final theme = CrownTheme.of(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        backgroundColor: theme.colors.surface,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              onConfirm?.call();
            },
            child: Text(confirmText,
                style: TextStyle(color: theme.colors.primary)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    return body(theme);
  }
}

/// Even simpler - just a page body
abstract class CrownPageBody extends StatelessWidget {
  const CrownPageBody({Key? key}) : super(key: key);

  /// Just return your widgets!
  Widget buildBody(CrownThemeData theme);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    return buildBody(theme);
  }
}
