import 'package:tabibi/features/auth/domain/entities/login_response.dart';

import 'user_model.dart';

class LoginResponseModel extends LoginResponse {
  const LoginResponseModel({
    required super.message,
    required super.user,
    required super.accessToken,
  });

  factory LoginResponseModel.fromJson(Map<String,  dynamic> json) {
    return LoginResponseModel( 
      message: json['message'],
      user: UserModel.fromJson(json['data']),
      accessToken: json['access'],
    );
  }
}
