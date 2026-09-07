import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

/// Named identifier for the auth-only Dio instance (login/refresh/logout).
const authDioName = 'auth';

/// Bridge between secure storage and [NexoAuthInterceptor].
/// Мост между безопасным хранилищем и [NexoAuthInterceptor].
///
/// Provides token read/write/refresh callbacks to the auth interceptor.
/// Предоставляет колбэки чтения/записи/обновления токенов для auth интерсептора.
///
/// IMPORTANT: Implement [refreshAccessToken] with your actual refresh endpoint.
/// ВАЖНО: Реализуйте [refreshAccessToken] с вашим реальным эндпоинтом обновления.
@lazySingleton
class AuthInterceptorBindings {
  AuthInterceptorBindings(
    this._secureStorage, {
    @Named(authDioName) required this._authClient,
  });

  final FlutterSecureStorage _secureStorage;
  final DioClient _authClient;

  static const _accessTokenKey = 'access_token';
  static const _refreshTokenKey = 'refresh_token';

  /// Reads the current access token from secure storage.
  /// Читает текущий access token из безопасного хранилища.
  Future<String?> getAccessToken() async {
    return _secureStorage.read(key: _accessTokenKey);
  }

  /// Reads the current refresh token from secure storage.
  Future<String?> getRefreshToken() async {
    return _secureStorage.read(key: _refreshTokenKey);
  }

  /// Refreshes the access token using the stored refresh token.
  /// Обновляет access token используя сохранённый refresh token.
  ///
  /// Called automatically by [NexoAuthInterceptor] on 401.
  /// Transport-minimal parsing on purpose: the canonical token-pair parser
  /// is `AuthModel` in the auth feature, which core must not import.
  Future<String> refreshAccessToken() async {
    final refreshToken = await getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      throw const Failure.auth(type: AuthFailure.refreshTokenExpired);
    }

    final response = await _authClient.post(
      'auth/refresh/',
      data: {'refresh': refreshToken},
    );
    final data = response.data;
    if (data is! Map) {
      throw const Failure.auth(type: AuthFailure.tokenInvalid);
    }
    final map = Map<String, dynamic>.from(data);
    final access = map['access'];
    if (access is! String || access.isEmpty) {
      throw const Failure.auth(type: AuthFailure.tokenInvalid);
    }
    final rotated = map['refresh'];
    await saveTokens(
      accessToken: access,
      refreshToken: rotated is String && rotated.isNotEmpty
          ? rotated
          : refreshToken,
    );
    return access;
  }

  /// Called when the access token expires and cannot be refreshed.
  /// Вызывается когда access token истёк и не может быть обновлён.
  Future<void> onTokenExpired() async {
    await _secureStorage.delete(key: _accessTokenKey);
    await _secureStorage.delete(key: _refreshTokenKey);
    // TODO(nexo): navigate to login screen.
    // TODO(nexo): перейти на экран входа.
  }

  /// Saves tokens after successful login/registration.
  /// Сохраняет токены после успешного входа/регистрации.
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await _secureStorage.write(key: _accessTokenKey, value: accessToken);
    await _secureStorage.write(key: _refreshTokenKey, value: refreshToken);
  }

  /// Clears all tokens (on logout).
  /// Очищает все токены (при выходе).
  Future<void> clearTokens() async {
    await _secureStorage.delete(key: _accessTokenKey);
    await _secureStorage.delete(key: _refreshTokenKey);
  }
}
