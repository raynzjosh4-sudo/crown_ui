import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../../base/crown_stateless_widget.dart';
import '../styles/crown_grid_view_style.dart';

/// A theme-aware grid view component for Crown UI
///
/// CrownGridView provides a flexible way to display scrollable grids of items
/// with customizable styling, spacing, and grid layout.
///
/// Example with static children:
/// ```dart
/// CrownGridView(
///   children: [
///     CrownCard(child: CrownIcon(Icons.star)),
///     CrownCard(child: CrownIcon(Icons.heart)),
///     CrownCard(child: CrownIcon(Icons.bookmark)),
///   ],
///   style: CrownGridViewStyle.padded(crossAxisCount: 3),
/// )
/// ```
///
/// Example with itemBuilder:
/// ```dart
/// CrownGridView.builder(
///   itemCount: 20,
///   itemBuilder: (context, index) => CrownCard(
///     child: CrownCenter(child: CrownText('Item $index')),
///   ),
///   style: CrownGridViewStyle.card(crossAxisCount: 2),
/// )
/// ```
class CrownGridView extends CrownStatelessWidget {
  /// List of child widgets to display in grid
  final List<Widget>? children;

  /// Function to build grid items dynamically
  final IndexedWidgetBuilder? itemBuilder;

  /// Total number of items (required when using itemBuilder)
  final int? itemCount;

  /// Style configuration
  final CrownGridViewStyle? style;

  /// Create a CrownGridView with static children
  const CrownGridView({
    Key? key,
    required this.children,
    this.style,
  })  : itemBuilder = null,
        itemCount = null,
        super(key: key);

  /// Create a CrownGridView with dynamic item builder
  CrownGridView.builder({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.style,
  })  : children = null,
        super(key: key);

  @override
  Widget buildWithTheme(BuildContext context, CrownThemeData theme) {
    final effectiveStyle = style ?? CrownGridViewStyle.defaultStyle();

    return CrownContainer(
      backgroundColor: effectiveStyle.backgroundColor,
      borderRadius: effectiveStyle.borderRadius ?? 0,
      child: GridView.count(
        crossAxisCount: effectiveStyle.crossAxisCount,
        childAspectRatio: effectiveStyle.childAspectRatio,
        mainAxisSpacing: effectiveStyle.runSpacing,
        crossAxisSpacing: effectiveStyle.spacing,
        padding: effectiveStyle.padding,
        physics: effectiveStyle.physics,
        shrinkWrap: effectiveStyle.shrinkWrap,
        scrollDirection: effectiveStyle.scrollDirection,
        children: _buildChildren(context, effectiveStyle, theme),
      ),
    );
  }

  /// Build the grid of children with proper padding
  List<Widget> _buildChildren(
    BuildContext context,
    CrownGridViewStyle style,
    CrownThemeData theme,
  ) {
    final List<Widget> items = [];

    if (itemBuilder != null && itemCount != null) {
      // Dynamic grid items
      for (int i = 0; i < itemCount!; i++) {
        final item = itemBuilder!(context, i);
        items.add(_wrapItem(item, style, theme));
      }
    } else if (children != null) {
      // Static grid items
      for (final item in children!) {
        items.add(_wrapItem(item, style, theme));
      }
    }

    return items;
  }

  /// Wrap each item with padding
  Widget _wrapItem(
    Widget child,
    CrownGridViewStyle style,
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
}
