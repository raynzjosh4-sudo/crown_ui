import 'package:flutter/material.dart';
import '../styles/crown_avatar_style.dart';
import '../theme/crown_theme.dart';

/// A themed avatar component
///
/// Provides a wrapper around Flutter's CircleAvatar with Crown theme
/// styling, support for images, initials, and customization options.
class CrownAvatar extends StatelessWidget {
  /// Background color of the avatar
  final Color? backgroundColor;

  /// Foreground color for text/icon
  final Color? foregroundColor;

  /// Child widget (text, icon, or image)
  final Widget? child;

  /// Image provider for avatar
  final ImageProvider? backgroundImage;

  /// Custom style for the avatar
  final CrownAvatarStyle? customStyle;

  /// Size of the avatar
  final double? radius;

  /// Callback when avatar is tapped
  final VoidCallback? onTap;

  const CrownAvatar({
    Key? key,
    this.backgroundColor,
    this.foregroundColor,
    this.child,
    this.backgroundImage,
    this.customStyle,
    this.radius,
    this.onTap,
  }) : super(key: key);

  /// Create avatar with text initials
  factory CrownAvatar.text(
    String text, {
    Color? backgroundColor,
    Color? foregroundColor,
    double? radius,
    CrownAvatarStyle? customStyle,
    VoidCallback? onTap,
  }) {
    return CrownAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      radius: radius,
      customStyle: customStyle,
      onTap: onTap,
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  /// Create avatar with icon
  factory CrownAvatar.icon(
    IconData icon, {
    Color? backgroundColor,
    Color? foregroundColor,
    double? radius,
    CrownAvatarStyle? customStyle,
    VoidCallback? onTap,
  }) {
    return CrownAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      radius: radius,
      customStyle: customStyle,
      onTap: onTap,
      child: Icon(icon),
    );
  }

  /// Create avatar with image
  factory CrownAvatar.image(
    ImageProvider backgroundImage, {
    Color? backgroundColor,
    double? radius,
    CrownAvatarStyle? customStyle,
    VoidCallback? onTap,
  }) {
    return CrownAvatar(
      backgroundColor: backgroundColor,
      radius: radius,
      customStyle: customStyle,
      onTap: onTap,
      backgroundImage: backgroundImage,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownAvatarStyle.defaultStyle(theme);

    final avatar = CircleAvatar(
      radius: radius ?? style.radius,
      backgroundColor: backgroundColor ?? style.backgroundColor,
      foregroundColor: foregroundColor ?? style.foregroundColor,
      backgroundImage: backgroundImage,
      child: child,
    );

    if (onTap == null) {
      return avatar;
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: avatar,
      ),
    );
  }
}
