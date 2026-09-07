import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/auth_entity.dart';
import '../parameters/login_params.dart';
import '../repositories/i_auth_repository.dart';

/// `POST /auth/login/` → tokens → secure storage.
@injectable
class LoginUseCase extends NexoUseCase<AuthEntity, LoginParams> {
  // ignore: use_super_parameters
  LoginUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAuthRepository _repository;

  @override
  Future<AuthEntity> execute(LoginParams params) =>
      _repository.login(params);
}
