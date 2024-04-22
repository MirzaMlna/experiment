import 'package:flutter/material.dart';

import 'package:mobile_user/app/routes/routes.dart';
import 'package:mobile_user/app/services/locator/service_locator.dart';
import 'package:mobile_user/app/theme/app_theme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  // ? Setup Service Locator
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        theme: AppTheme.themeSelector(),
        routes: AppRoutes.routes,
        initialRoute: '/dev',
      ),
    );
  }
}
