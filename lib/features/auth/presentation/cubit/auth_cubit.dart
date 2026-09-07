import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/auth_entity.dart';
import '../../domain/parameters/login_params.dart';
import '../../domain/usecases/auth_usecases.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/restore_session_usecase.dart';

/// Auth session state machine.
///
/// `fetch()` restores the stored session (startup auto-login).
/// [loginAndGetRole] performs login and resolves the backend role for routing.
@injectable
class AuthCubit extends NexoAsyncCubit<AuthEntity> {
  AuthCubit({
    required this._loginUseCase,
    required this._restoreSessionUseCase,
    required this._logoutUseCase,
    required this._getUserRoleUseCase,
  });

  final LoginUseCase _loginUseCase;
  final RestoreSessionUseCase _restoreSessionUseCase;
  final LogoutUseCase _logoutUseCase;
  final GetUserRoleUseCase _getUserRoleUseCase;

  @override
  Future<Result<AuthEntity>> fetch() =>
      _restoreSessionUseCase(const NoParams());

  /// Returns true on success; failure is emitted + forwarded to [onFailure].
  Future<bool> login({required String username, required String password}) async {
    if (isClosed) return false;
    emit(const NexoAsyncLoading());
    final result = await _loginUseCase(
      LoginParams(username: username, password: password),
    );
    if (isClosed) return false;
    switch (result) {
      case Left(:final failure):
        onFailure?.call(failure);
        emit(NexoAsyncFailure<AuthEntity>(failure));
        return false;
      case Right(:final value):
        emit(NexoAsyncSuccess<AuthEntity>(value));
        return true;
    }
  }

  /// Logs in and returns the backend role (`doctor`/`director`/`admin`/
  /// `receptionist`), or null when login failed.
  Future<String?> loginAndGetRole({
    required String username,
    required String password,
  }) async {
    if (!await login(username: username, password: password)) return null;
    final roleResult = await _getUserRoleUseCase(const NoParams());
    return roleResult.dataOrNull;
  }

  /// Post-login route by backend role.
  ///
  /// `doctor`/`receptionist` work the daily schedule UI; `director`/`admin`
  /// use the admin tabs. Anything unknown falls back to the admin home
  /// (never blocks the user on a splash).
  static String homeRouteForRole(String role) {
    return switch (role) {
      'doctor' || 'receptionist' => '/home',
      _ => '/admin/home',
    };
  }

  Future<void> logout() async {
    await _logoutUseCase(const NoParams());
    if (!isClosed) emit(const NexoAsyncIdle());
  }
}
