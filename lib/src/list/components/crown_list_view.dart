import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../../base/crown_stateless_widget.dart';
import '../styles/crown_list_view_style.dart';

/// A theme-aware list view component for Crown UI
///
/// CrownListView provides a flexible way to display scrollable lists of items
/// with customizable styling, spacing, and scroll behavior.
///
/// Example with static children:
/// ```dart
/// CrownListView(
///   children: [
///     CrownText('Item 1'),
///     CrownText('Item 2'),
///     CrownText('Item 3'),
///   ],
///   style: CrownListViewStyle.padded(),
/// )
/// ```
///
/// Example with itemBuilder:
/// ```dart
/// CrownListView.builder(
///   itemCount: 10,
///   itemBuilder: (context, index) => CrownText('Item $index'),
///   style: CrownListViewStyle.card(),
/// )
/// ```
class CrownListView extends CrownStatelessWidget {
  /// List of child widgets to display
  final List<Widget>? children;

  /// Function to build list items dynamically
  final IndexedWidgetBuilder? itemBuilder;

  /// Total number of items (required when using itemBuilder)
  final int? itemCount;

  /// Style configuration
  final CrownListViewStyle? style;

  /// Create a CrownListView with static children
  const CrownListView({
    Key? key,
    required this.children,
    this.style,
  })  : itemBuilder = null,
        itemCount = null,
        super(key: key);

  /// Create a CrownListView with dynamic item builder
  CrownListView.builder({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.style,
  })  : children = null,
        super(key: key);

  @override
  Widget buildWithTheme(BuildContext context, CrownThemeData theme) {
    final effectiveStyle = style ?? CrownListViewStyle.defaultStyle();

    return CrownContainer(
      backgroundColor: effectiveStyle.backgroundColor,
      borderRadius: effectiveStyle.borderRadius ?? 0,
      child: ListView(
        scrollDirection: effectiveStyle.scrollDirection,
        shrinkWrap: effectiveStyle.shrinkWrap,
        reverse: effectiveStyle.reverse,
        physics: effectiveStyle.physics,
        padding: effectiveStyle.padding,
        children: _buildChildren(context, effectiveStyle, theme),
      ),
    );
  }

  /// Build the list of children with proper spacing
  List<Widget> _buildChildren(
    BuildContext context,
    CrownListViewStyle style,
    CrownThemeData theme,
  ) {
    final List<Widget> items = [];

    if (itemBuilder != null && itemCount != null) {
      // Dynamic list items
      for (int i = 0; i < itemCount!; i++) {
        final item = itemBuilder!(context, i);
        items.add(_wrapItem(item, style, theme));

        // Add spacing between items (except after last item)
        if (i < itemCount! - 1 && (style.spacing ?? 0) > 0) {
          items.add(
            _buildSpacer(style, theme),
          );
        }
      }
    } else if (children != null) {
      // Static list items
      for (int i = 0; i < children!.length; i++) {
        final item = children![i];
        items.add(_wrapItem(item, style, theme));

        // Add spacing between items (except after last item)
        if (i < children!.length - 1 && (style.spacing ?? 0) > 0) {
          items.add(
            _buildSpacer(style, theme),
          );
        }
      }
    }

    return items;
  }

  /// Wrap each item with padding
  Widget _wrapItem(
    Widget child,
    CrownListViewStyle style,
    CrownThemeData theme,
  ) {
    if (style.itemPadding == null || style.itemPadding == EdgeInsets.zero) {
      return child;
    }

    return CrownPadding(
      style: CrownPaddingStyle.defaultStyle(theme).copyWith(
        padding: style.itemPadding,
      ),
      child: child,
    );
  }

  /// Build a spacer between items
  Widget _buildSpacer(
    CrownListViewStyle style,
    CrownThemeData theme,
  ) {
    if (style.scrollDirection == Axis.vertical) {
      return SizedBox(height: style.spacing ?? 0);
    } else {
      return SizedBox(width: style.spacing ?? 0);
    }
  }
}
