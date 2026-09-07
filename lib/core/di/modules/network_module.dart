import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nexo/nexo.dart';

import '../../config.dart';
import '../../network/auth_interceptor_bindings.dart'
    show AuthInterceptorBindings, authDioName;

/// DI module providing Dio instances and interceptors.
/// DI-модуль, предоставляющий Dio-экземпляры и интерсепторы.
///
/// Two Dio instances:
/// Два Dio-экземпляра:
/// - [authDio] — for login/register/refresh (no auth interceptor to avoid
///               circular dependency).
///   Для login/register/refresh (без auth интерсептора во избежание
///   циклической зависимости).
/// - [dio] — for all authenticated API calls (with NexoAuthInterceptor).
///   Для всех авторизованных API-вызовов (с NexoAuthInterceptor).
@module
abstract class NetworkModule {
  BaseOptions get _baseOptions => BaseOptions(
        baseUrl: kApiBaseUrl.endsWith('/') ? kApiBaseUrl : '$kApiBaseUrl/',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 30),
        headers: const {
          'Accept': 'application/json',
        },
      );

  /// Auth Dio — no token interceptor (used for login/register/refresh).
  /// Auth Dio — без интерсептора токена (для login/register/refresh).
  @Named(authDioName)
  @lazySingleton
  Dio authDio(NexoLogger logger) {
    final dio = Dio(_baseOptions);
    dio.interceptors.addAll([
      NexoRequestIdInterceptor(logger: logger),
      NexoLoggingInterceptor(logger: logger),
    ]);
    return dio;
  }

  /// Typed wrapper around auth Dio.
  /// Типизированная обёртка над auth Dio.
  @Named(authDioName)
  @lazySingleton
  DioClient authDioClient(@Named(authDioName) Dio dio) => DioClient(dio);

  /// Main Dio — with auth interceptor for token injection + refresh.
  /// Основной Dio — с auth интерсептором для инъекции токена + обновления.
  @lazySingleton
  Dio dio(NexoLogger logger, AuthInterceptorBindings auth) {
    final dio = Dio(_baseOptions);
    dio.interceptors.addAll([
      NexoRequestIdInterceptor(logger: logger),
      NexoLoggingInterceptor(logger: logger),
      NexoAuthInterceptor(
        dio: dio,
        getToken: auth.getAccessToken,
        refreshToken: auth.refreshAccessToken,
        onTokenExpired: auth.onTokenExpired,
      ),
    ]);
    return dio;
  }

  /// Typed wrapper around main Dio.
  /// Типизированная обёртка над основным Dio.
  @lazySingleton
  DioClient dioClient(Dio dio) => DioClient(dio);
}
