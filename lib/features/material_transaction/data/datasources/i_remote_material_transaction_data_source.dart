import 'package:nexo/nexo_core.dart';

import '../models/material_transaction_model.dart';

/// Stock-transaction API (base `.../api/v1/`).
///
/// Live-verified: `GET material-transactions/` shape assumed paged like
/// other lists (empty during probing — parsed via `parsePage`, tolerant to
/// both shapes); direct `POST` → 201 echo `{material, transaction_type,
/// quantity, note}` (no id); `DELETE /{id}/` → 204 and does NOT reverse
/// `current_stock`.
abstract interface class IRemoteMaterialTransactionDataSource {
  Future<PageChunk<MaterialTransactionModel, int>> getTransactions({
    required int page,
  });
  Future<MaterialTransactionModel> getTransactionById(int id);
  Future<Map<String, dynamic>> createTransaction(Map<String, dynamic> body);
  Future<void> updateTransaction(int id, Map<String, dynamic> body);
  Future<void> deleteTransaction(int id);
}
