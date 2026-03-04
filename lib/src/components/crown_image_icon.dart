import 'package:flutter/material.dart';
import '../styles/crown_image_icon_style.dart';
import '../theme/crown_theme.dart';

/// A themed image icon component
///
/// Provides a wrapper around Flutter's ImageIcon with Crown theme
/// styling for displaying images as icons.
class CrownImageIcon extends StatelessWidget {
  /// Image provider for the icon
  final ImageProvider image;

  /// Custom style for the image icon
  final CrownImageIconStyle? customStyle;

  /// Size of the icon
  final double? size;

  /// Color of the icon
  final Color? color;

  /// Semantic label for the icon
  final String semanticLabel;

  const CrownImageIcon(
    this.image, {
    Key? key,
    this.customStyle,
    this.size,
    this.color,
    this.semanticLabel = 'Image icon',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownImageIconStyle.defaultStyle(theme);

    return ImageIcon(
      image,
      size: size ?? style.size,
      color: color ?? style.color,
      semanticLabel: semanticLabel,
    );
  }
}
