import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iss_task/core/constant/enum/status.dart';
import 'package:iss_task/core/routes/routes.dart';
import 'package:iss_task/features/login/presentation/view_model/cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            context.read<LoginCubit>().login();
          },
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state.status == Status.success) {
                Navigator.of(context).pushNamed(Routes.home);
              }
            },
            builder: (context, state) {
              if (state.status == Status.loding) {
                return Center(
                  child: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator()),
                );
              }
              return Text("Login");
            },
          )),
    );
  }
}
