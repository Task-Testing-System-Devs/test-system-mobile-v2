import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../colors/color_scheme.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final String hintText;
  final MaskTextInputFormatter? inputFormatter;
  final void Function(String)? onChanged;

  const AppTextField({
    Key? key,
    required this.controller,
    this.inputType = TextInputType.text,
    this.inputFormatter,
    this.hintText = '',
    this.onChanged,
  }) : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.inputType,
      inputFormatters:
          widget.inputFormatter != null ? [widget.inputFormatter!] : null,
      decoration: InputDecoration(
        enabledBorder: _textFieldBorder(AppColorScheme.border),
        focusedBorder: _textFieldBorder(AppColorScheme.primary),
        errorBorder: _textFieldBorder(AppColorScheme.criticalDefault),
        hintText: widget.hintText,
        hintStyle: theme.textTheme.bodyLarge?.copyWith(
          color: AppColorScheme.textSecondary,
        ),
      ),
      style: theme.textTheme.bodyLarge?.copyWith(
        color: AppColorScheme.textMain,
      ),
      onChanged: (text) {
        if (widget.onChanged != null) {
          widget.onChanged!(text);
        }
      },
    );
  }

  OutlineInputBorder _textFieldBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
