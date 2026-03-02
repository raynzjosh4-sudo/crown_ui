import 'package:flutter/material.dart';
import '../theme/crown_theme.dart';
import '../styles/crown_input_style.dart';

class CrownInput extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final int maxLines;
  final int minLines;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool readOnly;
  final int? maxLength;
  final TextInputAction textInputAction;
  final CrownInputStyle? customStyle;

  const CrownInput({
    Key? key,
    this.hintText,
    this.labelText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.minLines = 1,
    this.validator,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.maxLength,
    this.textInputAction = TextInputAction.done,
    this.customStyle,
  }) : super(key: key);

  @override
  State<CrownInput> createState() => _CrownInputState();
}

class _CrownInputState extends State<CrownInput> {
  late FocusNode _focusNode;
  late bool _isFocused;
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _isFocused = false;
    _obscureText = widget.obscureText;
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = CrownTheme.of(context);
    final style = widget.customStyle ?? CrownInputStyle.outlined(theme);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ...[
          Text(widget.labelText!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: theme.colors.textPrimary)),
          SizedBox(height: 8),
        ],
        Container(
          decoration: BoxDecoration(
            borderRadius: style.borderRadius,
            boxShadow: style.boxShadow,
          ),
          child: TextFormField(
            controller: widget.controller,
            focusNode: _focusNode,
            keyboardType: widget.keyboardType,
            obscureText: _obscureText,
            maxLines: widget.obscureText ? 1 : widget.maxLines,
            minLines: widget.minLines,
            maxLength: widget.maxLength,
            readOnly: widget.readOnly,
            textInputAction: widget.textInputAction,
            onChanged: widget.onChanged,
            onTap: widget.onTap,
            validator: widget.validator,
            style: style.textStyle,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: style.hintStyle,
              prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon, color: _isFocused ? style.focusedBorderColor : style.prefixIconColor) : null,
              suffixIcon: widget.suffixIcon != null || widget.obscureText
                  ? GestureDetector(
                      onTap: widget.obscureText ? () => setState(() => _obscureText = !_obscureText) : null,
                      child: Icon(widget.obscureText ? (_obscureText ? Icons.visibility_off : Icons.visibility) : widget.suffixIcon, color: _isFocused ? style.focusedBorderColor : style.suffixIconColor),
                    )
                  : null,
              filled: true,
              fillColor: style.fillColor,
              contentPadding: style.contentPadding,
              border: OutlineInputBorder(borderRadius: style.borderRadius, borderSide: BorderSide(color: style.borderColor ?? theme.colors.border, width: style.borderWidth)),
              enabledBorder: OutlineInputBorder(borderRadius: style.borderRadius, borderSide: BorderSide(color: style.borderColor ?? theme.colors.border, width: style.borderWidth)),
              focusedBorder: OutlineInputBorder(borderRadius: style.borderRadius, borderSide: BorderSide(color: style.focusedBorderColor ?? theme.colors.primary, width: style.focusedBorderWidth)),
              errorBorder: OutlineInputBorder(borderRadius: style.borderRadius, borderSide: BorderSide(color: style.errorBorderColor ?? theme.colors.error, width: style.borderWidth)),
              focusedErrorBorder: OutlineInputBorder(borderRadius: style.borderRadius, borderSide: BorderSide(color: style.errorBorderColor ?? theme.colors.error, width: style.focusedBorderWidth)),
            ),
          ),
        ),
      ],
    );
  }
}
