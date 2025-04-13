import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabibi/core/theme/app_colors.dart';
import 'package:tabibi/core/theme/app_fonts.dart';

class AuthButton extends StatelessWidget {
  final String label;
  final bool isPrimary;
  final String? svgIconPath;
  final Function()? onPressed;
  final bool isLoading;

  const AuthButton({
    super.key,
    required this.label,
    this.isPrimary = true,
    this.svgIconPath,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.1,
        backgroundColor:
            isPrimary
                ? (isDarkMode
                    ? AppColorsDark.homeMainColor
                    : AppColors.homeMainColor)
                : (isDarkMode
                    ? AppColorsDark.buttonColor
                    : AppColors.buttonColor),
        minimumSize: Size(double.infinity, size.width * 0.17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size.width * 0.04),
        ),
      ),
      onPressed: isLoading ? null : onPressed,
      child:
          isLoading
              ? SizedBox(
                width: size.width * 0.06,
                height: size.width * 0.06,
                child: CircularProgressIndicator(
                  color:
                      isDarkMode
                          ? AppColorsDark.primaryButtonTextColor
                          : AppColors.primaryButtonTextColor,
                  strokeWidth: 2,
                ),
              )
              : Row(
                mainAxisAlignment:
                    !isPrimary && svgIconPath != null
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.center,
                children: [
                  if (!isPrimary && svgIconPath != null)
                    SvgPicture.asset(
                      svgIconPath!,
                      height: size.width * 0.05,
                      colorFilter:
                          isDarkMode
                              ? const ColorFilter.mode(
                                AppColorsDark.primaryButtonTextColor,
                                BlendMode.srcIn,
                              )
                              : null, // No filter in light mode unless needed
                    ),
                  Text(
                    label,
                    style:
                        isPrimary
                            ? (isDarkMode
                                ? AppFontsDark.primaryButtonStyle
                                : AppFonts.primaryButtonStyle)
                            : (isDarkMode
                                ? AppFontsDark.buttonStyle
                                : AppFonts.buttonStyle),
                  ),
                  if (!isPrimary && svgIconPath != null)
                    SizedBox(width: size.width * 0.02),
                ],
              ),
    );
  }
}
