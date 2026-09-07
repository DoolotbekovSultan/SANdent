import 'package:nexo/nexo_core.dart';

import '../entities/stats_entity.dart';
import '../entities/user_entity.dart';
import '../parameters/user_params.dart';

/// User repository contract.
abstract interface class IUserRepository {
  Future<PageChunk<UserEntity, int>> getUsers({
    required int page,
    String? search,
  });
  Future<List<UserEntity>> getDoctors();
  Future<UserEntity> getUserById(int id);
  Future<UserEntity> createUser(CreateUserParams params);
  Future<UserEntity> updateUser(UpdateUserParams params);
  Future<void> deleteUser(int id);
  Future<UserEntity> setClinic({required int userId, required int clinicId});
  Future<UserEntity> getMe();
  Future<UserEntity> updateMe(UpdateUserParams params);
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  });
  Future<StatsEntity> getStats();
}
