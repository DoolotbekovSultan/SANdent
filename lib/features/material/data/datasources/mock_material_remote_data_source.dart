import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../../../material_transaction/data/models/material_transaction_model.dart';
import '../models/material_model.dart';
import 'i_remote_material_data_source.dart';

/// Offline/mock materials backend.
@LazySingleton(as: IRemoteMaterialDataSource, env: [AppEnvironment.mock])
class MockMaterialRemoteDataSource implements IRemoteMaterialDataSource {
  static const _items = [
    MaterialModel(
      id: 1,
      name: 'Перчатки',
      unit: 'шт',
      description: null,
      is_active: true,
      usage_count: 0,
      total_used: '0.00',
      current_stock: '12.00',
      min_stock: '5.00',
      needs_restock: false,
      created_at: null,
      updated_at: null,
    ),
  ];

  @override
  Future<PageChunk<MaterialModel, int>> getMaterials({
    required int page,
    String? search,
  }) async {
    final items = search == null || search.isEmpty
        ? _items
        : _items.where((m) => m.name.contains(search)).toList();
    return PageChunk(items: items, nextCursor: null, hasMore: false);
  }

  @override
  Future<MaterialModel> getMaterialById(int id) async => _items.firstWhere(
    (m) => m.id == id,
    orElse: () => throw StateError('No mock material $id'),
  );

  @override
  Future<Map<String, dynamic>> createMaterial(
    Map<String, dynamic> body,
  ) async => body;

  @override
  Future<void> updateMaterial(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deleteMaterial(int id) async {}

  @override
  Future<List<MaterialTransactionModel>> getTransactions(
    int materialId,
  ) async => const [];

  @override
  Future<void> addStock(int materialId, String quantity) async {}

  @override
  Future<void> subtractStock(int materialId, String quantity) async {}
}
