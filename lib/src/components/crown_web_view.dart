import 'package:flutter/material.dart';

/// A placeholder for CrownWebView component
///
/// This component requires the 'webview_flutter' plugin to be added to pubspec.yaml.
/// To use webview functionality, add: webview_flutter: ^4.0.0 to your pubspec.yaml
class CrownWebView extends StatelessWidget {
  /// URL to load in the webview
  final String url;

  /// The width of the webview
  final double? width;

  /// The height of the webview
  final double? height;

  /// Called when the page started loading
  final VoidCallback? onPageStarted;

  /// Called when the page finished loading
  final VoidCallback? onPageFinished;

  /// Called when the page has an error loading
  final ValueChanged<String>? onError;

  /// Whether JavaScript is enabled
  final bool javascriptEnabled;

  const CrownWebView({
    Key? key,
    required this.url,
    this.width,
    this.height,
    this.onPageStarted,
    this.onPageFinished,
    this.onError,
    this.javascriptEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 400,
      color: Colors.grey[200],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.language, color: Colors.grey[600], size: 48),
            SizedBox(height: 16),
            Text(
              'CrownWebView',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Add "webview_flutter" plugin to use this component',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'URL: $url',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 11,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
