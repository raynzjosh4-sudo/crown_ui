import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';

/// A theme-aware switch for Crown UI
///
/// Provides platform-specific defaults for iOS, Android, Windows, and Linux.
///
/// Usage:
/// ```dart
/// CrownSwitch(
///   value: isEnabled,
///   onChanged: (value) => setState(() => isEnabled = value),
///   style: CrownSwitchStyle.ios(),
/// )
/// ```
class CrownSwitch extends CrownStatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final CrownSwitchStyle? style;
  final bool autofocus;
  final MaterialTapTargetSize? materialTapTargetSize;
  final Color? thumbColor;
  final Color? trackColor;

  const CrownSwitch({
    Key? key,
    required this.value,
    this.onChanged,
    this.style,
    this.autofocus = false,
    this.materialTapTargetSize,
    this.thumbColor,
    this.trackColor,
  }) : super(key: key);

  @override
  Widget buildWithTheme(BuildContext context, CrownThemeData theme) {
    final resolvedStyle = style ?? CrownSwitchStyle.defaultStyle();

    // Determine colors
    final activeThumb = thumbColor ?? resolvedStyle.thumbColor ?? Colors.white;
    final inactiveThumb = resolvedStyle.inactiveColor ?? Colors.grey.shade400;
    final activeTrack = trackColor ?? resolvedStyle.activeTrackColor;
    final inactiveTrack = trackColor ?? resolvedStyle.inactiveTrackColor;

    final switchWidth = resolvedStyle.switchWidth ?? 48.0;
    final switchHeight = resolvedStyle.switchHeight ?? 24.0;
    final thumbRadius = switchHeight / 2;
    final padding = 2.0;
    final thumbSize = switchHeight - (padding * 2);

    // Calculate thumb position
    final thumbPositionLeft =
        value ? (switchWidth - thumbSize - padding) : padding;

    return GestureDetector(
      onTap: onChanged != null ? () => onChanged!(!value) : null,
      child: Container(
        width: switchWidth,
        height: switchHeight,
        decoration: BoxDecoration(
          color: value
              ? (activeTrack ?? resolvedStyle.activeColor)
              : (inactiveTrack ?? inactiveThumb),
          borderRadius: BorderRadius.circular(thumbRadius),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              left: thumbPositionLeft,
              top: padding,
              child: Container(
                width: thumbSize,
                height: thumbSize,
                decoration: BoxDecoration(
                  color: value ? activeThumb : inactiveThumb,
                  borderRadius: BorderRadius.circular(thumbRadius - padding),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(25),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
