import 'package:nexo/nexo_core.dart';

import '../models/bulk_create_result_model.dart';
import '../models/procedure_model.dart';
import '../models/procedure_stats_model.dart';

/// Procedure API over the authenticated client (base `.../api/v1/`).
///
/// Live-verified (director writes, doctor+director reads; probes cleaned):
/// - `GET procedures/` PAGED `{count,next,previous,results}` (admin → 403).
/// - `GET procedures/{id}/` → full object; `GET procedures/{id}/stats/` →
///   `{usage_count, total_revenue, last_used}` (200).
/// - Single `POST`/`PATCH` → echo without `id`/counters (callers resolve).
/// - `POST procedures/bulk_create/` (list body) → `{created[full objects],
///   errors[], total, success_count, error_count}` (200).
/// - `DELETE procedures/{id}/` → 204.
/// - `GET procedures/statistics/` → 404 (absent on server).
abstract interface class IRemoteProcedureDataSource {
  Future<PageChunk<ProcedureModel, int>> getProcedures({
    required int page,
    String? search,
  });
  Future<ProcedureModel> getProcedureById(int id);
  Future<Map<String, dynamic>> createProcedure(Map<String, dynamic> body);
  Future<void> updateProcedure(int id, Map<String, dynamic> body);
  Future<void> deleteProcedure(int id);
  Future<BulkCreateResultModel> bulkCreateProcedures(
    List<Map<String, dynamic>> items,
  );
  Future<ProcedureStatsModel> getProcedureStats(int id);
}
