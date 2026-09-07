import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/procedure/data/datasources/i_remote_procedure_data_source.dart';
import 'package:san_dent/features/procedure/data/mappers/procedure_mapper.dart';
import 'package:san_dent/features/procedure/data/models/bulk_create_result_model.dart';
import 'package:san_dent/features/procedure/data/models/procedure_model.dart';
import 'package:san_dent/features/procedure/data/models/procedure_stats_model.dart';
import 'package:san_dent/features/procedure/data/repositories/procedure_repository.dart';
import 'package:san_dent/features/procedure/domain/parameters/procedure_params.dart';
import 'package:san_dent/features/procedure/domain/usecases/get_procedure_usecase.dart';
import 'package:san_dent/features/procedure/domain/usecases/procedure_usecases.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

/// Live `GET /procedures/` item (director; probes cleaned).
const _procJson = <String, dynamic>{
  'id': 2,
  'name': 'Балк 1',
  'code': 'Б1',
  'category': null,
  'description': '',
  'price': '10.00',
  'duration_minutes': null,
  'is_active': true,
  'usage_count': 0,
  'total_revenue': '0.00',
  'created_at': '2026-09-06T14:54:28+0300',
  'updated_at': '2026-09-06T14:54:28+0300',
};

class FakeRemote implements IRemoteProcedureDataSource {
  List<ProcedureModel> items = [ProcedureModel.fromJson(_procJson)];

  @override
  Future<PageChunk<ProcedureModel, int>> getProcedures({
    required int page,
    String? search,
  }) async {
    final filtered = search == null || search.isEmpty
        ? items
        : items.where((p) => p.name.contains(search)).toList();
    return PageChunk(items: filtered, nextCursor: null, hasMore: false);
  }

  @override
  Future<ProcedureModel> getProcedureById(int id) async => items.firstWhere(
    (p) => p.id == id,
    orElse: () => throw StateError('missing $id'),
  );

  @override
  Future<Map<String, dynamic>> createProcedure(
    Map<String, dynamic> body,
  ) async => body; // live echo: no id

  @override
  Future<void> updateProcedure(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deleteProcedure(int id) async {
    items = items.where((p) => p.id != id).toList();
  }

  @override
  Future<BulkCreateResultModel> bulkCreateProcedures(
    List<Map<String, dynamic>> items,
  ) async => BulkCreateResultModel.fromJson({
    'created': [_procJson],
    'errors': [],
    'total': 1,
    'success_count': 1,
    'error_count': 0,
  });

  @override
  Future<ProcedureStatsModel> getProcedureStats(int id) async =>
      const ProcedureStatsModel(
        usage_count: 0,
        total_revenue: 0,
        last_used: null,
      );
}

void main() {
  late FakeRemote remote;
  late ProcedureRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = ProcedureRepository(remoteDatasource: remote);
  });

  group('ProcedureMapper (live shape)', () {
    test('maps decimals-as-strings and null duration', () {
      final entity = ProcedureModel.fromJson(_procJson).toDomain();

      expect(entity.id, 2);
      expect(entity.code, 'Б1');
      expect(entity.price, '10.00');
      expect(entity.durationMinutes, isNull);
      expect(entity.isActive, isTrue);
    });

    test('maps bulk result and stats', () {
      final bulk = BulkCreateResultModel.fromJson({
        'created': [_procJson],
        'errors': [],
        'total': 1,
        'success_count': 1,
        'error_count': 0,
      }).toDomain();
      expect(bulk.created.length, 1);
      expect(bulk.successCount, 1);

      final stats = const ProcedureStatsModel(
        usage_count: 3,
        total_revenue: 450,
        last_used: '2026-09-01T10:00:00+0300',
      ).toDomain();
      expect(stats.usageCount, 3);
      expect(stats.totalRevenue, 450);
    });
  });

  group('ProcedureRepository', () {
    test('createProcedure resolves full object via name search', () async {
      final entity = await repository.createProcedure(
        const CreateProcedureParams(name: 'Балк 1', price: '10.00'),
      );

      expect(entity.id, 2);
      expect(entity.totalRevenue, '0.00');
    });

    test('updateProcedure re-fetches the full object', () async {
      final entity = await repository.updateProcedure(
        const UpdateProcedureParams(id: 2, price: '15.00'),
      );

      expect(entity.id, 2);
    });

    test('bulkCreateProcedures returns created entities', () async {
      final result = await repository.bulkCreateProcedures(const [
        CreateProcedureParams(name: 'Балк 1'),
      ]);

      expect(result.total, 1);
      expect(result.created.first.name, 'Балк 1');
    });

    test('deleteProcedure removes the item', () async {
      await repository.deleteProcedure(2);
      final chunk = await repository.getProcedures(page: 1);
      expect(chunk.items, isEmpty);
    });
  });

  group('UseCases', () {
    test('GetProceduresUseCase returns chunk', () async {
      final useCase = GetProceduresUseCase(_logger(), repository: repository);

      final result = await useCase(const ProceduresPageParams());

      expect(result.dataOrThrow().items.length, 1);
    });

    test('GetProcedureStatsUseCase returns stats', () async {
      final useCase = GetProcedureStatsUseCase(
        _logger(),
        repository: repository,
      );

      final result = await useCase(2);

      expect(result.dataOrThrow().usageCount, 0);
    });

    test('CreateProcedureParams validates name', () {
      expect(CreateProcedureParams.validateName('  '), isNotNull);
      expect(
        CreateProcedureParams.validateName('Чистка'),
        isNull,
      );
    });
  });
}
