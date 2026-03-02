import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

enum CrownButtonVariant { filled, outlined, ghost }

class CrownButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final CrownButtonVariant variant;
  final bool isLoading;
  final bool isEnabled;
  final IconData? icon;
  final double? width;
  final double height;
  final BorderRadius? borderRadius;

  const CrownButton(
    this.label, {
    Key? key,
    required this.onPressed,
    this.variant = CrownButtonVariant.filled,
    this.isLoading = false,
    this.isEnabled = true,
    this.icon,
    this.width,
    this.height = 50,
    this.borderRadius,
  }) : super(key: key);

  @override
  State<CrownButton> createState() => _CrownButtonState();
}

class _CrownButtonState extends State<CrownButton> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: const Duration(milliseconds: 200), vsync: this);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    if (widget.isEnabled) {
      _animationController.forward();
    }
  }

  void _onTapUp(TapUpDetails details) {
    _animationController.reverse();
  }

  void _onTapCancel() {
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      onTap: widget.isEnabled && !widget.isLoading ? widget.onPressed : null,
      child: ScaleTransition(
        scale: Tween<double>(begin: 1.0, end: 0.95).animate(_animationController),
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: _getBackgroundColor(theme),
            borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
            border: widget.variant == CrownButtonVariant.outlined ? Border.all(color: theme.colors.primary, width: 2) : null,
            boxShadow: widget.variant == CrownButtonVariant.filled && widget.isEnabled ? theme.borders.shadowMedium : [],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.isEnabled && !widget.isLoading ? widget.onPressed : null,
              borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
              child: Center(
                child: widget.isLoading
                    ? SizedBox(height: 24, width: 24, child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(theme.colors.textPrimary)))
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (widget.icon != null) ...[
                            Icon(widget.icon, color: _getTextColor(theme), size: 20),
                            SizedBox(width: 8),
                          ],
                          Text(
                            widget.label,
                            style: TextStyle(
                              color: _getTextColor(theme),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor(CrownThemeData theme) {
    if (!widget.isEnabled) return theme.colors.disabled;
    switch (widget.variant) {
      case CrownButtonVariant.filled:
        return theme.colors.primary;
      case CrownButtonVariant.outlined:
        return Colors.transparent;
      case CrownButtonVariant.ghost:
        return Colors.transparent;
    }
  }

  Color _getTextColor(CrownThemeData theme) {
    if (!widget.isEnabled) return theme.colors.textTertiary;
    switch (widget.variant) {
      case CrownButtonVariant.filled:
        return Colors.white;
      case CrownButtonVariant.outlined:
        return theme.colors.primary;
      case CrownButtonVariant.ghost:
        return theme.colors.primary;
    }
  }
}
