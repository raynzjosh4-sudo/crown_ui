import 'package:crown_ui/crown_ui.dart';
import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_button_style.dart';

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
  final CrownButtonStyle? customStyle;

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
    this.customStyle,
  }) : super(key: key);

  @override
  State<CrownButton> createState() => _CrownButtonState();
}

class _CrownButtonState extends State<CrownButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
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
    final style = widget.customStyle ?? _getDefaultStyle(theme);

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      onTap: widget.isEnabled && !widget.isLoading ? widget.onPressed : null,
      child: ScaleTransition(
        scale: Tween<double>(begin: 1.0, end: style.scale)
            .animate(_animationController),
        child: Container(
          width: widget.width,
          height: widget.height,
          padding: style.padding,
          decoration: BoxDecoration(
            color: widget.isEnabled
                ? style.backgroundColor
                : theme.colors.disabled,
            borderRadius: style.borderRadius,
            border: style.borderWidth > 0
                ? Border.all(
                    color: style.borderColor ?? theme.colors.border,
                    width: style.borderWidth)
                : null,
            boxShadow: style.boxShadow,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.isEnabled && !widget.isLoading
                  ? widget.onPressed
                  : null,
              borderRadius: style.borderRadius,
              child: Center(
                child: widget.isLoading
                    ? SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                style.foregroundColor ??
                                    theme.colors.textPrimary)))
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (widget.icon != null) ...[
                            Icon(widget.icon,
                                color: style.foregroundColor, size: 20),
                            SizedBox(width: 8),
                          ],
                          Text(
                            widget.label,
                            style: style.textStyle,
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

  CrownButtonStyle _getDefaultStyle(CrownThemeData theme) {
    switch (widget.variant) {
      case CrownButtonVariant.filled:
        return CrownButtonStyle.primary(theme);
      case CrownButtonVariant.outlined:
        return CrownButtonStyle.outlined(theme);
      case CrownButtonVariant.ghost:
        return CrownButtonStyle.ghost(theme);
    }
  }
}
