import 'package:injectable/injectable.dart';

import '../../../../core/config.dart';
import '../../../user/data/models/user_model.dart';
import '../models/auth_model.dart';
import '../models/requests/login_request.dart';
import '../models/requests/password_reset_requests.dart';
import '../models/requests/register_request.dart';
import 'i_remote_auth_data_source.dart';

/// Offline/mock auth backend for dev without a token.
@LazySingleton(as: IRemoteAuthDataSource, env: [AppEnvironment.mock])
class MockAuthRemoteDataSource implements IRemoteAuthDataSource {
  @override
  Future<AuthModel> login(LoginRequest request) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return const AuthModel(
      access: 'mock-access-token',
      refresh: 'mock-refresh-token',
    );
  }

  @override
  Future<AuthModel> refreshTokens(String refreshToken) async {
    return const AuthModel(
      access: 'mock-access-token',
      refresh: 'mock-refresh-token',
    );
  }

  @override
  Future<void> logout() async {}

  @override
  Future<String> getUserRole() async => 'doctor';

  @override
  Future<UserModel> register(RegisterRequest request) async =>
      UserModel(
        id: 99,
        username: request.username,
        email: request.email,
        first_name: request.firstName,
        last_name: request.lastName,
        full_name: null,
        role: 'receptionist',
        role_display: 'Регистратор',
        phone: request.phone,
        clinic: null,
        clinic_detail: null,
        is_active: true,
        fcm_token: null,
        device_id: null,
        last_login: null,
        date_joined: null,
        created_at: null,
        updated_at: null,
      );

  @override
  Future<String> requestPasswordReset(PasswordResetRequest request) async =>
      'Ссылка для сброса отправлена на ${request.email}';

  @override
  Future<String> confirmPasswordReset(
    PasswordResetConfirmRequest request,
  ) async => 'Пароль успешно изменён';
}
