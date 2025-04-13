import 'package:flutter/material.dart';
import 'package:tabibi/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.homeBackgroundColor,
    //   primaryColor: AppColors.primaryButtonColor,
    //   elevatedButtonTheme: ElevatedButtonThemeData(
    //     style: ElevatedButton.styleFrom(
    //       backgroundColor: AppColors.primaryButtonColor,
    //       foregroundColor: AppColors.primaryButtonTextColor,
    //       textStyle: AppFonts.primaryButtonStyle,
    //     ),
    //   ),
    //   textTheme: TextTheme(
    //     headlineMedium: AppFonts.titleStyle,
    //     bodyMedium: AppFonts.regularStyle,
    //     labelLarge: AppFonts.primaryButtonStyle,
    //   ),
    //   inputDecorationTheme: InputDecorationTheme(
    //     hintStyle: AppFonts.hintStyle,
    //     filled: true,
    //     fillColor: AppColors.primaryButtonTextColor,
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(16),
    //       borderSide: BorderSide.none,
    //     ),
    //   ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColorsDark.homeBackgroundColor,
      // primaryColor: AppColorsDark.primaryButtonColor,
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: AppColorsDark.primaryButtonColor,
      //     foregroundColor: AppColorsDark.primaryButtonTextColor,
      //     textStyle: AppFontsDark.primaryButtonStyle,
      //   ),
      // ),
      // textTheme: TextTheme(
      //   headlineMedium: AppFontsDark.titleStyle,
      //   bodyMedium: AppFontsDark.regularStyle,
      //   labelLarge: AppFontsDark.primaryButtonStyle,
      // ),
      // inputDecorationTheme: InputDecorationTheme(
      //   hintStyle: AppFontsDark.hintStyle,
      //   filled: true,
      //   fillColor: AppColorsDark.primaryButtonTextColor,
      //   border: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(16),
      //     borderSide: BorderSide.none,
      //   ),
      // ),
    );
  }
}
