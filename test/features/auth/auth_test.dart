import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/auth/data/mappers/auth_mapper.dart';
import 'package:san_dent/features/auth/data/models/auth_model.dart';
import 'package:san_dent/features/auth/data/models/requests/login_request.dart';
import 'package:san_dent/features/auth/data/models/requests/password_reset_requests.dart';
import 'package:san_dent/features/auth/data/models/requests/register_request.dart';
import 'package:san_dent/features/auth/data/repositories/auth_repository.dart';
import 'package:san_dent/features/auth/data/datasources/i_local_auth_data_source.dart';
import 'package:san_dent/features/auth/data/datasources/i_remote_auth_data_source.dart';
import 'package:san_dent/features/auth/domain/entities/auth_entity.dart';
import 'package:san_dent/features/auth/domain/parameters/login_params.dart';
import 'package:san_dent/features/auth/domain/parameters/password_reset_params.dart';
import 'package:san_dent/features/auth/domain/parameters/register_params.dart';
import 'package:san_dent/features/auth/domain/usecases/auth_usecases.dart';
import 'package:san_dent/features/auth/domain/usecases/login_usecase.dart';
import 'package:san_dent/features/auth/domain/usecases/registration_usecases.dart';
import 'package:san_dent/features/auth/domain/usecases/restore_session_usecase.dart';
import 'package:san_dent/features/user/data/models/user_model.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

class FakeRemote implements IRemoteAuthDataSource {
  AuthModel loginResult = const AuthModel(access: 'a', refresh: 'r');
  AuthModel refreshResult = const AuthModel(access: 'a2', refresh: 'r2');
  String role = 'doctor';
  bool failLogin = false;
  bool failLogout = false;
  int logoutCalls = 0;
  LoginRequest? lastLoginRequest;

  @override
  Future<AuthModel> login(LoginRequest request) async {
    lastLoginRequest = request;
    if (failLogin) {
      throw const Failure.auth(type: AuthFailure.unauthorized);
    }
    return loginResult;
  }

  @override
  Future<AuthModel> refreshTokens(String refreshToken) async =>
      refreshResult;

  @override
  Future<void> logout() async {
    logoutCalls++;
    if (failLogout) throw Exception('network down');
  }

  @override
  Future<String> getUserRole() async => role;

  @override
  Future<UserModel> register(RegisterRequest request) async =>
      UserModel.fromJson(_registeredUserJson(request.username));

  @override
  Future<String> requestPasswordReset(PasswordResetRequest request) async =>
      'Ссылка отправлена на ${request.email}';

  @override
  Future<String> confirmPasswordReset(
    PasswordResetConfirmRequest request,
  ) async => 'Пароль изменён';
}

/// Shape of a live `POST /auth/register/` 201 (bare `User`, no tokens).
Map<String, dynamic> _registeredUserJson(String username) => {
  'id': 99,
  'username': username,
  'email': '',
  'first_name': '',
  'last_name': '',
  'full_name': username,
  'role': 'receptionist',
  'role_display': 'Регистратор',
  'phone': '',
  'clinic': null,
  'clinic_detail': null,
  'is_active': true,
  'fcm_token': null,
  'device_id': null,
  'last_login': null,
  'date_joined': '2026-09-07T10:00:00+0300',
  'created_at': '2026-09-07T10:00:00+0300',
  'updated_at': '2026-09-07T10:00:00+0300',
};

class FakeLocal implements ILocalAuthDataSource {
  AuthModel? stored;

  @override
  Future<void> saveTokens({required String access, String? refresh}) async {
    stored = AuthModel(access: access, refresh: refresh ?? '');
  }

  @override
  Future<AuthModel?> readTokens() async => stored;

  @override
  Future<void> clearTokens() async {
    stored = null;
  }
}

