import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_user/views/dev/dev_view.dart';
import 'package:mobile_user/views/home/home_view.dart';
import 'package:mobile_user/views/widget_list/pages_list_view.dart';

class AppRoutes {
  AppRoutes._();
  static Map<String, WidgetBuilder> routes = {
    DevView.routeName: (context) => const DevView(),
    PagesListView.routeName: (context) => const PagesListView(),
    HomeView.routeName: (context) => const HomeView(),
  };
}