import '../../../user/domain/entities/user_entity.dart';
import '../entities/auth_entity.dart';
import '../parameters/login_params.dart';
import '../parameters/password_reset_params.dart';
import '../parameters/register_params.dart';

/// Auth repository contract.
abstract interface class IAuthRepository {
  Future<AuthEntity> login(LoginParams params);
  Future<AuthEntity> restoreSession();
  Future<AuthEntity> refreshSession();
  Future<void> logout();
  Future<String> getUserRole();

  /// Registers a user (`POST auth/register/` → `User`, no tokens).
  Future<UserEntity> register(RegisterParams params);

  /// Starts the reset flow (`POST auth/password-reset/`) → message.
  Future<String> requestPasswordReset(RequestPasswordResetParams params);

  /// Completes the reset (`POST auth/password-reset/confirm/`) → message.
  Future<String> confirmPasswordReset(ConfirmPasswordResetParams params);
}
