import 'package:flutter/material.dart';
import 'package:formulario/src/app_libs/tabs/screen.dart';
import 'package:formulario/src/app_routing/routes.dart';
import 'package:get/get.dart';

class AppRouting {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.tabs:
        return GetPageRoute(settings: settings, page: () => TabsScreen());

      default:
    }
  }
}
