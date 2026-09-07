import 'package:nexo/nexo_core.dart';

import '../../../material_transaction/data/models/material_transaction_model.dart';
import '../models/material_model.dart';

/// Material API over the authenticated client (base `.../api/v1/`).
///
/// Live-verified (director writes; doctor+director reads; probes cleaned):
/// - `GET materials/` PAGED; `GET materials/{id}/` → full object;
///   `DELETE` → 204; single `POST`/`PATCH` → echo without `id`.
/// - `GET materials/{id}/transactions/` → bare array (200).
/// - BLOCKER: `POST /{id}/add_stock|subtract_stock/` → 500 on valid bodies
///   (backend bug). Transactions list items come from
///   `IMaterialTransactionDataSource` (direct `POST` works).
abstract interface class IRemoteMaterialDataSource {
  Future<PageChunk<MaterialModel, int>> getMaterials({
    required int page,
    String? search,
  });
  Future<MaterialModel> getMaterialById(int id);
  Future<Map<String, dynamic>> createMaterial(Map<String, dynamic> body);
  Future<void> updateMaterial(int id, Map<String, dynamic> body);
  Future<void> deleteMaterial(int id);
  Future<List<MaterialTransactionModel>> getTransactions(int materialId);
  Future<void> addStock(int materialId, String quantity);
  Future<void> subtractStock(int materialId, String quantity);
}
