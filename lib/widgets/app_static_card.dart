import 'package:flutter/material.dart';
import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';

class AppStatisticCard extends StatefulWidget {
  final String title;
  final String statistic;
  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? titleColor;

  const AppStatisticCard({
    super.key,
    required this.statistic,
    required this.title,
    required this.icon,
    this.iconColor,
    this.backgroundColor,
    this.titleColor,
  });

  @override
  State<AppStatisticCard> createState() => _AppStatisticCardState();
}

class _AppStatisticCardState extends State<AppStatisticCard> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? AppColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: widget.iconColor ?? AppColors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.title,
              style: AppTextStyle.bodyLarge(
                fontWeight: AppFontWeight.regular,
                color: widget.titleColor ?? AppColors.white,
              ),
            ),
            VerticalDivider(
              color: widget.titleColor ?? AppColors.white,
              thickness: 1,
            ),
            Text(
              widget.statistic,
              style: AppTextStyle.bodyLarge(
                  color: widget.titleColor ?? AppColors.white,
                  fontWeight: AppFontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
