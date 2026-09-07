import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/procedure_category/data/datasources/i_remote_procedure_category_data_source.dart';
import 'package:san_dent/features/procedure_category/data/mappers/procedure_category_mapper.dart';
import 'package:san_dent/features/procedure_category/data/models/procedure_category_model.dart';
import 'package:san_dent/features/procedure_category/data/repositories/procedure_category_repository.dart';
import 'package:san_dent/features/procedure_category/domain/parameters/procedure_category_params.dart';
import 'package:san_dent/features/procedure_category/domain/usecases/procedure_category_usecases.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

/// Live `POST /procedure-categories/` echo (director; probes cleaned).
const _catJson = <String, dynamic>{
  'id': 1,
  'name': 'Пробная категория',
  'slug': '',
  'parent': null,
  'description': '',
  'procedure_count': 0,
  'children': [],
  'is_active': true,
  'created_at': '2026-09-06T14:53:04+0300',
  'updated_at': '2026-09-06T14:53:04+0300',
};

class FakeRemote implements IRemoteProcedureCategoryDataSource {
  List<ProcedureCategoryModel> items = [
    ProcedureCategoryModel.fromJson(_catJson),
  ];

  @override
  Future<PageChunk<ProcedureCategoryModel, int>> getCategories({
    required int page,
  }) async => PageChunk(items: items, nextCursor: null, hasMore: false);

  @override
  Future<ProcedureCategoryModel> getCategoryById(int id) async =>
      items.firstWhere(
        (c) => c.id == id,
        orElse: () => throw StateError('missing $id'),
      );

  @override
  Future<Map<String, dynamic>> createCategory(
    Map<String, dynamic> body,
  ) async => body;

  @override
  Future<void> updateCategory(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deleteCategory(int id) async {
    items = items.where((c) => c.id != id).toList();
  }
}

void main() {
  late FakeRemote remote;
  late ProcedureCategoryRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = ProcedureCategoryRepository(remoteDatasource: remote);
  });

  group('ProcedureCategoryMapper (live shape)', () {
    test('maps children array and parent', () {
      final entity = ProcedureCategoryModel.fromJson(_catJson).toDomain();

      expect(entity.id, 1);
      expect(entity.children, isEmpty);
      expect(entity.parentId, isNull);
      expect(entity.procedureCount, 0);
    });
  });

  group('ProcedureCategoryRepository', () {
    test('createCategory resolves via name lookup', () async {
      final entity = await repository.createCategory(
        const CreateProcedureCategoryParams(name: 'Пробная категория'),
      );

      expect(entity.id, 1);
    });

    test('deleteCategory removes the item', () async {
      await repository.deleteCategory(1);
      final chunk = await repository.getCategories(page: 1);
      expect(chunk.items, isEmpty);
    });
  });

  group('UseCases', () {
    test('GetProcedureCategoriesUseCase returns chunk', () async {
      final useCase = GetProcedureCategoriesUseCase(
        _logger(),
        repository: repository,
      );

      final result = await useCase(1);

      expect(result.dataOrThrow().items.length, 1);
    });

    test('CreateProcedureCategoryParams validates name', () {
      expect(
        CreateProcedureCategoryParams.validateName(''),
        isNotNull,
      );
      expect(
        CreateProcedureCategoryParams.validateName('Терапия'),
        isNull,
      );
    });
  });
}
