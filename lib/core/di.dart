import 'package:data/data.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

final injection = GetIt.instance;

void init() {
  AndroidOptions getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
  final dio = Dio(
    BaseOptions(
      headers: {Headers.contentTypeHeader: Headers.jsonContentType},
    ),
  )..interceptors.add(AppInterceptor());
  injection
    ..registerLazySingleton<Dio>(() => dio)
    ..registerLazySingleton<FlutterSecureStorage>(
      () => FlutterSecureStorage(
        aOptions: getAndroidOptions(),
      ),
    )
    ..registerLazySingleton<Mapper>(() => Mapper())
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSource(
        injection(),
      ),
    )
    ..registerLazySingleton<SecureLocalDataSource>(
      () => SecureLocalDataSource(
        storage: injection(),
      ),
    )
    ..registerLazySingleton<SecureLocalRepository>(
      () => SecureLocalRepositoryImpl(
        localDataSource: injection(),
      ),
    )
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        authRemoteDataSource: injection(),
        mapper: injection(),
      ),
    )
    ..registerLazySingleton<AuthUseCase>(
      () => AuthUseCase(
        authRepository: injection(),
        localRepository: injection(),
      ),
    );

  // ..registerLazySingleton<LocalRepository>(() => LocalRepositoryImpl(localDataSource: injection()));
}
