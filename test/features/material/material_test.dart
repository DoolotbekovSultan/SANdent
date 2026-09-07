import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/material/data/datasources/i_remote_material_data_source.dart';
import 'package:san_dent/features/material/data/mappers/material_mapper.dart';
import 'package:san_dent/features/material/data/models/material_model.dart';
import 'package:san_dent/features/material/data/repositories/material_repository.dart';
import 'package:san_dent/features/material/domain/parameters/material_params.dart';
import 'package:san_dent/features/material/domain/usecases/get_material_usecase.dart';
import 'package:san_dent/features/material/domain/usecases/material_usecases.dart';
import 'package:san_dent/features/material_transaction/data/models/material_transaction_model.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

/// Live `GET /materials/` item (director; probes cleaned).
const _matJson = <String, dynamic>{
  'id': 1,
  'name': 'Пробный материал',
  'unit': 'шт',
  'description': 'зонд',
  'is_active': true,
  'usage_count': 0,
  'total_used': '0.00',
  'current_stock': '0.00',
  'min_stock': '0.00',
  'needs_restock': true,
  'created_at': '2026-09-06T14:51:44+0300',
  'updated_at': '2026-09-06T14:51:44+0300',
};

class FakeRemote implements IRemoteMaterialDataSource {
  List<MaterialModel> items = [MaterialModel.fromJson(_matJson)];

  @override
  Future<PageChunk<MaterialModel, int>> getMaterials({
    required int page,
    String? search,
  }) async {
    final filtered = search == null || search.isEmpty
        ? items
        : items.where((m) => m.name.contains(search)).toList();
    return PageChunk(items: filtered, nextCursor: null, hasMore: false);
  }

  @override
  Future<MaterialModel> getMaterialById(int id) async => items.firstWhere(
    (m) => m.id == id,
    orElse: () => throw StateError('missing $id'),
  );

  @override
  Future<Map<String, dynamic>> createMaterial(
    Map<String, dynamic> body,
  ) async => body; // live echo: no id

  @override
  Future<void> updateMaterial(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deleteMaterial(int id) async {
    items = items.where((m) => m.id != id).toList();
  }

  @override
  Future<List<MaterialTransactionModel>> getTransactions(
    int materialId,
  ) async => const [];

  @override
  Future<void> addStock(int materialId, String quantity) async {}

  @override
  Future<void> subtractStock(int materialId, String quantity) async {}
}

void main() {
  late FakeRemote remote;
  late MaterialRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = MaterialRepository(remoteDatasource: remote);
  });

  group('MaterialMapper (live shape)', () {
    test('maps decimals-as-strings and restock flag', () {
      final entity = MaterialModel.fromJson(_matJson).toDomain();

      expect(entity.id, 1);
      expect(entity.unit, 'шт');
      expect(entity.currentStock, '0.00');
      expect(entity.needsRestock, isTrue);
    });
  });

  group('MaterialRepository', () {
    test('createMaterial resolves full object via name search', () async {
      final entity = await repository.createMaterial(
        const CreateMaterialParams(name: 'Пробный материал', unit: 'шт'),
      );

      expect(entity.id, 1);
      expect(entity.currentStock, '0.00');
    });

    test('getTransactions returns history', () async {
      final items = await repository.getTransactions(1);
      expect(items, isEmpty);
    });

    test('deleteMaterial removes the item', () async {
      await repository.deleteMaterial(1);
      final chunk = await repository.getMaterials(page: 1);
      expect(chunk.items, isEmpty);
    });
  });

  group('UseCases', () {
    test('GetMaterialsUseCase returns chunk', () async {
      final useCase = GetMaterialsUseCase(_logger(), repository: repository);

      final result = await useCase(const MaterialsPageParams());

      expect(result.dataOrThrow().items.length, 1);
    });

    test('GetMaterialTransactionsUseCase returns history', () async {
      final useCase = GetMaterialTransactionsUseCase(
        _logger(),
        repository: repository,
      );

      final result = await useCase(1);

      expect(result.dataOrThrow(), isEmpty);
    });

    test('CreateMaterialParams validates name/unit', () {
      expect(CreateMaterialParams.validateName('  '), isNotNull);
      expect(CreateMaterialParams.validateUnit('шт'), isNull);
    });
  });
}
