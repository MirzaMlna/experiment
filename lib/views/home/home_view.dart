import 'package:flutter/material.dart';
import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_appBar.dart';
import 'package:mobile_user/widgets/app_icon_button.dart';
import 'package:mobile_user/widgets/app_experience_story_card.dart';
import 'package:mobile_user/widgets/app_static_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        title: 'Home Screen',
        actions: [
          GestureDetector(
            onTap: () {
              print('Go To Settings');
            },
            child: const CircleAvatar(
              backgroundColor: AppColors.white,
              child: Icon(Icons.person),
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            IntrinsicHeight(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 30),
                decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const AppStatisticCard(
                          icon: Icons.heart_broken_rounded,
                          iconColor: AppColors.white,
                          title: 'Perceraian Di Indonesia',
                          titleColor: AppColors.white,
                          statistic: '129.219 Kasus',
                          backgroundColor: AppColors.yellowLv2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Data terakhir dari BPS tahun 2023',
                          style: AppTextStyle.bodyMedium(
                              color: AppColors.white,
                              fontWeight: AppFontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Edukasi dirimu sebelum menikah',
                            style: AppTextStyle.heading6(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            padding: const EdgeInsets.only(bottom: 20),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                AppIconButton(
                                    icon: const Icon(Icons.menu_book_rounded),
                                    text: 'E-Book',
                                    onTap: () {}),
                                AppIconButton(
                                    icon: const Icon(Icons.article),
                                    text: 'Artikel',
                                    onTap: () {}),
                                AppIconButton(
                                    icon: const Icon(Icons.play_arrow_rounded),
                                    text: 'Video',
                                    onTap: () {}),
                                AppIconButton(
                                    icon: const Icon(Icons.balance_rounded),
                                    text: 'Hukum',
                                    onTap: () {}),
                                AppIconButton(
                                    icon: const Icon(
                                        Icons.local_fire_department_rounded),
                                    text: 'Motivasi',
                                    onTap: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Belajar dari pengalaman',
                            style: AppTextStyle.heading6(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AppExperienceStoryCard(
                              isLasting: true,
                              title: 'Ujang Bin Saprudin',
                              subtitle:
                                  'Menceritakan perjalanan Ujang dari sebelum menikah sampai mempertahankan pernikahannya sampai sekarang',
                              onTap: () {})
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        )),
      ),
    );
  }
}
