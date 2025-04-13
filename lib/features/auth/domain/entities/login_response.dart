import 'package:tabibi/features/auth/domain/entities/user.dart';

class LoginResponse {
  final String message;
  final User user;
  final String accessToken;

  const LoginResponse({
    required this.message,
    required this.user,
    required this.accessToken,
  });
}
