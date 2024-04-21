import 'package:flutter/material.dart';
import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_button.dart';
import 'package:mobile_user/widgets/app_text_field.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  static const routeName = '/registration';

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    height: 10,
                  ),
                  AppTextField(
                    obscureText: true,
                    labelText: 'Buat Password',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                    obscureText: true,
                    labelText: 'Buat Password',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                    obscureText: true,
                    labelText: 'Buat Password',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppTextField(
                    obscureText: true,
                    labelText: 'Buat Password',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
