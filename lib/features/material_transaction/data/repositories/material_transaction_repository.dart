import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../domain/entities/material_transaction_entity.dart';
import '../../domain/parameters/material_transaction_params.dart';
import '../../domain/repositories/i_material_transaction_repository.dart';
import '../datasources/i_remote_material_transaction_data_source.dart';
import '../mappers/material_transaction_mapper.dart';
import '../models/requests/material_transaction_requests.dart';

@LazySingleton(as: IMaterialTransactionRepository)
class MaterialTransactionRepository implements IMaterialTransactionRepository {
  MaterialTransactionRepository({required this._remoteDatasource});

  final IRemoteMaterialTransactionDataSource _remoteDatasource;

  @override
  Future<PageChunk<MaterialTransactionEntity, int>> getTransactions({
    required int page,
  }) async {
    final chunk = await _remoteDatasource.getTransactions(page: page);
    return PageChunk<MaterialTransactionEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<MaterialTransactionEntity> getTransactionById(int id) async {
    final model = await _remoteDatasource.getTransactionById(id);
    return model.toDomain();
  }

  @override
  Future<void> createTransaction(
    CreateMaterialTransactionParams params,
  ) async {
    // The create echo carries no id (verified live) — callers reload
    // the history list, which returns full objects.
    await _remoteDatasource.createTransaction(
      CreateMaterialTransactionRequest(
        materialId: params.materialId,
        transactionType: params.transactionType,
        quantity: params.quantity.trim().replaceAll(',', '.'),
        note: params.note,
      ).toJson(),
    );
  }

  @override
  Future<void> updateTransaction(
    UpdateMaterialTransactionParams params,
  ) => _remoteDatasource.updateTransaction(
    params.id,
    UpdateMaterialTransactionRequest(note: params.note).toJson(),
  );

  @override
  Future<void> deleteTransaction(int id) =>
      _remoteDatasource.deleteTransaction(id);
}
