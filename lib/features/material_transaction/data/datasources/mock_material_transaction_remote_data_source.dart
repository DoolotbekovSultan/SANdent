import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../models/material_transaction_model.dart';
import 'i_remote_material_transaction_data_source.dart';

/// Offline/mock transactions backend.
@LazySingleton(
  as: IRemoteMaterialTransactionDataSource,
  env: [AppEnvironment.mock],
)
class MockMaterialTransactionRemoteDataSource
    implements IRemoteMaterialTransactionDataSource {
  static const _items = [
    MaterialTransactionModel(
      id: 1,
      material: 1,
      material_name: 'Перчатки',
      transaction_type: 'income',
      transaction_type_display: 'Поступление',
      quantity: '5.00',
      note: null,
      created_by: null,
      created_by_name: null,
      created_at: null,
    ),
  ];

  @override
  Future<PageChunk<MaterialTransactionModel, int>> getTransactions({
    required int page,
  }) async =>
      const PageChunk(items: _items, nextCursor: null, hasMore: false);

  @override
  Future<MaterialTransactionModel> getTransactionById(int id) async =>
      _items.firstWhere(
        (t) => t.id == id,
        orElse: () => throw StateError('No mock transaction $id'),
      );

  @override
  Future<Map<String, dynamic>> createTransaction(
    Map<String, dynamic> body,
  ) async => body;

  @override
  Future<void> updateTransaction(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deleteTransaction(int id) async {}
}
