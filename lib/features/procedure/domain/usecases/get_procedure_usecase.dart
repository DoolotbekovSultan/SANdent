import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/procedure_entity.dart';
import '../repositories/i_procedure_repository.dart';

/// Page parameters for the procedures list.
class ProceduresPageParams {
  const ProceduresPageParams({this.page = 1, this.search});

  final int page;
  final String? search;
}

/// Paged procedures (`GET procedures/`).
@injectable
class GetProceduresUseCase
    extends NexoUseCase<PageChunk<ProcedureEntity, int>, ProceduresPageParams> {
  // ignore: use_super_parameters
  GetProceduresUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureRepository _repository;

  @override
  Future<PageChunk<ProcedureEntity, int>> execute(
    ProceduresPageParams params,
  ) => _repository.getProcedures(page: params.page, search: params.search);
}

/// Procedure detail (`GET procedures/{id}/`).
@injectable
class GetProcedureByIdUseCase extends NexoUseCase<ProcedureEntity, int> {
  // ignore: use_super_parameters
  GetProcedureByIdUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureRepository _repository;

  @override
  Future<ProcedureEntity> execute(int params) =>
      _repository.getProcedureById(params);
}
