import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';

class CrownText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow overflow;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CrownText(
    this.text, {
    Key? key,
    this.style,
    this.textAlign = TextAlign.left,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  factory CrownText.display(String text, {Key? key, Color? color}) {
    return CrownText(text, key: key, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold), color: color);
  }

  factory CrownText.heading(String text, {Key? key, Color? color}) {
    return CrownText(text, key: key, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700), color: color);
  }

  factory CrownText.subheading(String text, {Key? key, Color? color}) {
    return CrownText(text, key: key, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600), color: color);
  }

  factory CrownText.body(String text, {Key? key, Color? color}) {
    return CrownText(text, key: key, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400), color: color);
  }

  factory CrownText.caption(String text, {Key? key, Color? color}) {
    return CrownText(text, key: key, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400), color: color);
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final baseStyle = style ?? TextStyle(fontSize: fontSize ?? 16, fontWeight: fontWeight ?? FontWeight.w400);
    final finalStyle = baseStyle.copyWith(color: color ?? theme.colors.textPrimary);

    return Text(
      text,
      style: finalStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
