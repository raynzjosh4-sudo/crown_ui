import 'package:crown_ui/src/styles/crown_badge_style.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// A themed badge component
///
/// Provides a notification badge for counters, notifications, or status indicators
/// with Crown theme styling and customizable appearance.
class CrownBadge extends StatelessWidget {
  /// Badge content (typically a number or text)
  final String? label;

  /// Widget to display inside the badge
  final Widget? child;

  /// Custom style for the badge
  final CrownBadgeStyle? customStyle;

  /// Whether the badge is visible
  final bool isVisible;

  /// Offset from the anchor widget
  final Offset offset;

  /// Badge size (small, medium, large)
  final String sizeVariant;

  const CrownBadge({
    Key? key,
    this.label,
    this.child,
    this.customStyle,
    this.isVisible = true,
    this.offset = const Offset(0, 0),
    this.sizeVariant = 'medium',
  }) : super(key: key);

  /// Create a badge with a number
  factory CrownBadge.count(
    int count, {
    CrownBadgeStyle? customStyle,
    bool isVisible = true,
    Offset offset = const Offset(0, 0),
  }) {
    return CrownBadge(
      label: count > 99 ? '99+' : count.toString(),
      customStyle: customStyle,
      isVisible: isVisible,
      offset: offset,
    );
  }

  /// Create a dot badge
  factory CrownBadge.dot({
    CrownBadgeStyle? customStyle,
    bool isVisible = true,
    Offset offset = const Offset(0, 0),
  }) {
    return CrownBadge(
      label: '',
      customStyle: customStyle,
      isVisible: isVisible,
      offset: offset,
      sizeVariant: 'small',
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownBadgeStyle.defaultStyle(theme);

    if (!isVisible) {
      return child ?? const SizedBox.shrink();
    }

    return Badge(
      label: child ?? Text(label ?? '', style: style.labelStyle),
      backgroundColor: style.backgroundColor,
      textColor: style.textColor,
      smallSize: style.smallSize,
      largeSize: style.largeSize,
      alignment: style.alignment,
      offset: offset,
      isLabelVisible: label != null && label!.isNotEmpty,
    );
  }
}
