import 'package:flutter/material.dart';
import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_appBar.dart';
import 'package:mobile_user/widgets/app_icon_button.dart';
import 'package:mobile_user/widgets/app_inkwell.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  static const routeName = '/notes';

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return const NavigationExample();
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});
  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        automaticallyImplyLeading: false,
        title: 'Catatan Pribadi',
        actions: [
          AppIconButton(
              iconButtonColor: AppColors.transparent,
              icon: Icon(
                Icons.add,
                color: AppColors.white,
              ),
              onTap: () {})
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              AppInkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
