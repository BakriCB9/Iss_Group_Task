import 'package:flutter/material.dart';
import 'package:iss_task/core/constant/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white,
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          )),
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(
            fontSize: 12,
            color: AppColors.gray,
          ),
          hintStyle: const TextStyle(
            color: AppColors.gray,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          errorStyle: const TextStyle(color: AppColors.red, fontSize: 12),
          focusedErrorBorder: _getBoarder(AppColors.red),
          errorBorder: _getBoarder(AppColors.red),
          focusedBorder: _getBoarder(AppColors.blue),
          enabledBorder: _getBoarder(AppColors.gray),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: AppColors.white));
}

_getBoarder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: color),
  );
}
