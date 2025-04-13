import 'package:fpdart/fpdart.dart';
import 'package:tabibi/core/error/failures.dart';
import 'package:tabibi/core/usecase/usecase.dart';
import 'package:tabibi/features/auth/domain/entities/login_response.dart';
import 'package:tabibi/features/auth/domain/repository/auth_repository.dart';

class UserLogin extends Usecase<LoginResponse, UserLoginParams> {
  final AuthRepository authRepository;
  UserLogin(this.authRepository);

  @override
  Future<Either<Failure, LoginResponse>> call(UserLoginParams params) async {
    return await authRepository.loginWithEmailPassword(
      email: params.email,
      password: params.password,
    );
  }
}

class UserLoginParams {
  final String email;
  final String password;

  UserLoginParams({required this.email, required this.password});
}
