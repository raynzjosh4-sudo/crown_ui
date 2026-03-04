import 'package:flutter/material.dart';
import '../base/crown_stateless_widget.dart';
import '../theme/crown_theme_data.dart';
import '../styles/crown_list_tile_style.dart';
import 'crown_container.dart';
import 'crown_padding.dart';
import 'crown_row.dart';
import 'crown_column.dart';
import 'crown_sized_box.dart';
import 'crown_expanded.dart';
import '../styles/crown_container_style.dart';
import '../styles/crown_padding_style.dart';
import '../styles/crown_row_style.dart';
import '../styles/crown_column_style.dart';
import '../styles/crown_sized_box_style.dart';

/// A theme-aware list tile widget implementing Material Design.
/// Displays a single row with optional leading, title, subtitle, and trailing widgets.
class CrownListTile extends CrownStatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool selected;
  final bool enabled;
  final CrownListTileStyle? customStyle;

  const CrownListTile({
    Key? key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.onLongPress,
    this.selected = false,
    this.enabled = true,
    this.customStyle,
  }) : super(key: key);

  @override
  Widget buildWithTheme(BuildContext context, CrownThemeData theme) {
    final style = customStyle ?? CrownListTileStyle.defaultStyle(theme);

    // Extract border radius value (default to 0 if shape is not RoundedRectangleBorder)
    double borderRadiusValue = 0;
    if (style.shape is RoundedRectangleBorder) {
      final shape = style.shape as RoundedRectangleBorder;
      final radius = shape.borderRadius;
      if (radius is BorderRadius) {
        borderRadiusValue = radius.topLeft.x;
      }
    }

    // Convert BorderSide to Border if present
    BoxBorder? boxBorder;
    if (style.border != null) {
      boxBorder = Border.all(
        color: style.border!.color,
        width: style.border!.width,
        style: style.border!.style,
      );
    }

    return GestureDetector(
      onTap: enabled ? onTap : null,
      onLongPress: enabled ? onLongPress : null,
      child: CrownContainer(
        style: CrownContainerStyle(
          backgroundColor: selected && style.selectedColor != null
              ? style.selectedColor
              : style.backgroundColor,
          borderRadius: borderRadiusValue,
          border: boxBorder,
        ),
        child: CrownPadding(
          style: CrownPaddingStyle(
            padding: style.contentPadding,
          ),
          child: CrownRow(
            style: CrownRowStyle.start(),
            children: [
              if (leading != null) ...[
                CrownSizedBox(
                  style: CrownSizedBoxStyle(
                    width: style.minLeadingWidth ?? 40,
                  ),
                  child: leading!,
                ),
                CrownSizedBox(
                  style: CrownSizedBoxStyle.horizontal(
                    style.horizontalTitleGap ?? 16,
                  ),
                ),
              ],
              CrownExpanded(
                child: CrownColumn(
                  style: CrownColumnStyle.center(),
                  children: [
                    if (title != null)
                      DefaultTextStyle(
                        style: style.resolvedTitleStyle.copyWith(
                          color: style.titleTextColor ??
                              style.resolvedTitleStyle.color,
                        ),
                        child: title!,
                      ),
                    if (subtitle != null && !style.dense) ...[
                      CrownSizedBox(
                        style: CrownSizedBoxStyle.vertical(4),
                      ),
                      DefaultTextStyle(
                        style: style.resolvedSubtitleStyle.copyWith(
                          color: style.subtitleTextColor ??
                              style.resolvedSubtitleStyle.color,
                        ),
                        child: subtitle!,
                      ),
                    ],
                  ],
                ),
              ),
              if (trailing != null) ...[
                CrownSizedBox(
                  style: CrownSizedBoxStyle.horizontal(
                    style.horizontalTitleGap ?? 16,
                  ),
                ),
                trailing!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}
