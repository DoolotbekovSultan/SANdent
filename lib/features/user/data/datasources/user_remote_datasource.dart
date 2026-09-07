import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../../../../core/network/paged_response.dart';
import '../models/stats_model.dart';
import '../models/user_model.dart';
import 'i_remote_user_data_source.dart';

/// Real user API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemoteUserDataSource, env: [AppEnvironment.prod])
class UserRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteUserDataSource {
  UserRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  @override
  Future<PageChunk<UserModel, int>> getUsers({
    required int page,
    String? search,
  }) async {
    final response = await get(
      'users/',
      queryParameters: {
        'page': page,
        if (search != null && search.isNotEmpty) 'search': search,
      },
    );
    return parsePage(response.data, UserModel.fromJson, page: page);
  }

  @override
  Future<List<UserModel>> getDoctors() async {
    // Verified live: bare array.
    final response = await get('users/doctors/');
    final data = response.data;
    if (data is! List) return const [];
    return data
        .whereType<Map>()
        .map((e) => UserModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  @override
  Future<UserModel> getUserById(int id) async {
    final response = await get('users/$id/');
    return UserModel.fromJson(_asMap(response.data, 'users/$id/'));
  }

  @override
  Future<Map<String, dynamic>> createUser(Map<String, dynamic> body) async {
    // Verified live: 201 echo (no id).
    final response = await post('users/', data: body);
    return _asMap(response.data, 'users/ [POST]');
  }

  @override
  Future<void> updateUser(int id, Map<String, dynamic> body) async {
    await patch('users/$id/', data: body);
  }

  @override
  Future<void> deleteUser(int id) async {
    await delete('users/$id/');
  }

  @override
  Future<UserModel> setClinic({
    required int userId,
    required int clinicId,
  }) async {
    // Verified live: 200 full user.
    final response = await post(
      'users/$userId/set_clinic/',
      data: {'clinic_id': clinicId},
    );
    return UserModel.fromJson(
      _asMap(response.data, 'users/$userId/set_clinic/'),
    );
  }

  @override
  Future<UserModel> getMe() async {
    final response = await get('me/');
    return UserModel.fromJson(_asMap(response.data, 'me/'));
  }

  @override
  Future<UserModel> updateMe(Map<String, dynamic> body) async {
    // Verified live: PATCH returns the FULL object (not an echo).
    final response = await patch('me/', data: body);
    return UserModel.fromJson(_asMap(response.data, 'me/ [PATCH]'));
  }

  @override
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    await post(
      'me/change-password/',
      data: {
        'old_password': oldPassword,
        'new_password': newPassword,
        'new_password2': newPassword,
      },
    );
  }

  @override
  Future<StatsModel> getStats() async {
    final response = await get('stats/');
    return StatsModel.fromJson(_asMap(response.data, 'stats/'));
  }

  Map<String, dynamic> _asMap(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint, got $data');
  }
}
