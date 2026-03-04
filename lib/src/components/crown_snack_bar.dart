import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// A helper class to show Crown-themed snackbars
///
/// Provides a convenient way to display snackbars with Crown theme styling.
class CrownSnackBar {
  /// Show a success snackbar
  static void showSuccess(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 4),
    SnackBarAction? action,
  }) {
    _show(context, message, duration, action, _SnackBarType.success);
  }

  /// Show an error snackbar
  static void showError(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 4),
    SnackBarAction? action,
  }) {
    _show(context, message, duration, action, _SnackBarType.error);
  }

  /// Show an info snackbar
  static void showInfo(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
  }) {
    _show(context, message, duration, action, _SnackBarType.info);
  }

  /// Show a warning snackbar
  static void showWarning(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 4),
    SnackBarAction? action,
  }) {
    _show(context, message, duration, action, _SnackBarType.warning);
  }

  /// Internal method to show snackbar
  static void _show(
    BuildContext context,
    String message,
    Duration duration,
    SnackBarAction? action,
    _SnackBarType type,
  ) {
    final theme = CrownTheme.of(context);

    Color backgroundColor;
    Icon icon;

    switch (type) {
      case _SnackBarType.success:
        backgroundColor = Colors.green;
        icon = Icon(Icons.check_circle, color: Colors.white);
        break;
      case _SnackBarType.error:
        backgroundColor = Colors.red;
        icon = Icon(Icons.error, color: Colors.white);
        break;
      case _SnackBarType.info:
        backgroundColor = theme.colors.primary;
        icon = Icon(Icons.info, color: Colors.white);
        break;
      case _SnackBarType.warning:
        backgroundColor = Colors.orange;
        icon = Icon(Icons.warning, color: Colors.white);
        break;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            icon,
            SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        duration: duration,
        action: action,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

enum _SnackBarType { success, error, info, warning }
