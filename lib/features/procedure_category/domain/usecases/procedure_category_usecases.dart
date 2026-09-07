import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/procedure_category_entity.dart';
import '../parameters/procedure_category_params.dart';
import '../repositories/i_procedure_category_repository.dart';

/// Paged categories (`GET procedure-categories/`).
@injectable
class GetProcedureCategoriesUseCase
    extends NexoUseCase<PageChunk<ProcedureCategoryEntity, int>, int> {
  // ignore: use_super_parameters
  GetProcedureCategoriesUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureCategoryRepository _repository;

  @override
  Future<PageChunk<ProcedureCategoryEntity, int>> execute(int params) =>
      _repository.getCategories(page: params);
}

/// Category detail (`GET procedure-categories/{id}/`).
@injectable
class GetProcedureCategoryByIdUseCase
    extends NexoUseCase<ProcedureCategoryEntity, int> {
  // ignore: use_super_parameters
  GetProcedureCategoryByIdUseCase(
    NexoLogger logger, {
    required this._repository,
  }) : super(logger);

  final IProcedureCategoryRepository _repository;

  @override
  Future<ProcedureCategoryEntity> execute(int params) =>
      _repository.getCategoryById(params);
}

/// Creates a category, then resolves the full object by name.
@injectable
class CreateProcedureCategoryUseCase
    extends
        NexoUseCase<ProcedureCategoryEntity, CreateProcedureCategoryParams> {
  // ignore: use_super_parameters
  CreateProcedureCategoryUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureCategoryRepository _repository;

  @override
  Future<ProcedureCategoryEntity> execute(
    CreateProcedureCategoryParams params,
  ) => _repository.createCategory(params);
}

/// Partial update, then re-fetches the full object.
@injectable
class UpdateProcedureCategoryUseCase
    extends
        NexoUseCase<ProcedureCategoryEntity, UpdateProcedureCategoryParams> {
  // ignore: use_super_parameters
  UpdateProcedureCategoryUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureCategoryRepository _repository;

  @override
  Future<ProcedureCategoryEntity> execute(
    UpdateProcedureCategoryParams params,
  ) => _repository.updateCategory(params);
}

/// Deletes a category (`DELETE procedure-categories/{id}/` → 204).
@injectable
class DeleteProcedureCategoryUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeleteProcedureCategoryUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IProcedureCategoryRepository _repository;

  @override
  Future<void> execute(int params) => _repository.deleteCategory(params);
}
