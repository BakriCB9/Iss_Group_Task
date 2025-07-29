import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iss_task/core/utils/validator.dart';
import 'package:iss_task/features/login/presentation/view_model/cubit/login_cubit_cubit.dart';
import 'package:iss_task/features/login/presentation/widget/custom_text_form_field.dart';
import 'package:iss_task/features/login/presentation/widget/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Text(
                "Welcome To our Company",
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                  key: context.read<LoginCubit>().formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                          hint: "Enter your email",
                          label: "Email",
                          validate: (email) {
                            if (Validator.isEmail(email!)) {
                              return null;
                            }
                            return "invalide Email";
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                          hint: "Enter your Password",
                          label: "Password",
                          validate: (password) {
                            if (Validator.isPassword(password!)) {
                              return null;
                            }
                            return "invalide Password";
                          })
                    ],
                  )),
              SizedBox(
                height: 40,
              ),
              const LoginButton()
            ],
          ),
        )),
      ),
    );
  }
}
