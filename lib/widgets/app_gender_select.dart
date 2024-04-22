import 'package:flutter/material.dart';

import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';

class AppGenderSelect extends StatefulWidget {
  const AppGenderSelect({super.key});

  @override
  State<AppGenderSelect> createState() => _AppGenderSelectState();
}

class _AppGenderSelectState extends State<AppGenderSelect> {
  Gender selectedGender = Gender.none; // Initial state

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildGenderContainer(
          gender: Gender.male,
          icon: Icons.man,
          text: "Laki-Laki",
          isSelected: selectedGender == Gender.male, // Check selection state
          onTap: () =>
              setState(() => selectedGender = Gender.male), // Update state
        ),
        _buildGenderContainer(
          gender: Gender.female,
          icon: Icons.woman,
          text: "Perempuan",
          isSelected: selectedGender == Gender.female, // Check selection state
          onTap: () =>
              setState(() => selectedGender = Gender.female), // Update state
        ),
      ],
    );
  }

  Widget _buildGenderContainer({
    required Gender gender,
    required IconData icon,
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final Color containerColor =
        isSelected ? AppColors.primary : AppColors.transparent;
    return Container(
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isSelected ? AppColors.transparent : AppColors.secondary,
          width: 1.5,
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: containerColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: AppColors.primary,
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50,
                color: isSelected ? AppColors.white : AppColors.secondary,
              ),
              Text(
                text,
                style: AppTextStyle.heading6(
                  color: isSelected ? AppColors.white : AppColors.secondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Gender { male, female, none } // Define Gender enum
