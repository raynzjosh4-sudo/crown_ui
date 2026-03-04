import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

/// A helper class to show Crown-themed toast notifications
///
/// Provides a lightweight notification display similar to snackbars but more minimal.
class CrownToast {
  static OverlayEntry? _currentOverlayEntry;

  /// Show a toast notification
  static void show(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 2),
    Color? backgroundColor,
    Color? textColor,
    double? width,
  }) {
    _currentOverlayEntry?.remove();

    final theme = CrownTheme.of(context);

    final entry = OverlayEntry(
      builder: (context) => _ToastWidget(
        message: message,
        backgroundColor:
            backgroundColor ?? theme.colors.textPrimary.withOpacity(0.9),
        textColor: textColor ?? Colors.white,
        width: width,
      ),
    );

    Overlay.of(context).insert(entry);
    _currentOverlayEntry = entry;

    Future.delayed(duration, () {
      entry.remove();
      _currentOverlayEntry = null;
    });
  }

  /// Show a success toast
  static void showSuccess(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 2),
  }) {
    show(
      context,
      message: message,
      duration: duration,
      backgroundColor: Colors.green,
    );
  }

  /// Show an error toast
  static void showError(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    show(
      context,
      message: message,
      duration: duration,
      backgroundColor: Colors.red,
    );
  }
}

class _ToastWidget extends StatefulWidget {
  final String message;
  final Color backgroundColor;
  final Color textColor;
  final double? width;

  const _ToastWidget({
    required this.message,
    required this.backgroundColor,
    required this.textColor,
    this.width,
  });

  @override
  _ToastWidgetState createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<_ToastWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      left: 0,
      right: 0,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Center(
          child: Container(
            width: widget.width ?? 300,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              widget.message,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.textColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
