import 'package:flutter/material.dart';
import 'package:mobile_user/app/services/locator/service_locator.dart';
import 'package:mobile_user/app/theme/app_colors.dart';
import 'package:mobile_user/view_model/registration/registration_view_model.dart';

import 'package:mobile_user/app/theme/app_text_style.dart';
import 'package:mobile_user/widgets/app_appbar.dart';
import 'package:mobile_user/widgets/app_button.dart';
import 'package:mobile_user/widgets/app_gender_select.dart';
import 'package:mobile_user/widgets/app_text_field.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  static const routeName = '/registration';

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final RegistrationViewModel _registrationViewModel =
      locator<RegistrationViewModel>();

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
                    'Mari Bergabung !',
                    style: AppTextStyle.heading3(),
                  ),
                  Text(
                    'Silahkan Lengkapi Isian Di Bawah Untuk Membuat Akun.',
                    style: AppTextStyle.bodyMedium(
                        fontWeight: AppFontWeight.regular),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Pilih Gender Anda",
                style: AppTextStyle.heading5(),
              ),
              SizedBox(
                height: 20,
              ),
              AppGenderSelect(),
              SizedBox(
                height: 20,
              ),
              AppTextField(labelText: 'Email'),
              SizedBox(
                height: 20,
              ),
              AppTextField(obscureText: true, labelText: 'Password'),
              SizedBox(
                height: 20,
              ),
              AppTextField(obscureText: true, labelText: 'Ulangi Password'),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: AppTextField(
                  controller: _registrationViewModel.dateController,
                  labelText: 'Tanggal Lahir',
                  enabled: false,
                ),
                onTap: () {
                  _registrationViewModel.selectDate(context);
                },
              ),
              SizedBox(
                height: 20,
              ),
              AppButton(
                onTap: () {
                  print("Buat Akun Button");
                },
                text: 'Buat Akun',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sudah punya akun? ",
                    style: AppTextStyle.bodyMedium(
                        fontWeight: AppFontWeight.regular),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Login Here');
                    },
                    child: Text(
                      "Masuk",
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
