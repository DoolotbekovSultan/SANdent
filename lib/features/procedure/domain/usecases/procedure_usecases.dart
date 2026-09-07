import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/bulk_create_result_entity.dart';
import '../entities/procedure_entity.dart';
import '../entities/procedure_stats_entity.dart';
import '../parameters/procedure_params.dart';
import '../repositories/i_procedure_repository.dart';

/// Creates a procedure, then resolves the full object via search
/// (the create echo carries no `id` — verified live).
@injectable
class CreateProcedureUseCase
    extends NexoUseCase<ProcedureEntity, CreateProcedureParams> {
  // ignore: use_super_parameters
  CreateProcedureUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureRepository _repository;

  @override
  Future<ProcedureEntity> execute(CreateProcedureParams params) =>
      _repository.createProcedure(params);
}

/// Partial update, then re-fetches the full object
/// (the PATCH echo carries no counters — verified live).
@injectable
class UpdateProcedureUseCase
    extends NexoUseCase<ProcedureEntity, UpdateProcedureParams> {
  // ignore: use_super_parameters
  UpdateProcedureUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureRepository _repository;

  @override
  Future<ProcedureEntity> execute(UpdateProcedureParams params) =>
      _repository.updateProcedure(params);
}

/// Deletes a procedure (`DELETE procedures/{id}/` → 204).
@injectable
class DeleteProcedureUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeleteProcedureUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureRepository _repository;

  @override
  Future<void> execute(int params) => _repository.deleteProcedure(params);
}

/// Bulk creation (`POST procedures/bulk_create/`).
@injectable
class BulkCreateProceduresUseCase
    extends NexoUseCase<BulkCreateResultEntity, List<CreateProcedureParams>> {
  // ignore: use_super_parameters
  BulkCreateProceduresUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureRepository _repository;

  @override
  Future<BulkCreateResultEntity> execute(
    List<CreateProcedureParams> params,
  ) => _repository.bulkCreateProcedures(params);
}

/// Usage stats (`GET procedures/{id}/stats/`).
@injectable
class GetProcedureStatsUseCase extends NexoUseCase<ProcedureStatsEntity, int> {
  // ignore: use_super_parameters
  GetProcedureStatsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureRepository _repository;

  @override
  Future<ProcedureStatsEntity> execute(int params) =>
      _repository.getProcedureStats(params);
}