void main() {
  late FakeRemote remote;
  late FakeLocal local;
  late AuthRepository repository;

  setUp(() {
    remote = FakeRemote();
    local = FakeLocal();
    repository = AuthRepository(
      remoteDatasource: remote,
      local: local,
    );
  });

  group('AuthRepository.login', () {
    test('saves tokens and returns entity', () async {
      final entity = await repository.login(
        const LoginParams(username: ' doc ', password: 'pw'),
      );

      expect(entity.access, 'a');
      expect(entity.refresh, 'r');
      expect(local.stored?.access, 'a');
      // Username is trimmed before sending.
      expect(remote.lastLoginRequest?.username, 'doc');
    });
  });

  group('AuthRepository.restoreSession', () {
    test('returns stored session', () async {
      await local.saveTokens(access: 'a', refresh: 'r');
      final entity = await repository.restoreSession();
      expect(entity, const AuthEntity(access: 'a', refresh: 'r'));
    });

    test('throws auth.unauthorized when no session stored', () async {
      final result = await RestoreSessionUseCase(
        _logger(),
        repository: repository,
      )(const NoParams());
      expect(result, isFailure(code: 'auth.unauthorized'));
    });
  });

  group('AuthRepository.refreshSession', () {
    test('persists BOTH rotated tokens from the backend', () async {
      await local.saveTokens(access: 'old-a', refresh: 'old-r');
      final entity = await repository.refreshSession();

      expect(entity.access, 'a2');
      expect(entity.refresh, 'r2');
      expect(local.stored?.access, 'a2');
      expect(local.stored?.refresh, 'r2');
    });
  });

  group('AuthRepository.logout', () {
    test('clears tokens even when remote logout fails', () async {
      remote.failLogout = true;
      await local.saveTokens(access: 'a', refresh: 'r');

      await repository.logout();

      expect(local.stored, isNull);
      expect(remote.logoutCalls, 1);
    });
  });

  group('UseCases', () {
    test('LoginUseCase maps repository failure to Result Left', () async {
      remote.failLogin = true;
      final useCase = LoginUseCase(_logger(), repository: repository);

      final result = await useCase(
        const LoginParams(username: 'u', password: 'p'),
      );

      expect(result, isFailure());
    });

    test('LoginUseCase returns Right on success', () async {
      final useCase = LoginUseCase(_logger(), repository: repository);

      final result = await useCase(
        const LoginParams(username: 'u', password: 'p'),
      );

      expect(
        result,
        isSuccess(const AuthEntity(access: 'a', refresh: 'r')),
      );
    });

    test('RestoreSessionUseCase returns Left when no session', () async {
      final useCase = RestoreSessionUseCase(
        _logger(),
        repository: repository,
      );

      final result = await useCase(const NoParams());

      expect(result, isFailure());
    });

    test('GetUserRoleUseCase returns backend role', () async {
      remote.role = 'admin';
      final useCase = GetUserRoleUseCase(_logger(), repository: repository);

      final result = await useCase(const NoParams());

      expect(result, isSuccess('admin'));
    });

    test('LogoutUseCase clears the session', () async {
      await local.saveTokens(access: 'a', refresh: 'r');
      final useCase = LogoutUseCase(_logger(), repository: repository);

      final result = await useCase(const NoParams());

      expect(result, isSuccess(null));
      expect(local.stored, isNull);
    });
  });

  group('AuthMapper', () {
    test('toDomain maps access/refresh', () {
      expect(
        const AuthModel(access: 'a', refresh: 'r').toDomain(),
        const AuthEntity(access: 'a', refresh: 'r'),
      );
    });
  });

  group('LoginParams validation', () {
    test('rejects blank username/password', () {
      expect(
        LoginParams.validateAll(username: '  ', password: 'pw'),
        isNotNull,
      );
      expect(
        LoginParams.validateAll(username: 'user', password: ''),
        isNotNull,
      );
      expect(
        LoginParams.validateAll(username: 'user', password: 'pw'),
        isNull,
      );
    });
  });

  group('Registration', () {
    test('RegisterUseCase returns the created user (no tokens)', () async {
      final useCase = RegisterUseCase(_logger(), repository: repository);

      final result = await useCase(
        const RegisterParams(
          username: 'new_user',
          password: 'TestPass123!',
          password2: 'TestPass123!',
        ),
      );

      final user = result.dataOrThrow();
      expect(user.username, 'new_user');
      expect(local.stored, isNull);
    });

    test('RequestPasswordResetUseCase returns the message', () async {
      final useCase = RequestPasswordResetUseCase(
        _logger(),
        repository: repository,
      );

      final result = await useCase(
        const RequestPasswordResetParams(email: 'a@b.cd'),
      );

      expect(result.dataOrThrow(), contains('a@b.cd'));
    });

    test('ConfirmPasswordResetUseCase returns the message', () async {
      final useCase = ConfirmPasswordResetUseCase(
        _logger(),
        repository: repository,
      );

      final result = await useCase(
        const ConfirmPasswordResetParams(
          uid: 'MQ',
          token: 'tok',
          newPassword: 'TestPass123!',
          newPassword2: 'TestPass123!',
        ),
      );

      expect(result.dataOrThrow(), isNotEmpty);
    });
  });

  group('RegisterParams validation', () {
    test('rejects mismatch/weak password, accepts a valid set', () {
      expect(
        RegisterParams.validateAll(
          username: 'u',
          password: 'TestPass123!',
          password2: 'other',
        ),
        isNotNull,
      );
      expect(
        RegisterParams.validateAll(
          username: 'u',
          password: 'short',
          password2: 'short',
        ),
        isNotNull,
      );
      expect(
        RegisterParams.validateAll(
          username: 'new_user',
          password: 'TestPass123!',
          password2: 'TestPass123!',
          phone: '+996555000111',
        ),
        isNull,
      );
    });

    test('ConfirmPasswordResetParams requires uid/token', () {
      expect(
        ConfirmPasswordResetParams.validateAll(
          uid: '',
          token: 't',
          newPassword: 'TestPass123!',
          newPassword2: 'TestPass123!',
        ),
        isNotNull,
      );
      expect(
        ConfirmPasswordResetParams.validateAll(
          uid: 'MQ',
          token: 'tok',
          newPassword: 'TestPass123!',
          newPassword2: 'TestPass123!',
        ),
        isNull,
      );
    });
  });
}
