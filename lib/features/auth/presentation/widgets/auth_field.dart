import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibi/core/theme/app_colors.dart';
import 'package:tabibi/core/theme/app_fonts.dart';
import 'package:tabibi/core/theme/app_images.dart';
import 'package:tabibi/main.dart';

class AuthField extends StatefulWidget {
  final String hintText;
  final String svgIconPath;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;

  const AuthField({
    super.key,
    required this.hintText,
    required this.svgIconPath,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.onChanged,
    this.keyboardType,
  });

  @override
  AuthFieldState createState() => AuthFieldState();
}

class AuthFieldState extends State<AuthField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.homeMainColor, width: 0.5),
            color:
                isDarkMode
                    ? AppColorsDark.primaryButtonTextColor
                    : AppColors.primaryButtonTextColor,
            borderRadius: BorderRadius.circular(size.width * 0.04),
          ),
          padding: EdgeInsets.only(
            top: size.width * 0.013,
            bottom: size.width * 0.04,
            left: isArabic() ? size.width * 0.1 : size.width * 0.04,
            right: isArabic() ? size.width * 0.04 : size.width * 0.1,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: size.width * 0.02),
                padding: EdgeInsets.all(size.width * 0.032),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      isDarkMode
                          ? AppColorsDark.iconBackground
                          : AppColors.iconBackground,
                ),
                child: SvgPicture.asset(
                  widget.svgIconPath,
                  width:
                      widget.svgIconPath == AppImages.passIcon
                          ? size.width * 0.035
                          : size.width * 0.048,
                  colorFilter:
                      isDarkMode
                          ? const ColorFilter.mode(
                            AppColorsDark.titleColor, // Ensure icon is visible
                            BlendMode.srcIn,
                          )
                          : null, // No filter in light mode unless needed
                ),
              ),
              SizedBox(
                width:
                    widget.isPassword ? size.width * 0.04 : size.width * 0.04,
              ),
              Expanded(
                child: TextFormField(
                  controller: widget.controller,
                  obscureText: widget.isPassword ? _obscureText : false,
                  validator: widget.validator,
                  onChanged: widget.onChanged,
                  keyboardType: widget.keyboardType,
                  style:
                      isDarkMode
                          ? AppFontsDark
                              .regularStyle // Text color for input
                          : AppFonts.regularStyle,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle:
                        isDarkMode
                            ? AppFontsDark.hintStyle
                            : AppFonts.hintStyle,
                    border: InputBorder.none, // Ensure no default border
                  ),
                ),
              ),
            ],
          ),
        ),
        widget.isPassword
            ? Positioned(
              top: size.height * 0.04,
              right: isArabic() ? null : size.width * 0.04,
              left: isArabic() ? size.width * 0.04 : null,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: SvgPicture.asset(
                  _obscureText ? AppImages.noPassIcon : AppImages.passIcon,
                  width: size.width * 0.04,
                  colorFilter:
                      isDarkMode
                          ? const ColorFilter.mode(
                            AppColorsDark.titleColor,
                            BlendMode.srcIn,
                          )
                          : null,
                ),
              ),
            )
            : const SizedBox(),
      ],
    );
  }
}
