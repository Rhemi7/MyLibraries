import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BorderlessTextField extends StatelessWidget {
  final String? hint;
  final bool isDense;
  final bool? obscureText;
  final Widget? prefix;
  final String? prefixText;
  final TextInputType inputType;
  final TextAlign textAlign;
  final Function? onTap;
  final bool readOnly;
  final String? initialValue;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatter;
  final int? maxLength;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? contentPadding;
  final Function? onChanged;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final Widget? suffixIcon;
  final int maxlines;
  BorderlessTextField(
      {this.hintStyle,
        this.suffixIcon,
        this.isDense = false,
        this.style,
        this.textCapitalization = TextCapitalization.words,
        this.onChanged,
        this.inputFormatter,
        this.readOnly = false,
        this.initialValue,
        this.controller,
        required this.hint,
        this.obscureText = false,
        this.prefix,
        this.prefixText,
        this.maxlines = 1,
        this.inputType = TextInputType.text,
        this.textAlign = TextAlign.center,
        this.onTap,
        this.maxLength,
        this.contentPadding});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      onChanged: onChanged as void Function(String)?,
      maxLength: maxLength,
      initialValue: initialValue,
      controller: controller,
      onTap: onTap as void Function()?,
      readOnly: readOnly,
      obscureText: obscureText!,
      keyboardType: inputType,
      textAlign: textAlign,
      inputFormatters: inputFormatter,
      textCapitalization: textCapitalization,
      maxLines: maxlines,
      showCursor: true,
      decoration: InputDecoration(
        counter: Container(),
        hintText: hint,
        hintStyle: hintStyle,
        isDense: isDense,
        isCollapsed: true,
        border: InputBorder.none,
        prefix: prefix,
        suffixIcon: suffixIcon,
        prefixText: prefixText,
      ),
    );
  }
}
