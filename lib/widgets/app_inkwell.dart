import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:mobile_user/app/theme/app_colors.dart';

class AppInkWell extends StatefulWidget {
  final Color? backgroundColor;
  final Color? splashColor;
  final VoidCallback onTap;
  final double? borderRadius;
  final Widget child;
  const AppInkWell({
    this.backgroundColor,
    this.splashColor,
    this.borderRadius,
    required this.onTap,
    required this.child,
    super.key,
  });

  @override
  State<AppInkWell> createState() => _AppInkWellState();
}

class _AppInkWellState extends State<AppInkWell> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
      color: widget.backgroundColor ?? AppColors.transparent,
      child: InkWell(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          onTap: widget.onTap,
          splashColor: widget.splashColor ?? AppColors.blackLv7,
          child: widget.child),
    );
  }
}
