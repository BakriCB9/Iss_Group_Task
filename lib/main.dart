import 'package:flutter/material.dart';
import 'package:iss_task/core/di/service_locator.dart';
import 'package:iss_task/core/routes/route_generator.dart';
import 'package:iss_task/core/routes/routes.dart';
import 'package:iss_task/core/theme/app_theme.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  initialization() async {
    await Future.delayed(Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {},
      debugShowCheckedModeBanner: false,
      title: 'Iss Group',
      theme: AppTheme.lightTheme,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.homeScreen,
    );
  }
}
