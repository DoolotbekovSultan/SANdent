import 'package:nexo/nexo_core.dart';

import '../../../material_transaction/domain/entities/material_transaction_entity.dart';
import '../entities/material_entity.dart';
import '../parameters/material_params.dart';

/// Material repository contract.
abstract interface class IMaterialRepository {
  Future<PageChunk<MaterialEntity, int>> getMaterials({
    required int page,
    String? search,
  });
  Future<MaterialEntity> getMaterialById(int id);
  Future<MaterialEntity> createMaterial(CreateMaterialParams params);
  Future<MaterialEntity> updateMaterial(UpdateMaterialParams params);
  Future<void> deleteMaterial(int id);
  Future<List<MaterialTransactionEntity>> getTransactions(int materialId);
  Future<void> addStock(int materialId, String quantity);
  Future<void> subtractStock(int materialId, String quantity);
}
