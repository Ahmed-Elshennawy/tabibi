import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabibi/features/auth/domain/usecases/user_login.dart';
import 'package:tabibi/features/auth/domain/usecases/user_sigup.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSigup _userSignup;
  final UserLogin _userLogin;
  AuthBloc({required UserSigup userSignup, required UserLogin userLogin})
    : _userSignup = userSignup,
      _userLogin = userLogin,
      super(AuthInitial()) {
    on<AuthSignUp>(_onAuthSignUp);
    on<AuthLogin>(_onAuthLogin);
  }

  void _onAuthSignUp(AuthSignUp event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final response = await _userSignup(
      UserSigupParams(
        name: event.name,
        email: event.email,
        phoneNumber: event.phone,
        password: event.password,
        confirmPassword: event.confirmPassword,
        role: event.role,
        dateOfBirth: event.dateOfBirth,
        gender: event.gender,
      ),
    );
    log('Signup response received');
    response.fold(
      (failure) {
        log('Signup failed: ${failure.message}');
        emit(AuthFailure(failure.message));
      },
      (message) {
        log('Signup success: $message');
        emit(AuthSuccess(message));
      },
    );
  }

  void _onAuthLogin(AuthLogin event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final response = await _userLogin(
      UserLoginParams(email: event.email, password: event.password),
    );
    log('Login response received');
    response.fold(
      (failure) {
        log('Login failed: ${failure.message}');
        emit(AuthFailure(failure.message));
      },
      (loginResponse) {
        log('Login success: ${loginResponse.message}');
        emit(AuthSuccess(loginResponse.message));
      },
    );
  }
}
