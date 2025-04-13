import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tabibi/core/theme/app_colors.dart';
import 'package:tabibi/core/theme/app_fonts.dart';
import 'package:tabibi/core/theme/app_images.dart';
import 'package:tabibi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:tabibi/features/auth/presentation/widgets/auth_button.dart';
import 'package:tabibi/features/auth/presentation/widgets/auth_field.dart';
import 'package:tabibi/core/utils/custom_snack_bar.dart';
import 'package:tabibi/generated/l10n.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          CustomSnackBar.show(context, state.message);
          GoRouter.of(context).pop(); // Adjust to your route
        } else if (state is AuthFailure) {
          CustomSnackBar.show(context, state.message);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.width * 0.04,
                  horizontal: size.width * 0.06,
                ),
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          SizedBox(height: size.width * 0.05),
                          SvgPicture.asset(
                            AppImages.myLogo,
                            width: size.width * 0.25,
                          ),
                          SizedBox(height: size.width * 0.05),
                          Text(
                            S.of(context).signUp,
                            style: AppFonts.titleStyle.copyWith(
                              fontSize: size.width * 0.062,
                            ),
                          ),
                          SizedBox(height: size.width * 0.04),
                          AuthField(
                            keyboardType: TextInputType.name,
                            hintText: S.of(context).name,
                            controller: nameController,
                            svgIconPath: AppImages.nameIcon,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return S.of(context).nameRequired;
                              } else if (value.length < 4) {
                                return S.of(context).nameMustBe;
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: size.width * 0.04),
                          AuthField(
                            keyboardType: TextInputType.emailAddress,
                            hintText: S.of(context).email,
                            controller: emailController,
                            svgIconPath: AppImages.emailIcon,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return S.of(context).emailRequired;
                              } else if (!RegExp(
                                r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
                              ).hasMatch(value)) {
                                return S.of(context).enterValidEmail;
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: size.width * 0.04),
                          AuthField(
                            keyboardType: TextInputType.phone,
                            hintText: S.of(context).phone,
                            svgIconPath: AppImages.phoneIcon,
                            controller: phoneController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return S.of(context).phoneRequired;
                              } else if (value.length < 11) {
                                return S.of(context).phoneMustBe;
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: size.width * 0.04),
                          AuthField(
                            keyboardType: TextInputType.visiblePassword,
                            hintText: S.of(context).password,
                            controller: passwordController,
                            svgIconPath: AppImages.passIcon,
                            isPassword: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return S.of(context).passwordRequired;
                              } else if (value.length < 6) {
                                return S.of(context).passwordMustBe;
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: size.width * 0.04),
                          AuthField(
                            keyboardType: TextInputType.visiblePassword,
                            hintText: S.of(context).confirmPassword,
                            svgIconPath: AppImages.passIcon,
                            controller: confirmPasswordController,
                            isPassword: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return S.of(context).confirmPasswordRequired;
                              } else if (value != passwordController.text) {
                                return S.of(context).passwordsNotMatch;
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: size.width * 0.04),
                          AuthButton(
                            label:
                                state is AuthLoading
                                    ? S.of(context).Loading
                                    : S.of(context).signUp,
                            onPressed:
                                state is AuthLoading
                                    ? null
                                    : () {
                                      if (formKey.currentState!.validate()) {
                                        context.read<AuthBloc>().add(
                                          AuthSignUp(
                                            name: nameController.text.trim(),
                                            email: emailController.text.trim(),
                                            phone: phoneController.text.trim(),
                                            password:
                                                passwordController.text.trim(),
                                            confirmPassword:
                                                confirmPasswordController.text
                                                    .trim(),
                                            role: 'patient',
                                            dateOfBirth:
                                                '2003-08-18', // Fixed date format
                                            gender: 'male',
                                          ),
                                        );
                                      }
                                    },
                          ),
                          SizedBox(height: size.width * 0.04),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S.of(context).alreadyHaveAnccount,
                                style: AppFonts.regularStyle,
                              ),
                              GestureDetector(
                                onTap: () => GoRouter.of(context).pop(),
                                child: Text(
                                  S.of(context).login,
                                  style: AppFonts.linkStyle2,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.width * 0.1),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.width * 0.15,
                left: size.width * 0.06,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: size.width * 0.06,
                      backgroundColor: AppColors.iconBackground,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.titleColor,
                          size: size.width * 0.04,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
