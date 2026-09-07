import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/material_entity.dart';
import '../../domain/parameters/material_params.dart';
import '../../domain/repositories/i_material_repository.dart';
import '../../../material_transaction/data/mappers/material_transaction_mapper.dart';
import '../../../material_transaction/domain/entities/material_transaction_entity.dart';
import '../datasources/i_remote_material_data_source.dart';
import '../mappers/material_mapper.dart';
import '../models/requests/material_requests.dart';

@LazySingleton(as: IMaterialRepository)
class MaterialRepository implements IMaterialRepository {
  MaterialRepository({required this._remoteDatasource});

  final IRemoteMaterialDataSource _remoteDatasource;

  @override
  Future<PageChunk<MaterialEntity, int>> getMaterials({
    required int page,
    String? search,
  }) async {
    final chunk = await _remoteDatasource.getMaterials(
      page: page,
      search: search,
    );
    return PageChunk<MaterialEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<MaterialEntity> getMaterialById(int id) async {
    final model = await _remoteDatasource.getMaterialById(id);
    return model.toDomain();
  }

  @override
  Future<MaterialEntity> createMaterial(CreateMaterialParams params) async {
    await _remoteDatasource.createMaterial(
      CreateMaterialRequest(
        name: params.name.trim(),
        unit: params.unit.trim(),
        description: params.description,
        isActive: params.isActive,
      ).toJson(),
    );
    // The create echo carries no id (verified live) — resolve via search.
    final found = await getMaterials(page: 1, search: params.name.trim());
    final match = found.items.where((e) => e.name == params.name.trim());
    if (match.isEmpty) {
      throw const Failure.parse(
        type: ParseFailure.schemaMismatch,
        field: 'name',
        message: 'Создан, но не найден поиском — обновите список',
      );
    }
    return match.first;
  }

  @override
  Future<MaterialEntity> updateMaterial(UpdateMaterialParams params) async {
    await _remoteDatasource.updateMaterial(
      params.id,
      UpdateMaterialRequest(
        name: params.name,
        unit: params.unit,
        description: params.description,
        isActive: params.isActive,
      ).toJson(),
    );
    return getMaterialById(params.id);
  }

  @override
  Future<void> deleteMaterial(int id) =>
      _remoteDatasource.deleteMaterial(id);

  @override
  Future<List<MaterialTransactionEntity>> getTransactions(
    int materialId,
  ) async {
    final models = await _remoteDatasource.getTransactions(materialId);
    return models.toDomain();
  }

  @override
  Future<void> addStock(int materialId, String quantity) =>
      _remoteDatasource.addStock(materialId, quantity);

  @override
  Future<void> subtractStock(int materialId, String quantity) =>
      _remoteDatasource.subtractStock(materialId, quantity);
}
