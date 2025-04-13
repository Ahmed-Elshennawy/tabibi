import 'package:tabibi/features/auth/domain/entities/login_response.dart';

import 'user_model.dart';

class LoginResponseModel extends LoginResponse {
  const LoginResponseModel({
    required super.message,
    required super.user,
    required super.accessToken,
  });

  factory LoginResponseModel.fromJson(Map<String,  dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    return LoginResponseModel(
      message: data['message'] as String,
      user: UserModel.fromJson(data['data'] as Map<String, dynamic>),
      accessToken: data['access'] as String,
    );
  }
}
