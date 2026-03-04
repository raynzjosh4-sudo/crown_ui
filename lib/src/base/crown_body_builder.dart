import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// PageBody - for separating page bodies into their own files
///
/// Usage in separate file (pages/home_body.dart):
/// `dart
/// class HomepageBody extends PageBody {
///   build(theme) {
///     return Column(
///       children: [
///         CrownText.heading('Home', color: theme.colors.primary),
///       ],
///     );
///   }
/// }
/// `
///
/// Then use in your page:
/// `dart
/// class HomePage extends CrownPage {
///   String get title => 'Home';
///
///   build(theme) => HomepageBody().build(theme);
/// }
/// `

abstract class PageBody {
  const PageBody();

  /// Build body with theme
  Widget build(CrownThemeData theme);

  /// Get theme from context (if needed in body)
  static CrownThemeData getTheme(BuildContext context) =>
      CrownTheme.of(context);

  /// Show snackbar from body
  static void showSnack(BuildContext context, String message) {
    final theme = CrownTheme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: theme.colors.primary,
      ),
    );
  }
}
