import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_alert_dialog_style.dart';

/// A theme-aware alert dialog for Crown UI
///
/// Provides a customizable alert dialog with Crown UI theming and styling capabilities.
/// Wraps Flutter's [AlertDialog] with additional features like custom animations,
/// styling options, and theme integration.
///
/// Usage:
/// ```dart
/// CrownAlertDialog.show(
///   context: context,
///   title: 'Confirm Action',
///   content: 'Are you sure you want to continue?',
///   actions: [
///     CrownAlertDialogAction(
///       label: 'Cancel',
///       onPressed: () => Navigator.pop(context),
///     ),
///     CrownAlertDialogAction(
///       label: 'Confirm',
///       isDefault: true,
///       onPressed: () => Navigator.pop(context),
///     ),
///   ],
/// )
/// ```
class CrownAlertDialog extends StatelessWidget {
  /// The title widget of the dialog
  final Widget? title;

  /// The content widget of the dialog
  final Widget? content;

  /// List of action widgets (typically buttons)
  final List<Widget>? actions;

  /// Custom style for the dialog
  final CrownAlertDialogStyle? customStyle;

  /// Whether the dialog can be dismissed by tapping outside
  final bool barrierDismissible;

  /// Custom shape for the dialog
  final ShapeBorder? shape;

  /// The elevation of the dialog
  final double? elevation;

  /// The background color of the dialog
  final Color? backgroundColor;

  /// The padding of the content
  final EdgeInsets? contentPadding;

  /// The padding of the title
  final EdgeInsets? titlePadding;

  /// The padding of the button bar
  final EdgeInsets? actionsPadding;

  /// Clip behavior
  final Clip clipBehavior;

  const CrownAlertDialog({
    Key? key,
    this.title,
    this.content,
    this.actions,
    this.customStyle,
    this.barrierDismissible = false,
    this.shape,
    this.elevation,
    this.backgroundColor,
    this.contentPadding,
    this.titlePadding,
    this.actionsPadding,
    this.clipBehavior = Clip.none,
  }) : super(key: key);

  /// Show this alert dialog
  static Future<T?> show<T>(
    BuildContext context, {
    Widget? title,
    Widget? content,
    List<CrownAlertDialogAction>? actions,
    CrownAlertDialogStyle? customStyle,
    bool barrierDismissible = false,
    bool useRootNavigator = true,
    String? routeSettings,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      useRootNavigator: useRootNavigator,
      routeSettings:
          routeSettings != null ? RouteSettings(name: routeSettings) : null,
      builder: (context) => CrownAlertDialog(
        title: title,
        content: content,
        actions: actions
            ?.map(
              (action) => TextButton(
                onPressed: action.onPressed,
                child: CrownText(
                  action.label,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
            )
            .toList(),
        customStyle: customStyle,
        barrierDismissible: barrierDismissible,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownAlertDialogStyle.defaultStyle(theme);

    return Dialog(
      backgroundColor: backgroundColor ?? style.backgroundColor,
      elevation: elevation ?? style.elevation,
      shape: shape ?? style.shape,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor ?? style.backgroundColor,
          borderRadius: (shape as RoundedRectangleBorder?)?.borderRadius ??
              (style.shape as RoundedRectangleBorder?)?.borderRadius,
        ),
        child: AlertDialog(
          title: title,
          content: content,
          actions: actions,
          backgroundColor: backgroundColor ?? style.backgroundColor,
          elevation: elevation ?? style.elevation,
          shape: shape ?? style.shape,
          contentPadding: contentPadding ?? style.contentPadding,
          titlePadding: titlePadding ?? style.titlePadding,
          actionsPadding: actionsPadding ?? style.actionsPadding,
          clipBehavior: clipBehavior,
          titleTextStyle: style.titleTextStyle,
          contentTextStyle: style.contentTextStyle,
          actionsAlignment: style.actionsAlignment,
        ),
      ),
    );
  }
}

/// An action button for [CrownAlertDialog]
class CrownAlertDialogAction {
  /// The label text of the action button
  final String label;

  /// Called when the action button is pressed
  final VoidCallback onPressed;

  /// Whether this is the default action
  final bool isDefault;

  /// Whether this action is destructive (e.g., delete)
  final bool isDestructive;

  const CrownAlertDialogAction({
    required this.label,
    required this.onPressed,
    this.isDefault = false,
    this.isDestructive = false,
  });
}
