import 'package:flutter/material.dart';

import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';

// enum AppTextFieldType {
//   text,
//   password,
//   number,
//   phone,
//   phoneCompact,
//   otp,
//   search,
//   currency,
// }

class AppTextField extends StatefulWidget {
  // final AppTextFieldType type;
  final String labelText;
  final String? hintText;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final InputBorder? border;
  final BorderRadius? borderRadius;
  final bool enabled;

  const AppTextField({
    super.key,
    // this.type,
    required this.labelText,
    this.hintText,
    this.labelStyle,
    this.hintStyle,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.border,
    this.borderRadius,
    this.enabled = true,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return !widget.obscureText
        ? TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
                enabled: widget.enabled ? widget.enabled : false,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelStyle: AppTextStyle.regular(size: 20),
                labelText: widget.labelText,
                hintText: widget.hintText,
                labelStyle: widget.labelStyle ??
                    const TextStyle(color: AppColors.secondary),
                hintStyle: widget.hintStyle,
                enabledBorder: widget.border ??
                    OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.secondary, width: 1.5),
                        borderRadius:
                            widget.borderRadius ?? BorderRadius.circular(10)),
                disabledBorder: widget.border ??
                    OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.secondary, width: 1.5),
                        borderRadius:
                            widget.borderRadius ?? BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.primary, width: 1.5),
                    borderRadius:
                        widget.borderRadius ?? BorderRadius.circular(10)),
                focusColor: AppColors.primary),
          )
        : TextFormField(
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: _isVisible,
            decoration: InputDecoration(
                enabled: widget.enabled ? widget.enabled : false,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelStyle: AppTextStyle.regular(size: 20),
                labelText: widget.labelText,
                hintText: widget.hintText,
                labelStyle: widget.labelStyle ??
                    const TextStyle(color: AppColors.secondary),
                hintStyle: widget.hintStyle,
                enabledBorder: widget.border ??
                    OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.secondary, width: 1.5),
                        borderRadius:
                            widget.borderRadius ?? BorderRadius.circular(10)),
                disabledBorder: widget.border ??
                    OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.secondary, width: 1.5),
                        borderRadius:
                            widget.borderRadius ?? BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.primary, width: 1.5),
                    borderRadius:
                        widget.borderRadius ?? BorderRadius.circular(10)),
                focusColor: AppColors.primary,
                suffix: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: Icon(
                      _isVisible ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.secondary,
                    ),
                  ),
                )),
          );
  }
}
