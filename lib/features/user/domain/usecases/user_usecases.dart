import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/stats_entity.dart';
import '../entities/user_entity.dart';
import '../parameters/user_params.dart';
import '../repositories/i_user_repository.dart';

/// Creates a user, then resolves the full object via search
/// (the create echo carries no `id` — verified live).
@injectable
class CreateUserUseCase extends NexoUseCase<UserEntity, CreateUserParams> {
  // ignore: use_super_parameters
  CreateUserUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IUserRepository _repository;

  @override
  Future<UserEntity> execute(CreateUserParams params) =>
      _repository.createUser(params);
}

/// Partial update, then re-fetches the full object.
@injectable
class UpdateUserUseCase extends NexoUseCase<UserEntity, UpdateUserParams> {
  // ignore: use_super_parameters
  UpdateUserUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IUserRepository _repository;

  @override
  Future<UserEntity> execute(UpdateUserParams params) =>
      _repository.updateUser(params);
}

/// Deletes a user (`DELETE users/{id}/` → 204).
@injectable
class DeleteUserUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeleteUserUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IUserRepository _repository;

  @override
  Future<void> execute(int params) => _repository.deleteUser(params);
}

/// Binds a user to a clinic (`POST users/{id}/set_clinic/`).
@injectable
class SetClinicUseCase extends NexoUseCase<UserEntity, SetClinicParams> {
  // ignore: use_super_parameters
  SetClinicUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IUserRepository _repository;

  @override
  Future<UserEntity> execute(SetClinicParams params) =>
      _repository.setClinic(userId: params.userId, clinicId: params.clinicId);
}

class SetClinicParams {
  const SetClinicParams({required this.userId, required this.clinicId});

  final int userId;
  final int clinicId;
}

/// Current user (`GET /me/`). F10 lives on the canonical `User` type.
@injectable
class GetMeUseCase extends NexoUseCase<UserEntity, NoParams> {
  // ignore: use_super_parameters
  GetMeUseCase(NexoLogger logger, {required this._repository}) : super(logger);

  final IUserRepository _repository;

  @override
  Future<UserEntity> execute(NoParams params) => _repository.getMe();
}

/// Updates the current user (`PATCH /me/` → full object).
@injectable
class UpdateMeUseCase extends NexoUseCase<UserEntity, UpdateUserParams> {
  // ignore: use_super_parameters
  UpdateMeUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IUserRepository _repository;

  @override
  Future<UserEntity> execute(UpdateUserParams params) =>
      _repository.updateMe(params);
}

/// Changes the password (`POST /me/change-password/`).
/// Never probed live (lockout risk) — per-swagger contract.
@injectable
class ChangePasswordUseCase
    extends NexoUseCase<void, ChangePasswordParams> {
  // ignore: use_super_parameters
  ChangePasswordUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IUserRepository _repository;

  @override
  Future<void> execute(ChangePasswordParams params) =>
      _repository.changePassword(
        oldPassword: params.oldPassword,
        newPassword: params.newPassword,
      );
}

class ChangePasswordParams {
  const ChangePasswordParams({
    required this.oldPassword,
    required this.newPassword,
  });

  final String oldPassword;
  final String newPassword;
}

/// Global user stats (`GET /stats/`; admin/director, doctor → 403).
/// Admin-home fallback when the dashboard answers 403.
@injectable
class GetStatsUseCase extends NexoUseCase<StatsEntity, NoParams> {
  // ignore: use_super_parameters
  GetStatsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IUserRepository _repository;

  @override
  Future<StatsEntity> execute(NoParams params) => _repository.getStats();
}
