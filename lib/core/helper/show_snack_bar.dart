import 'package:flutter/material.dart';
import 'package:green_loop/app/my_app.dart';
import 'package:green_loop/core/utilies/colors/app_colors.dart';
import 'package:green_loop/core/utilies/styles/app_text_styles.dart';

showSnackBar({required String title}) {
  ScaffoldMessenger.of(navigatorKey.currentState!.context).showSnackBar(
    SnackBar(
      content: Text(
        title,
        style: AppTextStyles.title18White,
      ),
      backgroundColor: AppColors.secondryColor,
    ),
  );
}