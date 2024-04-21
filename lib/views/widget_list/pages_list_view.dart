import 'package:flutter/material.dart';
import 'package:mobile_user/app/routes/routes.dart';

import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_appBar.dart';

class PagesListView extends StatefulWidget {
  const PagesListView({super.key});

  static const routeName = '/pages-List';

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
        child: views(context),
      ),
    );
  }
}

Widget views(BuildContext context) {
  var items = AppRoutes.routes.entries.skip(0).toList();

  items.sort((a, b) {
    return a.key
        .substring(1)
        .split('-')
        .join(' ')
        .compareTo(b.key.substring(1).split('-').join(' '));
  });

  return SingleChildScrollView(
    child: Column(
      children: [
        ...List.generate(
          items.length,
          (index) {
            return ListTile(
              tileColor:
                  index.isOdd ? AppColors.blackLv7.withOpacity(0.24) : null,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 12,
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  items.elementAt(index).key,
                );
              },
              title: Text(
                items.elementAt(index).key.substring(1).split('-').join(' '),
                style: AppTextStyle.bodyMedium(
                  fontWeight: AppFontWeight.bold,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.blackLv1,
              ),
            );
          },
        ),
      ],
    ),
  );
}
