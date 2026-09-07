import 'package:nexo/nexo_core.dart';

import '../entities/material_transaction_entity.dart';
import '../parameters/material_transaction_params.dart';

/// Transaction repository contract.
abstract interface class IMaterialTransactionRepository {
  Future<PageChunk<MaterialTransactionEntity, int>> getTransactions({
    required int page,
  });
  Future<MaterialTransactionEntity> getTransactionById(int id);
  Future<void> createTransaction(CreateMaterialTransactionParams params);
  Future<void> updateTransaction(UpdateMaterialTransactionParams params);
  Future<void> deleteTransaction(int id);
}
