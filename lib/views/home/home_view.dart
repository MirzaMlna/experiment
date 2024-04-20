import 'package:flutter/material.dart';
import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_appBar.dart';

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
        title: 'Home View',
        titleTextStyle: AppTextStyle.heading5(color: AppColors.white),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          children: [Text("This Is Home View")],
        ),
      ),
    );
  }
}
