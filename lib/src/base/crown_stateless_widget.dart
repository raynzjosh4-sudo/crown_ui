import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// CrownStatelessWidget
///
/// Base class for stateless widgets with built-in Crown theme support
///
/// Automatically provides:
/// - Theme access via [theme] property
/// - Safe and convenient widget building
/// - Consistent structure across app
///
/// Usage:
/// `dart
/// class MyWidget extends CrownStatelessWidget {
///   @override
///   Widget buildWithTheme(BuildContext context, CrownThemeData theme) {
///     return CrownButton('Click me', onPressed: () {});
///   }
/// }
/// `

abstract class CrownStatelessWidget extends StatelessWidget {
  const CrownStatelessWidget({Key? key}) : super(key: key);

  /// Build method with theme injected automatically.
  ///
  /// Implement `buildWithTheme` instead of overriding `build` directly.
  /// The framework `build(BuildContext)` is implemented for you and will
  /// inject the resolved `CrownThemeData` as the second parameter.
  Widget buildWithTheme(BuildContext context, CrownThemeData theme);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    return buildWithTheme(context, theme);
  }
}
