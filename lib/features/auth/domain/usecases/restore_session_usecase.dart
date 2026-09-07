import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/auth_entity.dart';
import '../repositories/i_auth_repository.dart';

/// Restores the stored session (used at startup to skip login).
@injectable
class RestoreSessionUseCase extends NexoUseCase<AuthEntity, NoParams> {
  // ignore: use_super_parameters
  RestoreSessionUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAuthRepository _repository;

  @override
  Future<AuthEntity> execute(NoParams params) => _repository.restoreSession();
}
