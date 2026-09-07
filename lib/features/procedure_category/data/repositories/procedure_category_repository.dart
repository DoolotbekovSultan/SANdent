import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/procedure_category_entity.dart';
import '../../domain/parameters/procedure_category_params.dart';
import '../../domain/repositories/i_procedure_category_repository.dart';
import '../datasources/i_remote_procedure_category_data_source.dart';
import '../mappers/procedure_category_mapper.dart';
import '../models/requests/procedure_category_requests.dart';

@LazySingleton(as: IProcedureCategoryRepository)
class ProcedureCategoryRepository implements IProcedureCategoryRepository {
  ProcedureCategoryRepository({required this._remoteDatasource});

  final IRemoteProcedureCategoryDataSource _remoteDatasource;

  @override
  Future<PageChunk<ProcedureCategoryEntity, int>> getCategories({
    required int page,
  }) async {
    final chunk = await _remoteDatasource.getCategories(page: page);
    return PageChunk<ProcedureCategoryEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<ProcedureCategoryEntity> getCategoryById(int id) async {
    final model = await _remoteDatasource.getCategoryById(id);
    return model.toDomain();
  }

  @override
  Future<ProcedureCategoryEntity> createCategory(
    CreateProcedureCategoryParams params,
  ) async {
    await _remoteDatasource.createCategory(
      CreateProcedureCategoryRequest(
        name: params.name.trim(),
        slug: params.slug,
        parentId: params.parentId,
        description: params.description,
        isActive: params.isActive,
      ).toJson(),
    );
    // Create echoes carry no id (same pattern as patients/procedures) —
    // resolve via page-1 search by exact name.
    final found = await getCategories(page: 1);
    final match = found.items.where((e) => e.name == params.name.trim());
    if (match.isEmpty) {
      throw const Failure.parse(
        type: ParseFailure.schemaMismatch,
        field: 'name',
        message: 'Создана, но не найдена — обновите список',
      );
    }
    return match.first;
  }

  @override
  Future<ProcedureCategoryEntity> updateCategory(
    UpdateProcedureCategoryParams params,
  ) async {
    await _remoteDatasource.updateCategory(
      params.id,
      UpdateProcedureCategoryRequest(
        name: params.name,
        slug: params.slug,
        parentId: params.parentId,
        description: params.description,
        isActive: params.isActive,
      ).toJson(),
    );
    return getCategoryById(params.id);
  }

  @override
  Future<void> deleteCategory(int id) =>
      _remoteDatasource.deleteCategory(id);
}
