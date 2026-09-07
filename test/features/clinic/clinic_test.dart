import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/clinic/data/datasources/i_remote_clinic_data_source.dart';
import 'package:san_dent/features/clinic/data/mappers/clinic_mapper.dart';
import 'package:san_dent/features/clinic/data/models/clinic_model.dart';
import 'package:san_dent/features/clinic/data/repositories/clinic_repository.dart';
import 'package:san_dent/features/clinic/domain/parameters/create_clinic_params.dart';
import 'package:san_dent/features/clinic/domain/usecases/clinic_usecases.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

const _clinicJson = <String, dynamic>{
  'id': 2,
  'name': 'Зонд',
  'address': 'Тест 1',
  'phone': '+996555000001',
  'email': '',
  'is_active': true,
  'created_at': '2026-09-06T18:29:06+0300',
  'updated_at': '2026-09-06T18:29:06+0300',
};

class FakeRemote implements IRemoteClinicDataSource {
  final List<ClinicModel> items = [ClinicModel.fromJson(_clinicJson)];

  @override
  Future<PageChunk<ClinicModel, int>> getClinics({required int page}) async =>
      PageChunk(items: items, nextCursor: null, hasMore: false);

  @override
  Future<ClinicModel> getClinicById(int id) async => items.firstWhere(
    (c) => c.id == id,
    orElse: () => throw StateError('missing $id'),
  );

  @override
  Future<ClinicModel> createClinic(Map<String, dynamic> body) async {
    return ClinicModel.fromJson({
      ..._clinicJson,
      'id': 99,
      'name': body['name'] ?? '',
      'address': body['address'] ?? '',
      'phone': body['phone'] ?? '',
    });
  }

  @override
  Future<ClinicModel> updateClinic(int id, Map<String, dynamic> body) async =>
      items.first;

  @override
  Future<void> deleteClinic(int id) async {
    items.removeWhere((c) => c.id == id);
  }
}

void main() {
  late FakeRemote remote;
  late ClinicRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = ClinicRepository(remoteDatasource: remote);
  });

  group('ClinicMapper (live shape)', () {
    test('maps all fields', () {
      final entity = ClinicModel.fromJson(_clinicJson).toDomain();

      expect(entity.id, 2);
      expect(entity.name, 'Зонд');
      expect(entity.address, 'Тест 1');
      expect(entity.phone, '+996555000001');
      expect(entity.isActive, isTrue);
    });
  });

  group('ClinicRepository', () {
    test('createClinic returns full object (not echo)', () async {
      final entity = await repository.createClinic(
        const CreateClinicParams(
          name: 'Новая',
          address: 'Адрес',
          phone: '+996555000',
        ),
      );

      expect(entity.id, 99);
      expect(entity.name, 'Новая');
    });

    test('deleteClinic removes item', () async {
      await repository.deleteClinic(2);
      final chunk = await repository.getClinics(page: 1);
      expect(chunk.items, isEmpty);
    });
  });

  group('UseCases', () {
    test('GetClinicsUseCase returns chunk', () async {
      final result = await GetClinicsUseCase(
        _logger(),
        repository: repository,
      )(1);

      expect(result.dataOrThrow().items.length, 1);
    });

    test('DeleteClinicUseCase completes', () async {
      final result = await DeleteClinicUseCase(
        _logger(),
        repository: repository,
      )(2);

      expect(result, isSuccess(null));
    });

    test('CreateClinicParams validates', () {
      expect(CreateClinicParams.validateName(''), isNotNull);
      expect(CreateClinicParams.validateAddress(''), isNotNull);
      expect(CreateClinicParams.validatePhone('abc'), isNotNull);
      expect(
        CreateClinicParams.validateName('Клиника'),
        isNull,
      );
    });
  });
}
