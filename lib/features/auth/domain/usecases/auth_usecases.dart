import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/auth_entity.dart';
import '../repositories/i_auth_repository.dart';

/// Explicit token refresh via the stored refresh token
/// (`POST /auth/refresh/`).
///
/// Note: silent refresh on 401 is handled automatically by
/// `NexoAuthInterceptor` → `AuthInterceptorBindings`.
@injectable
class RefreshSessionUseCase extends NexoUseCase<AuthEntity, NoParams> {
  // ignore: use_super_parameters
  RefreshSessionUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAuthRepository _repository;

  @override
  Future<AuthEntity> execute(NoParams params) => _repository.refreshSession();
}

/// Best-effort server logout + local token wipe.
@injectable
class LogoutUseCase extends NexoUseCase<void, NoParams> {
  // ignore: use_super_parameters
  LogoutUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAuthRepository _repository;

  @override
  Future<void> execute(NoParams params) => _repository.logout();
}

/// Backend role string from `GET /me/` for post-login routing.
/// Values: `doctor` / `director` / `admin` / `receptionist`.
@injectable
class GetUserRoleUseCase extends NexoUseCase<String, NoParams> {
  // ignore: use_super_parameters
  GetUserRoleUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAuthRepository _repository;

  @override
  Future<String> execute(NoParams params) => _repository.getUserRole();
}
