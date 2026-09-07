import 'package:nexo/nexo_core.dart';

import '../entities/bulk_create_result_entity.dart';
import '../entities/procedure_entity.dart';
import '../entities/procedure_stats_entity.dart';
import '../parameters/procedure_params.dart';

/// Procedure repository contract.
abstract interface class IProcedureRepository {
  Future<PageChunk<ProcedureEntity, int>> getProcedures({
    required int page,
    String? search,
  });
  Future<ProcedureEntity> getProcedureById(int id);
  Future<ProcedureEntity> createProcedure(CreateProcedureParams params);
  Future<ProcedureEntity> updateProcedure(UpdateProcedureParams params);
  Future<void> deleteProcedure(int id);
  Future<BulkCreateResultEntity> bulkCreateProcedures(
    List<CreateProcedureParams> items,
  );
  Future<ProcedureStatsEntity> getProcedureStats(int id);
}
