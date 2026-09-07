import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../models/stats_model.dart';
import '../models/user_model.dart';
import 'i_remote_user_data_source.dart';

/// Offline/mock users backend.
@LazySingleton(as: IRemoteUserDataSource, env: [AppEnvironment.mock])
class MockUserRemoteDataSource implements IRemoteUserDataSource {
  static const _items = [
    UserModel(
      id: 3,
      username: 'RustamKeneev',
      email: null,
      first_name: 'Rustam',
      last_name: 'Keneev',
      full_name: 'Rustam Keneev',
      role: 'doctor',
      role_display: 'Врач',
      phone: '+996500005006',
      clinic: null,
      clinic_detail: null,
      is_active: true,
      fcm_token: null,
      device_id: null,
      last_login: null,
      date_joined: null,
      created_at: null,
      updated_at: null,
    ),
  ];

  @override
  Future<PageChunk<UserModel, int>> getUsers({
    required int page,
    String? search,
  }) async =>
      const PageChunk(items: _items, nextCursor: null, hasMore: false);

  @override
  Future<List<UserModel>> getDoctors() async => _items;

  @override
  Future<UserModel> getUserById(int id) async => _items.firstWhere(
    (u) => u.id == id,
    orElse: () => throw StateError('No mock user $id'),
  );

  @override
  Future<Map<String, dynamic>> createUser(Map<String, dynamic> body) async =>
      body;

  @override
  Future<void> updateUser(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deleteUser(int id) async {}

  @override
  Future<UserModel> setClinic({
    required int userId,
    required int clinicId,
  }) async => _items.first;

  @override
  Future<UserModel> getMe() async => _items.first;

  @override
  Future<UserModel> updateMe(Map<String, dynamic> body) async =>
      _items.first;

  @override
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {}

  @override
  Future<StatsModel> getStats() async => const StatsModel(
    total: 6,
    by_role: [
      ByRoleStatModel(role: 'director', count: 1),
      ByRoleStatModel(role: 'admin', count: 1),
      ByRoleStatModel(role: 'doctor', count: 4),
    ],
    active: 6,
    inactive: 0,
    by_clinic: null,
    created_today: 0,
    created_this_week: 0,
    created_this_month: 3,
  );
}
