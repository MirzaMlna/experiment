import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_user/views/compability_test/compability_test_view.dart';

import 'package:mobile_user/views/dev/dev_view.dart';
import 'package:mobile_user/views/home/home_view.dart';
import 'package:mobile_user/views/login/login_view.dart';
import 'package:mobile_user/views/main/main_view.dart';
import 'package:mobile_user/views/registration/registration_view.dart';
import 'package:mobile_user/views/notes/notes_view.dart';
import 'package:mobile_user/views/widget_list/pages_list_view.dart';

class AppRoutes {
  AppRoutes._();
  static Map<String, WidgetBuilder> routes = {
    DevView.routeName: (context) => const DevView(),
    PagesListView.routeName: (context) => const PagesListView(),
    LoginView.routeName: (context) => const LoginView(),
    RegistrationView.routeName: (context) => const RegistrationView(),
    HomeView.routeName: (context) => const HomeView(),
    MainView.routeName: (context) => const MainView(),
    NotesView.routeName: (context) => const NotesView(),
    CompabilityTestView.routeName: (context) => const CompabilityTestView(),
  };
}
