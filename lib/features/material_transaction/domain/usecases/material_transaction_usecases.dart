import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/material_transaction_entity.dart';
import '../parameters/material_transaction_params.dart';
import '../repositories/i_material_transaction_repository.dart';

/// Paged transactions (`GET material-transactions/`).
@injectable
class GetAllMaterialTransactionsUseCase
    extends
        NexoUseCase<PageChunk<MaterialTransactionEntity, int>, int> {
  // ignore: use_super_parameters
  GetAllMaterialTransactionsUseCase(
    NexoLogger logger, {
    required this._repository,
  }) : super(logger);

  final IMaterialTransactionRepository _repository;

  @override
  Future<PageChunk<MaterialTransactionEntity, int>> execute(int params) =>
      _repository.getTransactions(page: params);
}

/// Transaction detail (`GET material-transactions/{id}/`).
@injectable
class GetMaterialTransactionByIdUseCase
    extends NexoUseCase<MaterialTransactionEntity, int> {
  // ignore: use_super_parameters
  GetMaterialTransactionByIdUseCase(
    NexoLogger logger, {
    required this._repository,
  }) : super(logger);

  final IMaterialTransactionRepository _repository;

  @override
  Future<MaterialTransactionEntity> execute(int params) =>
      _repository.getTransactionById(params);
}

/// Records a transaction (`POST material-transactions/` → 201 echo).
/// The working stock-change path while `add_stock`/`subtract_stock` 500.
@injectable
class CreateMaterialTransactionUseCase
    extends NexoUseCase<void, CreateMaterialTransactionParams> {
  // ignore: use_super_parameters
  CreateMaterialTransactionUseCase(
    NexoLogger logger, {
    required this._repository,
  }) : super(logger);

  final IMaterialTransactionRepository _repository;

  @override
  Future<void> execute(CreateMaterialTransactionParams params) =>
      _repository.createTransaction(params);
}

/// Edits a transaction note (`PATCH material-transactions/{id}/`).
@injectable
class UpdateMaterialTransactionUseCase
    extends NexoUseCase<void, UpdateMaterialTransactionParams> {
  // ignore: use_super_parameters
  UpdateMaterialTransactionUseCase(
    NexoLogger logger, {
    required this._repository,
  }) : super(logger);

  final IMaterialTransactionRepository _repository;

  @override
  Future<void> execute(UpdateMaterialTransactionParams params) =>
      _repository.updateTransaction(params);
}

/// Deletes a transaction (`DELETE` → 204; does NOT reverse stock).
@injectable
class DeleteMaterialTransactionUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeleteMaterialTransactionUseCase(
    NexoLogger logger, {
    required this._repository,
  }) : super(logger);

  final IMaterialTransactionRepository _repository;

  @override
  Future<void> execute(int params) => _repository.deleteTransaction(params);
}
