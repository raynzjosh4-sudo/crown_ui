import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_expansion_tile_style.dart';

/// A theme-aware expansion tile for Crown UI
///
/// Provides a customizable expansion tile with Crown UI theming and styling capabilities.
/// Wraps Flutter's [ExpansionTile] with additional features like custom animations,
/// styling options, and theme integration.
///
/// Usage:
/// ```dart
/// CrownExpansionTile(
///   title: 'Expand me',
///   children: [
///     CrownText('Content goes here'),
///   ],
/// )
/// ```
class CrownExpansionTile extends StatefulWidget {
  /// The title widget of the expansion tile
  final Widget title;

  /// The subtitle widget of the expansion tile
  final Widget? subtitle;

  /// The list of widgets to display when expanded
  final List<Widget> children;

  /// The leading widget (typically an icon)
  final Widget? leading;

  /// The trailing widget (typically an expand/collapse icon)
  final Widget? trailing;

  /// Whether the tile is initially expanded
  final bool initiallyExpanded;

  /// Called when the tile is expanded or collapsed
  final ValueChanged<bool>? onExpansionChanged;

  /// Custom style for the expansion tile
  final CrownExpansionTileStyle? customStyle;

  /// The background color of the tile
  final Color? backgroundColor;

  /// The color of the tile when expanded
  final Color? collapsedBackgroundColor;

  /// Whether the tile should be enabled
  final bool enabled;

  /// Custom shape for the tile
  final ShapeBorder? shape;

  /// Custom shape when collapsed
  final ShapeBorder? collapsedShape;

  /// The elevation of the tile
  final double? elevation;

  /// The elevation when collapsed
  final double? collapsedElevation;

  /// Clip behavior
  final Clip clipBehavior;

  const CrownExpansionTile({
    Key? key,
    required this.title,
    this.subtitle,
    required this.children,
    this.leading,
    this.trailing,
    this.initiallyExpanded = false,
    this.onExpansionChanged,
    this.customStyle,
    this.backgroundColor,
    this.collapsedBackgroundColor,
    this.enabled = true,
    this.shape,
    this.collapsedShape,
    this.elevation,
    this.collapsedElevation,
    this.clipBehavior = Clip.none,
  }) : super(key: key);

  @override
  State<CrownExpansionTile> createState() => _CrownExpansionTileState();
}

class _CrownExpansionTileState extends State<CrownExpansionTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;
    _animationController = AnimationController(
      duration: widget.customStyle?.animationDuration ??
          const Duration(milliseconds: 200),
      vsync: this,
      value: _isExpanded ? 1.0 : 0.0,
    );
  }

  @override
  void didUpdateWidget(CrownExpansionTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initiallyExpanded != widget.initiallyExpanded) {
      _isExpanded = widget.initiallyExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleTap(bool isExpanded) {
    if (!widget.enabled) return;

    setState(() {
      _isExpanded = isExpanded;
    });

    if (_isExpanded) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }

    widget.onExpansionChanged?.call(_isExpanded);
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style =
        widget.customStyle ?? CrownExpansionTileStyle.defaultStyle(theme);

    return Container(
      margin: style.margin,
      child: Material(
        color: Colors.transparent,
        child: ExpansionTile(
          title: widget.title,
          subtitle: widget.subtitle,
          leading: widget.leading,
          trailing: widget.trailing ?? _buildTrailingIcon(style),
          children: widget.children,
          onExpansionChanged: widget.enabled ? _handleTap : null,
          initiallyExpanded: widget.initiallyExpanded,
          enabled: widget.enabled,
          backgroundColor: widget.backgroundColor ?? style.backgroundColor,
          collapsedBackgroundColor:
              widget.collapsedBackgroundColor ?? style.collapsedBackgroundColor,
          shape: widget.shape ?? style.shape,
          collapsedShape: widget.collapsedShape ?? style.collapsedShape,
          clipBehavior: widget.clipBehavior,
          textColor: style.expandedTextColor,
          collapsedTextColor: style.collapsedTextColor,
          iconColor: style.expandedIconColor,
          collapsedIconColor: style.collapsedIconColor,
          tilePadding: style.tilePadding,
          childrenPadding: style.childrenPadding,
        ),
      ),
    );
  }

  Widget _buildTrailingIcon(CrownExpansionTileStyle style) {
    return RotationTransition(
      turns: Tween<double>(begin: 0.0, end: 0.5).animate(_animationController),
      child: Icon(
        Icons.expand_more,
        color: _isExpanded ? style.expandedIconColor : style.collapsedIconColor,
      ),
    );
  }
}
