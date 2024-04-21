import 'package:flutter/material.dart';
import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_sizes.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_appBar.dart';
import 'package:mobile_user/widgets/app_button.dart';

class DevView extends StatefulWidget {
  const DevView({super.key});

  static const routeName = '/dev';

  @override
  State<DevView> createState() => _DevViewState();
}

class _DevViewState extends State<DevView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        automaticallyImplyLeading: false,
        title: 'Dev View',
        titleTextStyle: AppTextStyle.heading5(color: AppColors.white),
        backgroundColor: AppColors.primary,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("This Is Dev View"),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.padding, vertical: AppSizes.padding),
              child: Column(
                children: [
                  AppButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    text: 'App View',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/pages-List');
                    },
                    text: 'Pages List',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
