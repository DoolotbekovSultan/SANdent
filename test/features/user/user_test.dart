import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/user/data/datasources/i_remote_user_data_source.dart';
import 'package:san_dent/features/user/data/mappers/user_mapper.dart';
import 'package:san_dent/features/user/data/models/stats_model.dart';
import 'package:san_dent/features/user/data/models/user_model.dart';
import 'package:san_dent/features/user/data/repositories/user_repository.dart';
import 'package:san_dent/features/user/domain/entities/user_entity.dart';
import 'package:san_dent/features/user/domain/parameters/user_params.dart';
import 'package:san_dent/features/user/domain/usecases/get_user_usecase.dart';
import 'package:san_dent/features/user/domain/usecases/user_usecases.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

/// Live `GET /users/5/` (doctor; verified).
const _userJson = <String, dynamic>{
  'id': 5,
  'username': 'test_doctor',
  'email': '',
  'first_name': '',
  'last_name': '',
  'full_name': '',
  'role': 'doctor',
  'role_display': 'Врач',
  'phone': '',
  'clinic': null,
  'clinic_detail': null,
  'is_active': true,
  'fcm_token': null,
  'device_id': null,
  'last_login': null,
  'date_joined': '2026-09-06T14:20:00+0300',
  'created_at': '2026-09-06T14:20:00+0300',
  'updated_at': '2026-09-06T14:20:00+0300',
};

class FakeRemote implements IRemoteUserDataSource {
  List<UserModel> items = [UserModel.fromJson(_userJson)];

  @override
  Future<PageChunk<UserModel, int>> getUsers({
    required int page,
    String? search,
  }) async => PageChunk(items: items, nextCursor: null, hasMore: false);

  @override
  Future<List<UserModel>> getDoctors() async => items;

  @override
  Future<UserModel> getUserById(int id) async => items.firstWhere(
    (u) => u.id == id,
    orElse: () => throw StateError('missing $id'),
  );

  @override
  Future<Map<String, dynamic>> createUser(Map<String, dynamic> body) async =>
      body; // live echo: no id

  @override
  Future<void> updateUser(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deleteUser(int id) async {
    items = items.where((u) => u.id != id).toList();
  }

  @override
  Future<UserModel> setClinic({
    required int userId,
    required int clinicId,
  }) async => items.first;

  @override
  Future<UserModel> getMe() async => items.first;

  @override
  Future<UserModel> updateMe(Map<String, dynamic> body) async =>
      items.first;

  @override
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {}

  @override
  Future<StatsModel> getStats() async => StatsModel.fromJson(_statsJson);
}

/// Live `GET /stats/` (admin, 200).
const _statsJson = <String, dynamic>{
  'total': 6,
  'by_role': [
    {'role': 'director', 'count': 1},
    {'role': 'admin', 'count': 1},
    {'role': 'doctor', 'count': 4},
  ],
  'active': 6,
  'inactive': 0,
  'by_clinic': [],
  'created_today': 0,
  'created_this_week': 0,
  'created_this_month': 3,
};

void main() {
  late FakeRemote remote;
  late UserRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = UserRepository(remoteDatasource: remote);
  });

  group('UserMapper (live shape)', () {
    test('maps role/display and falls back to username', () {
      final entity = UserModel.fromJson(_userJson).toDomain();

      expect(entity.role, UserRole.doctor);
      expect(entity.roleDisplay, 'Врач');
      expect(entity.displayName, 'test_doctor');
      expect(entity.isActive, isTrue);
      expect(entity.clinicName, isNull);
    });

    test('displayName prefers full_name', () {
      const entity = UserEntity(
        id: 3,
        username: 'RustamKeneev',
        email: null,
        firstName: 'Rustam',
        lastName: 'Keneev',
        fullName: 'Rustam Keneev',
        role: 'doctor',
        roleDisplay: 'Врач',
        phone: null,
        clinicId: null,
        clinicName: null,
        isActive: true,
        lastLogin: null,
        dateJoined: null,
        createdAt: null,
        updatedAt: null,
      );
      expect(entity.displayName, 'Rustam Keneev');
    });
  });

  group('UserRepository', () {
    test('getDoctors returns entities', () async {
      final doctors = await repository.getDoctors();
      expect(doctors.length, 1);
      expect(doctors.first.username, 'test_doctor');
    });

    test('createUser resolves via username search', () async {
      final entity = await repository.createUser(
        const CreateUserParams(
          username: 'test_doctor',
          password: 'TestPass123!',
          password2: 'TestPass123!',
          role: 'doctor',
        ),
      );

      expect(entity.id, 5);
    });

    test('deleteUser removes the item', () async {
      await repository.deleteUser(5);
      final chunk = await repository.getUsers(page: 1);
      expect(chunk.items, isEmpty);
    });
  });

  group('UseCases', () {
    test('GetDoctorsUseCase returns list', () async {
      final useCase = GetDoctorsUseCase(_logger(), repository: repository);

      final result = await useCase(const NoParams());

      expect(result.dataOrThrow().length, 1);
    });

    test('SetClinicUseCase returns updated user', () async {
      final useCase = SetClinicUseCase(_logger(), repository: repository);

      final result = await useCase(
        const SetClinicParams(userId: 5, clinicId: 1),
      );

      expect(result.dataOrThrow().id, 5);
    });

    test('GetMeUseCase returns current user', () async {
      final result = await GetMeUseCase(
        _logger(),
        repository: repository,
      )(const NoParams());

      expect(result.dataOrThrow().username, 'test_doctor');
    });

    test('GetStatsUseCase returns role breakdown', () async {
      final result = await GetStatsUseCase(
        _logger(),
        repository: repository,
      )(const NoParams());

      final stats = result.dataOrThrow();
      expect(stats.total, 6);
      expect(stats.byRole.length, 3);
      expect(stats.byRole.first.role, 'director');
      expect(stats.createdThisMonth, 3);
    });

    test('CreateUserParams validates', () {
      expect(CreateUserParams.validateUsername('  '), isNotNull);
      expect(CreateUserParams.validatePassword('short'), isNotNull);
      expect(
        CreateUserParams.validatePassword('TestPass123!'),
        isNull,
      );
      expect(CreateUserParams.validateRole('bogus'), isNotNull);
    });
  });
}
