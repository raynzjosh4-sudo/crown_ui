import 'package:flutter/material.dart';
import '../styles/crown_refresh_indicator_style.dart';
import '../theme/crown_theme.dart';

/// A themed refresh indicator component
///
/// Provides a wrapper around Flutter's RefreshIndicator
/// with Crown theme styling and customization options.
class CrownRefreshIndicator extends StatelessWidget {
  /// The child widget to wrap with refresh indicator
  final Widget child;

  /// Custom style for the refresh indicator
  final CrownRefreshIndicatorStyle? customStyle;

  /// Callback function when refresh is triggered
  final Future<void> Function() onRefresh;

  /// Enable or disable the refresh indicator
  final bool enabled;

  /// Distance to trigger refresh
  final double? displacement;

  /// Edge offset for the refresh indicator
  final EdgeInsets? edgeOffset;

  const CrownRefreshIndicator({
    Key? key,
    required this.child,
    required this.onRefresh,
    this.customStyle,
    this.enabled = true,
    this.displacement,
    this.edgeOffset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownRefreshIndicatorStyle.defaultStyle(theme);

    return RefreshIndicator(
      onRefresh: enabled ? onRefresh : () async {},
      displacement: displacement ?? style.displacement,
      strokeWidth: style.strokeWidth,
      color: style.color,
      backgroundColor: style.backgroundColor,
      edgeOffset: edgeOffset?.top ?? 0,
      child: child,
    );
  }
}
