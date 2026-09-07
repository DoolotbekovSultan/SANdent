import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/procedure_category_entity.dart';
import '../../domain/usecases/procedure_category_usecases.dart';

/// Categories list state machine (grouping for the F4 procedure picker).
@injectable
class ProcedureCategoryCubit
    extends NexoAsyncCubit<List<ProcedureCategoryEntity>> {
  ProcedureCategoryCubit({required this._getCategoriesUseCase});

  final GetProcedureCategoriesUseCase _getCategoriesUseCase;

  @override
  Future<Result<List<ProcedureCategoryEntity>>> fetch() async {
    final result = await _getCategoriesUseCase(1);
    switch (result) {
      case Left(:final failure):
        return Left(failure);
      case Right(:final value):
        return Right(value.items);
    }
  }
}
