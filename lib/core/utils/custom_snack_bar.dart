import 'package:flutter/material.dart';
import 'package:tabibi/core/theme/app_colors.dart';

class CustomSnackBar {
  static void show(
    BuildContext context,
    String message, {
    Duration duration = const Duration(seconds: 2),
  }) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: duration,
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height / 2,
            left: 50,
            right: 50,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: AppColors.titleColor,
          behavior: SnackBarBehavior.floating,
          content: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.primaryButtonTextColor),
          ),
        ),
      );
  }
}
