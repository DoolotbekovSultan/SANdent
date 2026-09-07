import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../material_transaction/domain/entities/material_transaction_entity.dart';
import '../entities/material_entity.dart';
import '../parameters/material_params.dart';
import '../repositories/i_material_repository.dart';

/// Creates a material, then resolves the full object via search
/// (the create echo carries no `id` — verified live).
@injectable
class CreateMaterialUseCase
    extends NexoUseCase<MaterialEntity, CreateMaterialParams> {
  // ignore: use_super_parameters
  CreateMaterialUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMaterialRepository _repository;

  @override
  Future<MaterialEntity> execute(CreateMaterialParams params) =>
      _repository.createMaterial(params);
}

/// Partial update, then re-fetches the full object.
@injectable
class UpdateMaterialUseCase
    extends NexoUseCase<MaterialEntity, UpdateMaterialParams> {
  // ignore: use_super_parameters
  UpdateMaterialUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMaterialRepository _repository;

  @override
  Future<MaterialEntity> execute(UpdateMaterialParams params) =>
      _repository.updateMaterial(params);
}

/// Deletes a material (`DELETE materials/{id}/` → 204).
@injectable
class DeleteMaterialUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeleteMaterialUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMaterialRepository _repository;

  @override
  Future<void> execute(int params) => _repository.deleteMaterial(params);
}

/// Transaction history (`GET materials/{id}/transactions/` → bare array).
@injectable
class GetMaterialTransactionsUseCase
    extends NexoUseCase<List<MaterialTransactionEntity>, int> {
  // ignore: use_super_parameters
  GetMaterialTransactionsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMaterialRepository _repository;

  @override
  Future<List<MaterialTransactionEntity>> execute(int params) =>
      _repository.getTransactions(params);
}

/// Stock arrival (`POST materials/{id}/add_stock/`).
///
/// NOTE: backend 500 on valid bodies (reported) — kept for post-fix.
@injectable
class AddStockUseCase extends NexoUseCase<void, StockParams> {
  // ignore: use_super_parameters
  AddStockUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMaterialRepository _repository;

  @override
  Future<void> execute(StockParams params) =>
      _repository.addStock(params.materialId, params.quantity);
}

/// Stock write-off (`POST materials/{id}/subtract_stock/`).
///
/// NOTE: backend 500 on valid bodies (reported) — kept for post-fix.
@injectable
class SubtractStockUseCase extends NexoUseCase<void, StockParams> {
  // ignore: use_super_parameters
  SubtractStockUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IMaterialRepository _repository;

  @override
  Future<void> execute(StockParams params) =>
      _repository.subtractStock(params.materialId, params.quantity);
}

class StockParams {
  const StockParams({required this.materialId, required this.quantity});

  final int materialId;

  /// Decimal-string (`"10.00"`).
  final String quantity;
}
