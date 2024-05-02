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
      appBar: AppAppbar(
        title: 'Home Screen',
        actions: [
          GestureDetector(
            onTap: () {
              print('Go To Settings');
            },
            child: CircleAvatar(
              child: Icon(Icons.person),
              backgroundColor: AppColors.white,
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
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Text(
                            'Persiapkan dirimu sebelum menikah!',
                            style: AppTextStyle.heading6(),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Material(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(10),
                                    splashColor: AppColors.secondary,
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Icon(Icons.menu_book_rounded),
                                          Text('E-Book')
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
