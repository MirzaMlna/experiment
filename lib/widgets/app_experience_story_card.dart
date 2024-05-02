import 'package:flutter/material.dart';

import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';

class AppExperienceStoryCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final Color? backgroundColor;
  final VoidCallback onTap;
  final bool isLasting;
  // final double? width;
  const AppExperienceStoryCard(
      {required this.title,
      required this.subtitle,
      this.backgroundColor,
      required this.onTap,
      required this.isLasting,
      // this.width,
      super.key});

  @override
  State<AppExperienceStoryCard> createState() => _AppExperienceStoryCardState();
}

class _AppExperienceStoryCardState extends State<AppExperienceStoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        elevation: 2.0,
        child: Material(
          color: widget.backgroundColor ?? AppColors.white,
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            splashColor: AppColors.blackLv7,
            onTap: widget.onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      // ! Pastikan ukuran gambar 16 : 6 atau 1920 x 720
                      child: Image.asset(
                          'lib/app/assets/images/old_man_with_wife.jpg')),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              widget.title,
                              style: AppTextStyle.heading6(),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            color: widget.isLasting
                                ? AppColors.success
                                : AppColors.error,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              widget.isLasting ? 'Langgeng' : 'Berakhir',
                              style: AppTextStyle.bodySmall(
                                fontWeight: AppFontWeight.regular,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        widget.subtitle,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Tekan untuk selengkapnya',
                        style: AppTextStyle.bodySmall(
                            color: AppColors.blueLv2,
                            fontWeight: AppFontWeight.regular),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
