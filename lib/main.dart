import 'package:flutter/material.dart';
import 'package:iss_task/core/di/service_locator.dart';
import 'package:iss_task/core/routes/route_generator.dart';
import 'package:iss_task/core/routes/routes.dart';
import 'package:iss_task/core/theme/app_theme.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {},
      debugShowCheckedModeBanner: false,
      title: 'Iss Group',
      theme: AppTheme.lightTheme,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.login,
    );
  }
}

