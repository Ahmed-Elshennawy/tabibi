import 'package:fpdart/fpdart.dart';
import 'package:tabibi/core/error/exceptions.dart';
import 'package:tabibi/core/error/failures.dart';
import 'package:tabibi/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:tabibi/features/auth/domain/entities/login_response.dart';
import 'package:tabibi/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, LoginResponse>> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final loginResponse = await remoteDataSource.loginWithEmailPassword(
        email: email,
        password: password,
      );
      return right(loginResponse);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String confirmPassword,
    required String role,
    required String dateOfBirth,
    required String gender,
  }) async {
    try {
      final messageSucces = await remoteDataSource.signUpWithEmailPassword(
        name: name,
        email: email,
        phone: phone,
        password: password,
        confirmPassword: confirmPassword,
        role: role,
        dateOfBirth: dateOfBirth,
        gender: gender,
      );
      return right(messageSucces);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
