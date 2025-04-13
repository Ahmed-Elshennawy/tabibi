import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:tabibi/core/error/exceptions.dart';
import 'package:tabibi/core/secrets/app_secrets.dart';
import 'package:tabibi/features/auth/data/models/login_response_model.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String confirmPassword,
    required String role,
    required String dateOfBirth,
    required String gender,
  });
  Future<LoginResponseModel> loginWithEmailPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;
  final String baseUrl = AppSecrets.baseUrl;

  AuthRemoteDataSourceImpl()
    : _dio = Dio(
        BaseOptions(
          baseUrl: AppSecrets.baseUrl,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          headers: {'Content-Type': 'application/json'},
        ),
      );

  @override
  Future<String> signUpWithEmailPassword({
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
      final formData = FormData.fromMap({
        'name': name,
        'username': email,
        'email': email,
        'password': password,
        'password2': confirmPassword,
        'role': role,
        'phone': phone,
        'date_of_birth': dateOfBirth,
        'gender': gender,
        'profile_picture': null,
      });

      final response = await _dio.post('/api/register/', data: formData);
      log('Response: ${response.data}');

      return response.data['data']['message'] as String;
    } on DioException catch (e) {
      if (e.response != null && e.response!.data != null) {
        final errorData = e.response!.data;
        if (errorData is Map && errorData.containsKey('errors')) {
          final errorMessage = errorData['errors'][0]['detail'] ?? e.message;
          throw ServerException(errorMessage);
        }
      }
      throw ServerException('${e.message}');
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<LoginResponseModel> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '/api/login/',
        data: {'email': email, 'password': password},
      );
      log('Response: ${response.data}');

      return LoginResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null && e.response!.data != null) {
        final errorData = e.response!.data;
        if (errorData is Map && errorData.containsKey('errors')) {
          final errorMessage = errorData['errors'][0]['detail'] ?? e.message;
          throw ServerException(errorMessage);
        }
      }
      throw ServerException('${e.message}');
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
