import 'package:flutter/material.dart';
import 'package:mobile_user/app/theme/app_colors.dart';

import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_appbar.dart';
import 'package:mobile_user/widgets/app_button.dart';
import 'package:mobile_user/widgets/app_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static const routeName = '/login';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Selamat Datang !',
                    style: AppTextStyle.heading3(),
                  ),
                  Text(
                    'Silahkan Masuk Menggunakan Email Dan Password',
                    style: AppTextStyle.bodyMedium(
                        fontWeight: AppFontWeight.regular),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  AppTextField(
                    labelText: 'Email',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AppTextField(
                    labelText: 'Password',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() => isChecked = !isChecked);
                      isChecked ? print("True") : print("False");
                    },
                    child: Row(
                      children: [
                        Checkbox(
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.selected)) {
                              return AppColors.primary;
                            }
                            return null;
                          }),
                          value: isChecked,
                          onChanged: null,
                        ),
                        Text(
                          "Ingat Saya",
                          style: AppTextStyle.bodyMedium(
                              fontWeight: AppFontWeight.regular),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Lupa Password Button");
                    },
                    child: Text(
                      "Lupa Password",
                      style: AppTextStyle.bodyMedium(
                          fontWeight: AppFontWeight.regular,
                          color: AppColors.blueLv2),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              AppButton(
                onTap: () {
                  print("Masuk Button");
                },
                text: 'Masuk',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum punya akun? ",
                    style: AppTextStyle.bodyMedium(
                        fontWeight: AppFontWeight.regular),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Register Here');
                    },
                    child: Text(
                      "Buat Akun",
                      style: AppTextStyle.bodyMedium(
                          fontWeight: AppFontWeight.regular,
                          color: AppColors.blueLv2),
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
