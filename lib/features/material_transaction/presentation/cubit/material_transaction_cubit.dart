import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../../material/domain/usecases/material_usecases.dart';
import '../../domain/entities/material_transaction_entity.dart';
import '../../domain/parameters/material_transaction_params.dart';
import '../../domain/usecases/material_transaction_usecases.dart';

/// Per-material history state machine (reload after each write).
@injectable
class MaterialTransactionCubit
    extends NexoAsyncCubit<List<MaterialTransactionEntity>> {
  MaterialTransactionCubit({
    required this._getTransactionsUseCase,
    required this._createTransactionUseCase,
  }) : _materialId = -1;

  final GetMaterialTransactionsUseCase _getTransactionsUseCase;
  final CreateMaterialTransactionUseCase _createTransactionUseCase;
  int _materialId;

  void watchMaterial(int materialId) {
    _materialId = materialId;
  }

  @override
  Future<Result<List<MaterialTransactionEntity>>> fetch() =>
      _getTransactionsUseCase(_materialId);

  /// Records an income/outcome transaction, then reloads the history.
  /// Returns true on success (failure goes to [onFailure]).
  Future<bool> record({
    required String transactionType,
    required String quantity,
    String? note,
  }) async {
    if (isClosed || _materialId < 0) return false;
    emit(const NexoAsyncLoading());
    final result = await _createTransactionUseCase(
      CreateMaterialTransactionParams(
        materialId: _materialId,
        transactionType: transactionType,
        quantity: quantity,
        note: note,
      ),
    );
    if (isClosed) return false;
    switch (result) {
      case Left(:final failure):
        onFailure?.call(failure);
        emit(NexoAsyncFailure<List<MaterialTransactionEntity>>(failure));
        return false;
      case Right():
        await load();
        return true;
    }
  }
}
