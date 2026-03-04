import 'package:flutter/material.dart';
import '../theme/crown_theme_data.dart';
import '../base/crown_stateless_widget.dart';

/// A widget that centers its child widget.
///
/// This is a theme-aware wrapper around Flutter's [Center] widget.
/// It centers the child widget both horizontally and vertically.
///
/// Usage:
/// ```dart
/// CrownCenter(
///   child: CrownText('Centered text'),
/// )
/// ```
class CrownCenter extends CrownStatelessWidget {
  /// The widget to be centered.
  final Widget child;

  /// The alignment to use for centering.
  /// Defaults to [Alignment.center].
  final Alignment alignment;

  const CrownCenter({
    Key? key,
    required this.child,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget buildWithTheme(BuildContext context, CrownThemeData theme) {
    return Center(
      child: child,
    );
  }
}
