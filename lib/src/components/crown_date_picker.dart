import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../styles/crown_date_picker_style.dart';
import '../base/crown_stateless_widget.dart';

/// A theme-aware date picker for Crown UI
///
/// Provides platform-specific defaults for iOS, Android, Windows, and Linux.
/// Shows a custom calendar interface with smooth animations.
///
/// Usage:
/// ```dart
/// CrownDatePicker(
///   selectedDate: DateTime.now(),
///   onDateSelected: (date) => setState(() => selectedDate = date),
///   style: CrownDatePickerStyle.ios(),
/// )
/// ```
class CrownDatePicker extends CrownStatelessWidget {
  final DateTime selectedDate;
  final ValueChanged<DateTime>? onDateSelected;
  final CrownDatePickerStyle? style;
  final DateTime? firstDate;
  final DateTime? lastDate;

  const CrownDatePicker({
    Key? key,
    required this.selectedDate,
    this.onDateSelected,
    this.style,
    this.firstDate,
    this.lastDate,
  }) : super(key: key);

  @override
  Widget buildWithTheme(BuildContext context, CrownThemeData theme) {
    final resolvedStyle = style ?? CrownDatePickerStyle.defaultStyle();
    final initialDate = DateTime.now();

    return CrownContainer(
      backgroundColor: resolvedStyle.backgroundColor,
      borderRadius: resolvedStyle.borderRadius ?? 8,
      child: CrownColumn(
        style: CrownColumnStyle.start(),
        children: [
          _buildHeader(resolvedStyle, theme, initialDate),
          _buildWeekdayHeader(resolvedStyle, theme),
          _buildCalendarGrid(resolvedStyle, theme, initialDate),
          if (resolvedStyle.showTodayButton)
            _buildTodayButton(resolvedStyle, theme),
        ],
      ),
    );
  }

  Widget _buildHeader(
      CrownDatePickerStyle style, CrownThemeData theme, DateTime displayDate) {
    return CrownContainer(
      backgroundColor: style.headerColor,
      padding: style.padding ?? const EdgeInsets.all(16),
      child: CrownRow(
        style: CrownRowStyle.spaceBetween(),
        children: [
          CrownIcon(
            Icons.chevron_left,
            color: style.primaryColor,
            size: 24,
            onTap: () {},
            isButton: true,
          ),
          CrownText(
            _formatMonthYear(displayDate),
            style: style.resolvedHeaderTextStyle,
          ),
          CrownIcon(
            Icons.chevron_right,
            color: style.primaryColor,
            size: 24,
            onTap: () {},
            isButton: true,
          ),
        ],
      ),
    );
  }

  Widget _buildWeekdayHeader(CrownDatePickerStyle style, CrownThemeData theme) {
    final weekdays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

    return CrownPadding(
      style: CrownPaddingStyle(
        top: style.padding?.top ?? 8,
        bottom: style.padding?.bottom ?? 8,
        left: style.padding?.left ?? 8,
        right: style.padding?.right ?? 8,
      ),
      child: CrownRow(
        style: CrownRowStyle.spaceEvenly(),
        children: weekdays.map((day) {
          return CrownContainer(
            width: style.dayBoxWidth,
            height: style.dayBoxHeight,
            child: CrownCenter(
              child: CrownText(
                day,
                style: style.resolvedWeekdayHeaderTextStyle,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCalendarGrid(
      CrownDatePickerStyle style, CrownThemeData theme, DateTime displayDate) {
    final firstDayOfMonth = DateTime(displayDate.year, displayDate.month, 1);
    final lastDayOfMonth = DateTime(displayDate.year, displayDate.month + 1, 0);
    final daysInMonth = lastDayOfMonth.day;
    final firstWeekday = firstDayOfMonth.weekday % 7; // 0 = Sunday

    final dayWidgets = <Widget>[];

    // Empty cells for days before month starts
    for (int i = 0; i < firstWeekday; i++) {
      dayWidgets.add(
        CrownContainer(
          width: style.dayBoxWidth,
          height: style.dayBoxHeight,
        ),
      );
    }

    // Day cells
    for (int day = 1; day <= daysInMonth; day++) {
      final date = DateTime(displayDate.year, displayDate.month, day);
      final isSelected = _isSameDay(date, selectedDate);
      final isToday = _isSameDay(date, DateTime.now());

      dayWidgets.add(
        GestureDetector(
          onTap: () => onDateSelected?.call(date),
          child: CrownContainer(
            width: style.dayBoxWidth,
            height: style.dayBoxHeight,
            backgroundColor: isSelected
                ? style.selectedDayColor
                : (isToday ? style.todayColor?.withAlpha(51) : null),
            borderRadius: (style.borderRadius ?? 4) / 2,
            child: Container(
              decoration: isToday && !isSelected
                  ? BoxDecoration(
                      border: Border.all(
                        color: style.todayColor ?? Colors.blue,
                        width: 2,
                      ),
                      borderRadius:
                          BorderRadius.circular((style.borderRadius ?? 4) / 2),
                    )
                  : null,
              child: CrownCenter(
                child: CrownText(
                  '$day',
                  style: isSelected
                      ? style.resolvedSelectedDayNumberTextStyle
                      : style.resolvedDayNumberTextStyle,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return CrownPadding(
      style: CrownPaddingStyle(
        top: style.padding?.top ?? 8,
        bottom: style.padding?.bottom ?? 8,
        left: style.padding?.left ?? 8,
        right: style.padding?.right ?? 8,
      ),
      child: Container(
        child: GridView.count(
          crossAxisCount: 7,
          childAspectRatio: 1,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: dayWidgets,
        ),
      ),
    );
  }

  Widget _buildTodayButton(CrownDatePickerStyle style, CrownThemeData theme) {
    return CrownPadding(
      style: CrownPaddingStyle(
        top: style.padding?.top ?? 12,
        bottom: style.padding?.bottom ?? 12,
        left: style.padding?.left ?? 12,
        right: style.padding?.right ?? 12,
      ),
      child: GestureDetector(
        onTap: () => onDateSelected?.call(DateTime.now()),
        child: CrownContainer(
          width: double.infinity,
          backgroundColor: style.primaryColor,
          padding: const EdgeInsets.symmetric(vertical: 10),
          borderRadius: style.borderRadius ?? 4,
          child: CrownCenter(
            child: CrownText(
              'Today',
              style: style.resolvedTodayButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }

  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  String _formatMonthYear(DateTime date) {
    final months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return '${months[date.month - 1]} ${date.year}';
  }
}
