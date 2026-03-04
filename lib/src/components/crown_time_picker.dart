import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../base/crown_stateless_widget.dart';
import '../components/crown_center.dart';
import '../styles/crown_time_picker_style.dart';

/// A theme-aware time picker component that allows users to select a time.
///
/// CrownTimePicker displays hours and minutes in a styled picker interface.
/// It supports both 12-hour and 24-hour time formats.
///
/// Example:
/// ```dart
/// CrownTimePicker(
///   initialTime: TimeOfDay.now(),
///   onTimeChanged: (TimeOfDay time) {
///     print('Selected time: ${time.hour}:${time.minute}');
///   },
/// )
/// ```
class CrownTimePicker extends CrownStatelessWidget {
  /// The initial time displayed in the picker.
  final TimeOfDay? initialTime;

  /// Callback when time is selected.
  final ValueChanged<TimeOfDay>? onTimeChanged;

  /// Callback when time selection is confirmed.
  final ValueChanged<TimeOfDay>? onTimeConfirmed;

  /// Optional style configuration.
  final CrownTimePickerStyle? style;

  const CrownTimePicker({
    super.key,
    this.initialTime,
    this.onTimeChanged,
    this.onTimeConfirmed,
    this.style,
  });

  @override
  Widget buildWithTheme(BuildContext context, CrownThemeData theme) {
    final effectiveStyle = style ?? CrownTimePickerStyle.defaultStyle();
    final time = initialTime ?? TimeOfDay.now();

    return CrownContainer(
      backgroundColor: effectiveStyle.backgroundColor,
      borderRadius: effectiveStyle.borderRadius ?? 8,
      child: CrownPadding(
        style: CrownPaddingStyle.defaultStyle(theme).copyWith(
          padding: effectiveStyle.padding ?? const EdgeInsets.all(16),
        ),
        child: CrownColumn(
          style: CrownColumnStyle.center(),
          children: [
            _buildHeader(context, effectiveStyle, time, theme),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildTimeSelector(context, effectiveStyle, time, theme),
            CrownSizedBox(
              style: CrownSizedBoxStyle.vertical(theme.spacing.lg),
            ),
            _buildConfirmButton(context, effectiveStyle, theme),
          ],
        ),
      ),
    );
  }

  /// Builds the header displaying the current time format.
  Widget _buildHeader(
    BuildContext context,
    CrownTimePickerStyle style,
    TimeOfDay time,
    CrownThemeData theme,
  ) {
    final timeString = _formatTime(time, style.use24HourFormat);

    return CrownColumn(
      style: CrownColumnStyle.center(),
      children: [
        CrownText(
          'Select Time',
          style: style.resolvedHeaderTextStyle,
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
        ),
        CrownText(
          timeString,
          style: style.resolvedTimeTextStyle,
        ),
      ],
    );
  }

  /// Builds the time selector with hour and minute spinners.
  Widget _buildTimeSelector(
    BuildContext context,
    CrownTimePickerStyle style,
    TimeOfDay time,
    CrownThemeData theme,
  ) {
    return CrownRow(
      style: CrownRowStyle.center(),
      children: [
        // Hour selector
        _buildTimeUnit(
          context,
          style,
          time.hour,
          maxValue: style.use24HourFormat ? 23 : 12,
          label: 'Hour',
          theme: theme,
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.horizontal(theme.spacing.sm),
        ),
        // Separator
        CrownText(
          ':',
          style: style.resolvedSeparatorTextStyle,
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.horizontal(theme.spacing.sm),
        ),
        // Minute selector
        _buildTimeUnit(
          context,
          style,
          time.minute,
          maxValue: 59,
          label: 'Minute',
          theme: theme,
        ),
      ],
    );
  }

  /// Builds an individual time unit (hour, minute, or second) selector.
  Widget _buildTimeUnit(
    BuildContext context,
    CrownTimePickerStyle style,
    int currentValue, {
    required int maxValue,
    required String label,
    required CrownThemeData theme,
  }) {
    return CrownColumn(
      style: CrownColumnStyle.center(),
      children: [
        CrownContainer(
          width: style.timeBoxWidth,
          height: style.timeBoxHeight,
          backgroundColor: style.headerColor,
          borderRadius: style.borderRadius ?? 8,
          style: CrownContainerStyle(
            backgroundColor: style.headerColor,
            borderRadius: style.borderRadius ?? 8,
            border: Border.all(
              color: style.primaryColor ?? Colors.blue,
              width: 2,
            ),
          ),
          child: CrownCenter(
            child: CrownText(
              currentValue.toString().padLeft(2, '0'),
              style: style.resolvedTimeTextStyle.copyWith(
                color: style.selectedTimeTextColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        CrownSizedBox(
          style: CrownSizedBoxStyle.vertical(theme.spacing.sm),
        ),
        CrownText(
          label,
          style: TextStyle(
            color: style.timeTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  /// Builds the confirm button.
  Widget _buildConfirmButton(
    BuildContext context,
    CrownTimePickerStyle style,
    CrownThemeData theme,
  ) {
    return CrownButton(
      'Confirm',
      onPressed: () {
        onTimeConfirmed?.call(initialTime ?? TimeOfDay.now());
      },
      customStyle: CrownButtonStyle.primary(theme).copyWith(
        backgroundColor: style.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
    );
  }

  /// Formats the time as a string.
  String _formatTime(TimeOfDay time, bool use24HourFormat) {
    final hour = use24HourFormat
        ? time.hour.toString().padLeft(2, '0')
        : (time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod)
            .toString()
            .padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    final period = use24HourFormat ? '' : ' ${time.period.name.toUpperCase()}';

    return '$hour:$minute$period';
  }
}
