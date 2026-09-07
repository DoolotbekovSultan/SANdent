import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../user/domain/entities/user_entity.dart';
import '../parameters/password_reset_params.dart';
import '../parameters/register_params.dart';
import '../repositories/i_auth_repository.dart';

/// Registers a user (`POST /auth/register/` → `User`, no tokens).
/// The caller logs in afterwards with the same credentials.
@injectable
class RegisterUseCase extends NexoUseCase<UserEntity, RegisterParams> {
  // ignore: use_super_parameters
  RegisterUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAuthRepository _repository;

  @override
  Future<UserEntity> execute(RegisterParams params) =>
      _repository.register(params);
}

/// Starts the password-reset flow (`POST /auth/password-reset/`).
@injectable
class RequestPasswordResetUseCase
    extends NexoUseCase<String, RequestPasswordResetParams> {
  // ignore: use_super_parameters
  RequestPasswordResetUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAuthRepository _repository;

  @override
  Future<String> execute(RequestPasswordResetParams params) =>
      _repository.requestPasswordReset(params);
}

/// Completes the password-reset flow (`POST /auth/password-reset/confirm/`).
@injectable
class ConfirmPasswordResetUseCase
    extends NexoUseCase<String, ConfirmPasswordResetParams> {
  // ignore: use_super_parameters
  ConfirmPasswordResetUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAuthRepository _repository;

  @override
  Future<String> execute(ConfirmPasswordResetParams params) =>
      _repository.confirmPasswordReset(params);
}
