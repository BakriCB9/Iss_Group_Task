import 'package:flutter/material.dart';
import 'package:iss_task/core/constant/app_colors.dart';

typedef Func = String? Function(String? value);

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final String label;

  final Func validate;
  const CustomTextFormField(
      {required this.hint,
      required this.label,
      required this.validate,
      super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
        cursorColor: AppColors.blue,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: theme.textTheme.bodyMedium,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
        ),
        validator: validate);
  }
}
