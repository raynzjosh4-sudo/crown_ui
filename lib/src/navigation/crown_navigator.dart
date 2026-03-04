import 'package:flutter/material.dart';

/// Simple navigation helper for Crown UI apps
/// Makes it easy for beginners to navigate between screens
class CrownNavigator {
  /// Navigate to a new page
  static void to(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// Navigate to a new page with replacement (removes previous page from stack)
  static void replace(BuildContext context, Widget page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// Go back to previous page
  static void back(BuildContext context) {
    Navigator.pop(context);
  }

  /// Go back multiple times
  static void backMultiple(BuildContext context, int times) {
    for (int i = 0; i < times; i++) {
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }
    }
  }

  /// Navigate to named route
  static void toNamed(BuildContext context, String routeName,
      {Object? arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  /// Check if can go back
  static bool canGoBack(BuildContext context) {
    return Navigator.canPop(context);
  }

  /// Navigate and wait for result
  static Future<T?> toForResult<T>(
      BuildContext context, Widget Function(BuildContext) builder) {
    return Navigator.push<T>(
      context,
      MaterialPageRoute(builder: builder),
    );
  }
}

/// Simple page wrapper for consistency
/// Use this as base for all pages in your app
abstract class SimplePage extends StatelessWidget {
  final String? title;
  final bool showAppBar;
  final bool showBackButton;
  final List<Widget>? actions;

  const SimplePage({
    Key? key,
    this.title,
    this.showAppBar = true,
    this.showBackButton = true,
    this.actions,
  }) : super(key: key);

  /// Build the page content
  Widget buildContent(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? AppBar(
              title: title != null ? Text(title!) : null,
              automaticallyImplyLeading: showBackButton,
              actions: actions,
              elevation: 0,
            )
          : null,
      body: buildContent(context),
    );
  }
}
