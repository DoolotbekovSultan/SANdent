import 'package:injectable/injectable.dart';

import '../../../../core/network/auth_interceptor_bindings.dart';
import '../models/auth_model.dart';
import 'i_local_auth_data_source.dart';

/// [ILocalAuthDataSource] on top of secure storage via [AuthInterceptorBindings].
@LazySingleton(as: ILocalAuthDataSource)
class SecureStorageAuthLocalDataSource implements ILocalAuthDataSource {
  SecureStorageAuthLocalDataSource(this._bindings);

  final AuthInterceptorBindings _bindings;

  @override
  Future<void> saveTokens({required String access, String? refresh}) =>
      _bindings.saveTokens(accessToken: access, refreshToken: refresh ?? '');

  @override
  Future<AuthModel?> readTokens() async {
    final access = await _bindings.getAccessToken();
    if (access == null || access.isEmpty) return null;
    return AuthModel(
      access: access,
      refresh: await _bindings.getRefreshToken() ?? '',
    );
  }

  @override
  Future<void> clearTokens() => _bindings.clearTokens();
}
