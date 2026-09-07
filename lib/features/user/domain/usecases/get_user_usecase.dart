import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/user_entity.dart';
import '../repositories/i_user_repository.dart';

/// Page parameters for the users list.
class UsersPageParams {
  const UsersPageParams({this.page = 1, this.search});

  final int page;
  final String? search;
}

/// Paged users (`GET users/`).
@injectable
class GetUsersUseCase
    extends NexoUseCase<PageChunk<UserEntity, int>, UsersPageParams> {
  // ignore: use_super_parameters
  GetUsersUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IUserRepository _repository;

  @override
  Future<PageChunk<UserEntity, int>> execute(UsersPageParams params) =>
      _repository.getUsers(page: params.page, search: params.search);
}

/// Doctors (`GET users/doctors/` → bare array).
@injectable
class GetDoctorsUseCase extends NexoUseCase<List<UserEntity>, NoParams> {
  // ignore: use_super_parameters
  GetDoctorsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IUserRepository _repository;

  @override
  Future<List<UserEntity>> execute(NoParams params) =>
      _repository.getDoctors();
}

/// User detail (`GET users/{id}/`).
@injectable
class GetUserByIdUseCase extends NexoUseCase<UserEntity, int> {
  // ignore: use_super_parameters
  GetUserByIdUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IUserRepository _repository;

  @override
  Future<UserEntity> execute(int params) => _repository.getUserById(params);
}
