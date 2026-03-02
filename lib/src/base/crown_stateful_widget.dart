import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// CrownStatefulWidget
/// 
/// Base class for stateful widgets with built-in Crown theme support
/// 
/// Automatically provides:
/// - Theme access via [theme] property in state
/// - Safe and convenient widget building
/// - Consistent structure across app
/// - Easy rebuild on theme change
/// 
/// Usage:
/// `dart
/// class MyWidget extends CrownStatefulWidget {
///   @override
///   State<MyWidget> createState() => _MyWidgetState();
/// }
/// 
/// class _MyWidgetState extends CrownState<MyWidget> {
///   @override
///   Widget build(BuildContext context) {
///     // Access theme via this.theme
///     return CrownButton('Click me', onPressed: () {});
///   }
/// }
/// `

abstract class CrownStatefulWidget extends StatefulWidget {
  const CrownStatefulWidget({Key? key}) : super(key: key);
}

/// Base state class with automatic theme support
/// 
/// Provides:
/// - [theme] property for easy theme access
/// - Automatic theme change detection
/// - Clean state management

abstract class CrownState<T extends CrownStatefulWidget> extends State<T> {
  /// Get current theme without calling CrownTheme.of(context)
  CrownThemeData get theme => CrownTheme.of(context);

  /// Override this to build your widget with automatic theme support
  @override
  Widget build(BuildContext context);

  /// Listen to theme changes if needed
  /// Override this method to react to theme changes
  void onThemeChanged(CrownThemeData oldTheme, CrownThemeData newTheme) {}

  /// Helper method to show snackbar with theme styling
  void showSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 2),
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
        action: action,
        backgroundColor: theme.colors.primary,
      ),
    );
  }

  /// Helper method to show themed dialog
  void showCrownDialog({
    required String title,
    required String message,
    String confirmText = 'OK',
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          title,
          style: theme.typography.headingMedium.copyWith(color: theme.colors.textPrimary),
        ),
        content: Text(
          message,
          style: theme.typography.bodyMedium.copyWith(color: theme.colors.textSecondary),
        ),
        backgroundColor: theme.colors.surface,
        actions: [
          if (cancelText != null)
            TextButton(
              onPressed: onCancel,
              child: Text(cancelText, style: TextStyle(color: theme.colors.textSecondary)),
            ),
          TextButton(
            onPressed: onConfirm,
            child: Text(confirmText, style: TextStyle(color: theme.colors.primary)),
          ),
        ],
      ),
    );
  }
}
