// abstract classes are used to provide a base class for concrete subclasses to inherit from.
// interfaces are used to define a set of methods and properties that a class must implement.

import 'package:fpdart/fpdart.dart';
import 'package:tabibi/core/error/failures.dart';
import 'package:tabibi/features/auth/domain/entities/login_response.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String confirmPassword,
    required String role,
    required String dateOfBirth,
    required String gender,
  });
  Future<Either<Failure, LoginResponse>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}
