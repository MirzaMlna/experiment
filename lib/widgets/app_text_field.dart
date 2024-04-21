import 'package:flutter/material.dart';

import 'package:mobile_user/app/theme/app_colors.dart';

class AppTextField extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final InputBorder? border;
  final BorderRadius? borderRadius;

  const AppTextField({
    super.key,
    required this.labelText,
    this.hintText,
    this.labelStyle,
    this.hintStyle,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.border,
    this.borderRadius,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          labelStyle:
              widget.labelStyle ?? TextStyle(color: AppColors.secondary),
          hintStyle: widget.hintStyle,
          enabledBorder: widget.border ??
              OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.secondary, width: 1.5),
                  borderRadius:
                      widget.borderRadius ?? BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary, width: 1.5),
              borderRadius: widget.borderRadius ?? BorderRadius.circular(10)),
          focusColor: AppColors.primary),
    );
  }
}
