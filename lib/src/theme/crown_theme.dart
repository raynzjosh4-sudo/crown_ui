import 'package:flutter/material.dart';
import 'crown_theme_data.dart';

class CrownTheme extends InheritedWidget {
  final CrownThemeData data;

  const CrownTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  static CrownThemeData of(BuildContext context) {
    final CrownTheme? result =
        context.dependOnInheritedWidgetOfExactType<CrownTheme>();
    assert(
      result != null,
      'No CrownTheme found in context. Make sure to wrap your app with CrownTheme.',
    );
    return result!.data;
  }

  static CrownThemeData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CrownTheme>()?.data;
  }

  @override
  bool updateShouldNotify(CrownTheme oldWidget) => data != oldWidget.data;
}
