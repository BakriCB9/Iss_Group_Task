import 'package:flutter/material.dart';
import 'package:iss_task/core/routes/routes.dart';
import 'package:iss_task/features/login/presentation/view/login_screen.dart';

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      default:
        return null;
    }
  }
}
