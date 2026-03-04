import 'package:flutter/material.dart';
import '../styles/crown_image_style.dart';
import '../theme/crown_theme.dart';

/// A themed image component
///
/// Provides a simple wrapper around Flutter's Image widget
/// with Crown theme styling, loading states, and error handling.
class CrownImage extends StatelessWidget {
  /// Image source (ImageProvider)
  final ImageProvider image;

  /// Custom style for the image
  final CrownImageStyle? customStyle;

  /// Width of the image
  final double? width;

  /// Height of the image
  final double? height;

  /// How to inscribe the image into the space allocated during layout
  final BoxFit fit;

  /// Alignment of the image
  final Alignment alignment;

  /// Builder for loading state
  final Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder;

  /// Builder for error state
  final Widget Function(BuildContext, Object, StackTrace?)? errorBuilder;

  /// Enable fade-in animation
  final bool fadeIn;

  /// Fade-in duration
  final Duration fadeDuration;

  const CrownImage(
    this.image, {
    Key? key,
    this.customStyle,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.loadingBuilder,
    this.errorBuilder,
    this.fadeIn = true,
    this.fadeDuration = const Duration(milliseconds: 300),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = customStyle ?? CrownImageStyle.defaultStyle(theme);

    return Container(
      width: width ?? style.width,
      height: height ?? style.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(style.borderRadius),
        color: style.backgroundColor,
        border: style.border,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(style.borderRadius),
        child: Image(
          image: image,
          fit: fit,
          alignment: alignment,
          loadingBuilder: loadingBuilder ??
              (context, child, loadingProgress) {
                return _defaultLoadingBuilder(
                    context, child, loadingProgress, style);
              },
          errorBuilder: errorBuilder ??
              (context, error, stackTrace) {
                return _defaultErrorBuilder(context, error, stackTrace, style);
              },
          semanticLabel: 'Image',
        ),
      ),
    );
  }

  Widget _defaultLoadingBuilder(
    BuildContext context,
    Widget child,
    ImageChunkEvent? loadingProgress,
    CrownImageStyle style,
  ) {
    if (loadingProgress == null) return child;
    return Container(
      color: style.backgroundColor,
      child: Center(
        child: SizedBox(
          width: 32,
          height: 32,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(style.loadingColor),
          ),
        ),
      ),
    );
  }

  Widget _defaultErrorBuilder(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
    CrownImageStyle style,
  ) {
    return Container(
      color: style.backgroundColor,
      child: Center(
        child: Icon(
          Icons.image_not_supported_outlined,
          color: style.errorColor,
          size: 32,
        ),
      ),
    );
  }
}
