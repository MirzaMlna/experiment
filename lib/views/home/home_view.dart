import 'package:flutter/material.dart';
import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_appBar.dart';
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
      appBar: const AppAppbar(
        title: 'Home Screen',
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary,
      ),
      body: SafeArea(
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
                        iconColor: AppColors.error,
                        title: 'Perceraian Di Indonesia',
                        statistic: '129.219 Kasus',
                        backgroundColor: AppColors.warning,
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
        ],
      )),
    );
  }
}
