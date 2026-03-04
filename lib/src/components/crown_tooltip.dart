import 'package:flutter/material.dart';
import 'package:crown_ui/crown_ui.dart';
import '../styles/crown_tooltip_style.dart';

/// A themed tooltip component with platform-specific styles
///
/// Provides tooltips with Crown theme styling for Android, iOS, and Windows.
class CrownTooltip extends StatelessWidget {
  /// The widget that triggers the tooltip
  final Widget child;

  /// The style configuration for the tooltip
  final CrownTooltipStyle style;

  /// Custom decoration for advanced styling
  final Decoration? customDecoration;

  const CrownTooltip({
    Key? key,
    required this.child,
    required this.style,
    this.customDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: style.message,
      height: style.height,
      textStyle: style.textStyle,
      showDuration: style.showDuration,
      waitDuration: style.waitDuration,
      margin: style.margin,
      padding: style.padding,
      decoration: customDecoration ??
          BoxDecoration(
            color: style.backgroundColor,
            borderRadius: BorderRadius.circular(style.borderRadius),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: style.elevation,
                offset: Offset(0, style.elevation / 2),
              ),
            ],
          ),
      child: child,
    );
  }
}

/// Helper widget for iOS-style custom tooltip (popover)
class CrownCustomTooltip extends StatefulWidget {
  /// The widget that triggers the tooltip
  final Widget child;

  /// The tooltip style
  final CrownTooltipStyle style;

  /// Whether to show arrow
  final bool showArrow;

  const CrownCustomTooltip({
    Key? key,
    required this.child,
    required this.style,
    this.showArrow = true,
  }) : super(key: key);

  @override
  State<CrownCustomTooltip> createState() => _CrownCustomTooltipState();
}

class _CrownCustomTooltipState extends State<CrownCustomTooltip>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  OverlayEntry? _overlayEntry;
  bool _isShowing = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _hideTooltip();
    super.dispose();
  }

  void _showTooltip(BuildContext context) {
    if (_isShowing) return;

    _isShowing = true;
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final Size size = renderBox.size;

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx + size.width / 2 - 40,
        top: offset.dy - 60,
        child: ScaleTransition(
          scale: _controller,
          alignment: Alignment.bottomCenter,
          child: _buildTooltipPopover(),
        ),
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
    _controller.forward();

    Future.delayed(widget.style.showDuration, _hideTooltip);
  }

  void _hideTooltip() {
    if (!_isShowing) return;
    _isShowing = false;
    _controller.reverse().then((_) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    });
  }

  Widget _buildTooltipPopover() {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: widget.style.padding,
            decoration: BoxDecoration(
              color: widget.style.backgroundColor,
              borderRadius: BorderRadius.circular(widget.style.borderRadius),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Text(
              widget.style.message,
              style: widget.style.textStyle,
              textAlign: TextAlign.center,
            ),
          ),
          if (widget.showArrow)
            CustomPaint(
              painter: _TooltipArrowPainter(
                color: widget.style.backgroundColor,
              ),
              size: const Size(10, 6),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        Future.delayed(widget.style.waitDuration, () {
          if (mounted) _showTooltip(context);
        });
      },
      onExit: (_) => _hideTooltip(),
      child: widget.child,
    );
  }
}

/// Custom painter for tooltip arrow
class _TooltipArrowPainter extends CustomPainter {
  final Color color;

  _TooltipArrowPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_TooltipArrowPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
