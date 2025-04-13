import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tabibi/core/theme/app_colors.dart';
import 'package:tabibi/core/theme/app_fonts.dart';
import 'package:tabibi/core/theme/app_images.dart';
import 'package:tabibi/core/utils/custom_snack_bar.dart';
import 'package:tabibi/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:tabibi/features/auth/presentation/widgets/auth_button.dart';
import 'package:tabibi/features/auth/presentation/widgets/auth_field.dart';
import 'package:tabibi/generated/l10n.dart';
import 'package:tabibi/routes/app_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: size.width * 0.04,
          horizontal: size.width * 0.06,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  CustomSnackBar.show(context, state.message);
                  // GoRouter.of(context).push(AppRouter.homePage);
                } else if (state is AuthFailure) {
                  // Handle login failure
                  CustomSnackBar.show(context, state.message);
                }
              },
              builder: (context, state) {
                return Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: size.width * 0.05),
                      SvgPicture.asset(
                        AppImages.myLogo,
                        width: size.width * 0.25,
                      ),
                      SizedBox(height: size.width * 0.05),
                      Text(
                        S.of(context).signIn,
                        style: AppFonts.titleStyle.copyWith(
                          fontSize: size.width * 0.062,
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      AuthField(
                        keyboardType: TextInputType.emailAddress,
                        hintText: S.of(context).email,
                        svgIconPath: AppImages.emailIcon,
                        controller: _emailController,
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
                      SizedBox(height: size.height * 0.035),
                      AuthField(
                        keyboardType: TextInputType.visiblePassword,
                        hintText: S.of(context).password,
                        isPassword: true,
                        controller: _passwordController,
                        svgIconPath: AppImages.passIcon,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.of(context).passwordRequired;
                          } else if (value.length < 6) {
                            return S.of(context).passwordMustBe;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: size.height * 0.02),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          // onTap: () {
                          //   GoRouter.of(context)
                          //       .push(AppRouter.forgetPassScreen);
                          // },
                          child: Text(
                            S.of(context).forgetPassword,
                            style: AppFonts.linkStyle1,
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.025),
                      AuthButton(
                        label:
                            state is AuthLoading
                                ? S.of(context).Loading
                                : S.of(context).login,
                        isLoading: false,
                        onPressed:
                            state is AuthLoading
                                ? null
                                : () {
                                  if (_formKey.currentState!.validate()) {
                                    context.read<AuthBloc>().add(
                                      AuthLogin(
                                        email: _emailController.text.trim(),
                                        password:
                                            _passwordController.text.trim(),
                                      ),
                                    );
                                  }
                                },
                      ),
                      SizedBox(height: size.height * 0.025),
                      Row(
                        children: [
                          const Expanded(
                            child: Divider(color: AppColors.dividerColor),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.05,
                            ),
                            child: Text(
                              S.of(context).OR,
                              style: AppFonts.orStyle,
                            ),
                          ),
                          const Expanded(
                            child: Divider(color: AppColors.dividerColor),
                          ),
                        ],
                      ),
                      SizedBox(height: size.width * 0.01),
                      AuthButton(
                        label: S.of(context).doctorLogin,
                        isPrimary: false,
                        onPressed: () {},
                      ),
                      SizedBox(height: size.width * 0.08),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${S.of(context).newToTabibi} ',
                            style: AppFonts.regularStyle,
                          ),
                          GestureDetector(
                            onTap: () {
                              GoRouter.of(context).push(AppRouter.signupPage);
                            },
                            child: Text(
                              S.of(context).Register,
                              style: AppFonts.linkStyle2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
