import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/material_entity.dart';
import '../repositories/i_material_repository.dart';

/// Page parameters for the materials list.
class MaterialsPageParams {
  const MaterialsPageParams({this.page = 1, this.search});

  final int page;
  final String? search;
}

/// Paged materials (`GET materials/`).
@injectable
class GetMaterialsUseCase
    extends NexoUseCase<PageChunk<MaterialEntity, int>, MaterialsPageParams> {
  // ignore: use_super_parameters
  GetMaterialsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMaterialRepository _repository;

  @override
  Future<PageChunk<MaterialEntity, int>> execute(
    MaterialsPageParams params,
  ) => _repository.getMaterials(page: params.page, search: params.search);
}

/// Material detail (`GET materials/{id}/`).
@injectable
class GetMaterialByIdUseCase extends NexoUseCase<MaterialEntity, int> {
  // ignore: use_super_parameters
  GetMaterialByIdUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMaterialRepository _repository;

  @override
  Future<MaterialEntity> execute(int params) =>
      _repository.getMaterialById(params);
}
