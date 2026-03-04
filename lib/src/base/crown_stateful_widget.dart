import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// Simple stateful widget base for Crown UI
///
/// Combines StatefulWidget and State into a single easy-to-use class.
/// Just add your state fields and implement buildWidget().
/// No need to override or create separate state classes.
///
/// Usage:
/// `dart
/// class Counter extends CrownStatefulWidget {
///   int count = 0;
///
///   buildWidget(BuildContext context, CrownThemeData theme) {
///     return Column(
///       children: [
///         Text('\$count'),
///         Button('Increment', onPressed: () {
///           // Use callSetState to trigger rebuild
///           callSetState(() => count++);
///         }),
///       ],
///     );
///   }
/// }
/// `

abstract class CrownStatefulWidget extends StatefulWidget {
  CrownStatefulWidget({Key? key}) : super(key: key);

  late Function(VoidCallback) callSetState;

  /// Build your widget. Wrap with CrownTheme if you need theme access.
  /// No @override needed.
  Widget buildWidget(BuildContext context);

  @override
  State<CrownStatefulWidget> createState() => _CrownStatefulWidgetState();
}

class _CrownStatefulWidgetState extends State<CrownStatefulWidget> {
  @override
  void initState() {
    super.initState();
    // Bind setState to the widget
    widget.callSetState = setState;
  }

  @override
  Widget build(BuildContext context) {
    return widget.buildWidget(context);
  }
}
