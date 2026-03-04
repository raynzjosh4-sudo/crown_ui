import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_bottom_sheet_style.dart';

/// A theme-aware bottom sheet for Crown UI
///
/// Provides a customizable bottom sheet with Crown UI theming and styling capabilities.
/// Wraps Flutter's [showModalBottomSheet] with additional features like custom animations,
/// styling options, and theme integration.
///
/// Usage:
/// ```dart
/// CrownBottomSheet.show(
///   context: context,
///   child: CrownColumn(
///     style: CrownColumnStyle.start(),
///     children: [
///       CrownText('Sheet Title'),
///       CrownText('Sheet content goes here'),
///     ],
///   ),
/// )
/// ```
class CrownBottomSheet extends StatelessWidget {
  /// The child widget to display in the bottom sheet
  final Widget child;

  /// Custom style for the bottom sheet
  final CrownBottomSheetStyle? customStyle;

  /// Whether the sheet can be dismissed by tapping outside
  final bool isDismissible;

  /// Custom shape for the bottom sheet
  final ShapeBorder? shape;

  /// The elevation of the sheet
  final double? elevation;

  /// The background color of the sheet
  final Color? backgroundColor;

  /// The padding of the sheet
  final EdgeInsets? padding;

  /// Whether to enable drag handle
  final bool enableDrag;

  /// Custom drag handle widget
  final Widget? dragHandle;

  /// Clip behavior
  final Clip clipBehavior;

  /// Custom constraints for the sheet
  final BoxConstraints? constraints;

  const CrownBottomSheet({
    Key? key,
    required this.child,
    this.customStyle,
    this.isDismissible = true,
    this.shape,
    this.elevation,
    this.backgroundColor,
    this.padding,
    this.enableDrag = true,
    this.dragHandle,
    this.clipBehavior = Clip.none,
    this.constraints,
  }) : super(key: key);

  /// Show this bottom sheet modally
  static Future<T?> show<T>(
    BuildContext context, {
    required Widget child,
    CrownBottomSheetStyle? customStyle,
    bool isDismissible = true,
    bool useRootNavigator = false,
    bool enableDrag = true,
    double? elevation,
    Color? backgroundColor,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isDismissible: isDismissible,
      useRootNavigator: useRootNavigator,
      enableDrag: enableDrag,
      elevation: elevation,
      backgroundColor: backgroundColor,
      builder: (context) => CrownBottomSheet(
        child: child,
        customStyle: customStyle,
        isDismissible: isDismissible,
        enableDrag: enableDrag,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownBottomSheetStyle.defaultStyle(theme);

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? style.backgroundColor,
        borderRadius: (shape as RoundedRectangleBorder?)?.borderRadius ??
            (style.shape as RoundedRectangleBorder?)?.borderRadius,
        boxShadow: style.boxShadow,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (enableDrag) _buildDragHandle(context, style),
            Padding(
              padding: padding ?? style.padding,
              child: child,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDragHandle(
    BuildContext context,
    CrownBottomSheetStyle style,
  ) {
    if (dragHandle != null) {
      return dragHandle!;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Container(
          width: 40,
          height: 4,
          decoration: BoxDecoration(
            color: style.dragHandleColor,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}
