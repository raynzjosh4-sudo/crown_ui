import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// A StatefulBuilder with automatic Crown theme injection
///
/// Simplifies building widgets that need both state management and theme access.
/// Similar to StatefulBuilder but passes the resolved CrownThemeData to the builder.
///
/// Usage:
/// `dart
/// CrownStatefulBuilder(
///   builder: (context, setState, theme) {
///     return Column(
///       children: [
///         CrownButton(
///           'Click me',
///           onPressed: () => setState(() { /* update state */ }),
///         ),
///       ],
///     );
///   },
/// )
/// `
class CrownStatefulBuilder extends StatefulWidget {
  final Widget Function(
      BuildContext context, StateSetter setState, CrownThemeData theme) builder;

  const CrownStatefulBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  State<CrownStatefulBuilder> createState() => _CrownStatefulBuilderState();
}

class _CrownStatefulBuilderState extends State<CrownStatefulBuilder> {
  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    return widget.builder(context, setState, theme);
  }
}
