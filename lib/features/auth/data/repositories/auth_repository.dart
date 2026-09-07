import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/auth_entity.dart';
import '../../domain/parameters/login_params.dart';
import '../../domain/parameters/password_reset_params.dart';
import '../../domain/parameters/register_params.dart';
import '../../domain/repositories/i_auth_repository.dart';
import '../../../user/data/mappers/user_mapper.dart';
import '../../../user/domain/entities/user_entity.dart';
import '../datasources/i_local_auth_data_source.dart';
import '../datasources/i_remote_auth_data_source.dart';
import '../mappers/auth_mapper.dart';
import '../models/requests/login_request.dart';
import '../models/requests/password_reset_requests.dart';
import '../models/requests/register_request.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository({required this._remoteDatasource, required this._local});

  final IRemoteAuthDataSource _remoteDatasource;
  final ILocalAuthDataSource _local;

  @override
  Future<AuthEntity> login(LoginParams params) async {
    final model = await _remoteDatasource.login(
      LoginRequest(username: params.username.trim(), password: params.password),
    );
    await _local.saveTokens(access: model.access, refresh: model.refresh);
    return model.toDomain();
  }

  @override
  Future<AuthEntity> restoreSession() async {
    final stored = await _local.readTokens();
    if (stored == null) {
      throw const Failure.auth(type: AuthFailure.unauthorized);
    }
    return stored.toDomain();
  }

  @override
  Future<AuthEntity> refreshSession() async {
    final stored = await _local.readTokens();
    final refresh = stored?.refresh;
    if (refresh == null || refresh.isEmpty) {
      throw const Failure.auth(type: AuthFailure.refreshTokenExpired);
    }
    // Rotation is ON (verified live): the response always carries BOTH
    // tokens — both are persisted, the old refresh token is discarded.
    final model = await _remoteDatasource.refreshTokens(refresh);
    await _local.saveTokens(access: model.access, refresh: model.refresh);
    return model.toDomain();
  }

  @override
  Future<void> logout() async {
    try {
      await _remoteDatasource.logout();
    } catch (_) {
      // Best effort: local session is cleared regardless.
    }
    await _local.clearTokens();
  }

  @override
  Future<String> getUserRole() => _remoteDatasource.getUserRole();

  @override
  Future<UserEntity> register(RegisterParams params) async {
    // The 201 response is a bare `User` (no tokens) — mapped to the
    // canonical `User` entity; the caller logs in separately.
    final model = await _remoteDatasource.register(
      RegisterRequest(
        username: params.username.trim(),
        password: params.password,
        password2: params.password2,
        firstName: params.firstName?.trim(),
        lastName: params.lastName?.trim(),
        phone: params.phone?.trim(),
        email: params.email?.trim(),
      ),
    );
    return model.toDomain();
  }

  @override
  Future<String> requestPasswordReset(RequestPasswordResetParams params) =>
      _remoteDatasource.requestPasswordReset(
        PasswordResetRequest(email: params.email.trim()),
      );

  @override
  Future<String> confirmPasswordReset(ConfirmPasswordResetParams params) =>
      _remoteDatasource.confirmPasswordReset(
        PasswordResetConfirmRequest(
          uid: params.uid.trim(),
          token: params.token.trim(),
          newPassword: params.newPassword,
          newPassword2: params.newPassword2,
        ),
      );
}
