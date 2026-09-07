import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../models/procedure_category_model.dart';
import 'i_remote_procedure_category_data_source.dart';

/// Offline/mock categories backend.
@LazySingleton(
  as: IRemoteProcedureCategoryDataSource,
  env: [AppEnvironment.mock],
)
class MockProcedureCategoryRemoteDataSource
    implements IRemoteProcedureCategoryDataSource {
  static const _items = [
    ProcedureCategoryModel(
      id: 1,
      name: 'Терапия',
      slug: 'terapiya',
      parent: null,
      description: null,
      procedure_count: 0,
      children: null,
      is_active: true,
      created_at: null,
      updated_at: null,
    ),
  ];

  @override
  Future<PageChunk<ProcedureCategoryModel, int>> getCategories({
    required int page,
  }) async =>
      const PageChunk(items: _items, nextCursor: null, hasMore: false);

  @override
  Future<ProcedureCategoryModel> getCategoryById(int id) async =>
      _items.firstWhere(
        (c) => c.id == id,
        orElse: () => throw StateError('No mock category $id'),
      );

  @override
  Future<Map<String, dynamic>> createCategory(
    Map<String, dynamic> body,
  ) async => body;

  @override
  Future<void> updateCategory(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deleteCategory(int id) async {}
}
