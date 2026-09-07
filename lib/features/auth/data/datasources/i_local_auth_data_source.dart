import '../models/auth_model.dart';

/// Secure token persistence (backed by `AuthInterceptorBindings`, so the
/// storage keys live in exactly one place — `lib/core/network/`).
abstract interface class ILocalAuthDataSource {
  Future<void> saveTokens({required String access, String? refresh});
  Future<AuthModel?> readTokens();
  Future<void> clearTokens();
}
