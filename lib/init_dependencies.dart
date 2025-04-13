import 'package:get_it/get_it.dart';
import 'package:tabibi/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:tabibi/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:tabibi/features/auth/domain/repository/auth_repository.dart';
import 'package:tabibi/features/auth/domain/usecases/user_login.dart';
import 'package:tabibi/features/auth/domain/usecases/user_sigup.dart';
import 'package:tabibi/features/auth/presentation/bloc/auth_bloc.dart';

final serviceLocator = GetIt.instance;

void initDependencies() {
  // Features - Auth
  _initAuth();
}

void _initAuth() {
  // Bloc
  serviceLocator.registerLazySingleton(
    () => AuthBloc(userSignup: serviceLocator(), userLogin: serviceLocator()),
  );

  // Use cases
  serviceLocator.registerFactory(() => UserLogin(serviceLocator()));
  serviceLocator.registerFactory(() => UserSigup(serviceLocator()));

  // Repository
  serviceLocator.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(serviceLocator()),
  );

  // Data sources
  serviceLocator.registerFactory<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );
}
