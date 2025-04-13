import 'package:fpdart/fpdart.dart';
import 'package:tabibi/core/error/failures.dart';
import 'package:tabibi/core/usecase/usecase.dart';
import 'package:tabibi/features/auth/domain/repository/auth_repository.dart';

class UserSigup implements Usecase<String, UserSigupParams> {
  final AuthRepository authRepository;
  const UserSigup(this.authRepository);

  @override
  Future<Either<Failure, String>> call(UserSigupParams params) async {
    return await authRepository.signUpWithEmailPassword(
      name: params.name,
      email: params.email,
      phone: params.phoneNumber,
      password: params.password,
      confirmPassword: params.confirmPassword,
      role: params.role,
      dateOfBirth: params.dateOfBirth,
      gender: params.gender,
    );
  }
}

class UserSigupParams {
  final String name;
  final String email;
  final String phoneNumber;
  final String password;
  final String confirmPassword;
  final String role;
  final String dateOfBirth;
  final String gender;

  UserSigupParams({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.confirmPassword,
    required this.role,
    required this.dateOfBirth,
    required this.gender,
  });
}
