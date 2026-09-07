import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../models/bulk_create_result_model.dart';
import '../models/procedure_model.dart';
import '../models/procedure_stats_model.dart';
import 'i_remote_procedure_data_source.dart';

/// Offline/mock procedures backend for dev without privileged access.
@LazySingleton(as: IRemoteProcedureDataSource, env: [AppEnvironment.mock])
class MockProcedureRemoteDataSource implements IRemoteProcedureDataSource {
  static const _items = [
    ProcedureModel(
      id: 1,
      name: 'Чистка',
      code: 'Ч',
      category: null,
      category_name: null,
      description: null,
      price: '150.00',
      duration_minutes: 30,
      is_active: true,
      usage_count: 0,
      total_revenue: '0.00',
      created_at: null,
      updated_at: null,
    ),
  ];

  @override
  Future<PageChunk<ProcedureModel, int>> getProcedures({
    required int page,
    String? search,
  }) async {
    final items = search == null || search.isEmpty
        ? _items
        : _items.where((p) => p.name.contains(search)).toList();
    return PageChunk(items: items, nextCursor: null, hasMore: false);
  }

  @override
  Future<ProcedureModel> getProcedureById(int id) async => _items.firstWhere(
    (p) => p.id == id,
    orElse: () => throw StateError('No mock procedure $id'),
  );

  @override
  Future<Map<String, dynamic>> createProcedure(
    Map<String, dynamic> body,
  ) async => body;

  @override
  Future<void> updateProcedure(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> deleteProcedure(int id) async {}

  @override
  Future<BulkCreateResultModel> bulkCreateProcedures(
    List<Map<String, dynamic>> items,
  ) async => const BulkCreateResultModel(
    created: [],
    errors: [],
    total: 0,
    success_count: 0,
    error_count: 0,
  );

  @override
  Future<ProcedureStatsModel> getProcedureStats(int id) async =>
      const ProcedureStatsModel(
        usage_count: 0,
        total_revenue: 0,
        last_used: null,
      );
}
