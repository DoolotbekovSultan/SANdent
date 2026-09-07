import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/stats_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/parameters/user_params.dart';
import '../../domain/repositories/i_user_repository.dart';
import '../datasources/i_remote_user_data_source.dart';
import '../mappers/user_mapper.dart';
import '../models/requests/user_requests.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  UserRepository({required this._remoteDatasource});

  final IRemoteUserDataSource _remoteDatasource;

  @override
  Future<PageChunk<UserEntity, int>> getUsers({
    required int page,
    String? search,
  }) async {
    final chunk = await _remoteDatasource.getUsers(page: page, search: search);
    return PageChunk<UserEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<List<UserEntity>> getDoctors() async {
    final models = await _remoteDatasource.getDoctors();
    return models.toDomain();
  }

  @override
  Future<UserEntity> getUserById(int id) async {
    final model = await _remoteDatasource.getUserById(id);
    return model.toDomain();
  }

  @override
  Future<UserEntity> createUser(CreateUserParams params) async {
    await _remoteDatasource.createUser(
      CreateUserRequest(
        username: params.username.trim(),
        password: params.password,
        password2: params.password2,
        email: params.email,
        firstName: params.firstName,
        lastName: params.lastName,
        role: params.role,
        phone: params.phone,
        clinicId: params.clinicId,
      ).toJson(),
    );
    // The create echo carries no id (verified live) — resolve via search.
    final found = await getUsers(page: 1, search: params.username.trim());
    final match = found.items.where((e) => e.username == params.username.trim());
    if (match.isEmpty) {
      throw const Failure.parse(
        type: ParseFailure.schemaMismatch,
        field: 'username',
        message: 'Создан, но не найден поиском — обновите список',
      );
    }
    return match.first;
  }

  @override
  Future<UserEntity> updateUser(UpdateUserParams params) async {
    await _remoteDatasource.updateUser(
      params.id,
      UpdateUserRequest(
        firstName: params.firstName,
        lastName: params.lastName,
        email: params.email,
        phone: params.phone,
        role: params.role,
        clinicId: params.clinicId,
        isActive: params.isActive,
      ).toJson(),
    );
    return getUserById(params.id);
  }

  @override
  Future<void> deleteUser(int id) => _remoteDatasource.deleteUser(id);

  @override
  Future<UserEntity> setClinic({
    required int userId,
    required int clinicId,
  }) async {
    final model = await _remoteDatasource.setClinic(
      userId: userId,
      clinicId: clinicId,
    );
    return model.toDomain();
  }

  @override
  Future<UserEntity> getMe() async {
    final model = await _remoteDatasource.getMe();
    return model.toDomain();
  }

  @override
  Future<UserEntity> updateMe(UpdateUserParams params) async {
    // `params.id` is intentionally ignored — `PATCH me/` addresses
    // the authenticated user, no id in path.
    final model = await _remoteDatasource.updateMe(
      UpdateUserRequest(
        firstName: params.firstName,
        lastName: params.lastName,
        email: params.email,
        phone: params.phone,
        role: params.role,
        clinicId: params.clinicId,
        isActive: params.isActive,
      ).toJson(),
    );
    return model.toDomain();
  }

  @override
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) => _remoteDatasource.changePassword(
    oldPassword: oldPassword,
    newPassword: newPassword,
  );

  @override
  Future<StatsEntity> getStats() async {
    final model = await _remoteDatasource.getStats();
    return model.toDomain();
  }
}
