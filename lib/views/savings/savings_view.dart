import 'package:flutter/material.dart';
import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_appBar.dart';

class SavingsView extends StatefulWidget {
  const SavingsView({super.key});

  static const routeName = '/saving';

  @override
  State<SavingsView> createState() => _SavingsViewState();
}

class _SavingsViewState extends State<SavingsView> {
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
    return const Scaffold(
      appBar: AppAppbar(
        title: 'Savings Screen',
      ),
    );
  }
}
