import 'package:flutter/material.dart';
import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/views/home/home_view.dart';
import 'package:mobile_user/views/registration/registration_view.dart';
import 'package:mobile_user/views/savings/savings_view.dart';
import 'package:mobile_user/widgets/app_appbar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = '/main';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  final List _selectedPage = [HomeView(), SavingsView()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedPage[_selectedIndex],
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: const Icon(
            Icons.emoji_emotions,
            color: AppColors.primary,
          )),
      // ? Compability Test Page
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.savings_rounded),
            label: 'Tabungan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
