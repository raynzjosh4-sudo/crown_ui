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
///   Widget build(BuildContext context, CrownThemeData theme) {
///     return CrownButton('Click me', onPressed: () {});
///   }
/// }
/// `

abstract class CrownStatelessWidget extends StatelessWidget {
  const CrownStatelessWidget({Key? key}) : super(key: key);

  /// Build method with theme injected automatically
  /// 
  /// Theme is already retrieved and passed to you
  /// No need to call CrownTheme.of(context) manually
  Widget build(BuildContext context, CrownThemeData theme);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    return build(context, theme);
  }
}
