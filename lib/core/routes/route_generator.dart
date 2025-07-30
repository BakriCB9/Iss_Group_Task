import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iss_task/core/di/service_locator.dart';
import 'package:iss_task/core/routes/routes.dart';
import 'package:iss_task/features/home/domain/entity/project_entity.dart';
import 'package:iss_task/features/home/presentation/view/details_screen.dart';
import 'package:iss_task/features/home/presentation/view/home_screen.dart';
import 'package:iss_task/features/home/presentation/view_model/cubit/home_cubit.dart';
import 'package:iss_task/features/login/presentation/view/login_screen.dart';
import 'package:iss_task/features/login/presentation/view_model/cubit/login_cubit.dart';

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (_) => serviceLocator.get<LoginCubit>(),
              child: const LoginScreen()),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<HomeCubit>(
                  create: (context) =>
                      serviceLocator.get<HomeCubit>()..getData(),
                  child: HomeScreen(),
                ));
      case Routes.detailsScreen:
        {
          final data = arg as ItemEntity;
          return MaterialPageRoute(
              builder: (_) => DetailsScreen(itemEntity: data));
        }

      default:
        return null;
    }
  }
}
