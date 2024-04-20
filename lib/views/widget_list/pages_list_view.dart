import 'package:flutter/material.dart';

import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_appBar.dart';

class PagesListView extends StatefulWidget {
  const PagesListView({super.key});

  static const routeName = '/pagesList';

  @override
  State<PagesListView> createState() => _PagesListViewState();
}

class _PagesListViewState extends State<PagesListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        title: 'Pages List View',
        titleTextStyle: AppTextStyle.heading5(color: AppColors.white),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          children: [Text("This Is Pages List View")],
        ),
      ),
    );
  }
}
