import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_text_form_field_style.dart';

/// A themed TextFormField component
///
/// Provides a styled form field with Crown theme support.
class CrownTextFormField extends StatefulWidget {
  /// Controller for the text field
  final TextEditingController? controller;

  /// Style configuration
  final CrownTextFormFieldStyle? style;

  /// Validator callback
  final String? Function(String?)? validator;

  /// OnChanged callback
  final ValueChanged<String>? onChanged;

  /// OnSaved callback
  final ValueSetter<String?>? onSaved;

  const CrownTextFormField({
    Key? key,
    this.controller,
    this.style,
    this.validator,
    this.onChanged,
    this.onSaved,
  }) : super(key: key);

  @override
  _CrownTextFormFieldState createState() => _CrownTextFormFieldState();
}

class _CrownTextFormFieldState extends State<CrownTextFormField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final fieldStyle =
        widget.style ?? CrownTextFormFieldStyle.defaultStyle(theme);

    return TextFormField(
      controller: widget.controller,
      keyboardType: fieldStyle.keyboardType,
      textInputAction: fieldStyle.textInputAction,
      validator: widget.validator,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      maxLines: fieldStyle.maxLines,
      minLines: fieldStyle.minLines,
      maxLength: fieldStyle.maxLength,
      obscureText: fieldStyle.obscureText,
      enabled: fieldStyle.enabled,
      readOnly: fieldStyle.readOnly,
      focusNode: _focusNode,
      style: fieldStyle.textStyle ??
          TextStyle(
            color: theme.colors.textPrimary,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
      decoration: InputDecoration(
        labelText: fieldStyle.label,
        hintText: fieldStyle.hint,
        helperText: fieldStyle.helperText,
        errorText: fieldStyle.errorText,
        prefixIcon: fieldStyle.prefixIcon,
        suffixIcon: fieldStyle.suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fieldStyle.borderRadius),
          borderSide: BorderSide(
            color: fieldStyle.borderColor ?? theme.colors.border,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fieldStyle.borderRadius),
          borderSide: BorderSide(
            color: fieldStyle.borderColor ?? theme.colors.border,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fieldStyle.borderRadius),
          borderSide: BorderSide(
            color: fieldStyle.focusColor ?? theme.colors.primary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fieldStyle.borderRadius),
          borderSide: BorderSide(
            color: theme.colors.error,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fieldStyle.borderRadius),
          borderSide: BorderSide(
            color: theme.colors.error,
            width: 2,
          ),
        ),
        filled: true,
        fillColor: fieldStyle.enabled
            ? (fieldStyle.fillColor ?? theme.colors.surface)
            : (fieldStyle.disabledColor ??
                theme.colors.disabled.withOpacity(0.3)),
        contentPadding: fieldStyle.contentPadding,
        labelStyle: fieldStyle.labelStyle ??
            TextStyle(
              color: theme.colors.textSecondary,
              fontSize: 14,
            ),
        hintStyle: fieldStyle.hintStyle ??
            TextStyle(
              color: theme.colors.textSecondary.withOpacity(0.6),
              fontSize: 14,
            ),
      ),
    );
  }
}
