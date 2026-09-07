import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/procedure_entity.dart';
import '../../domain/usecases/get_procedure_usecase.dart';

/// Procedures list state machine with search + load-more.
/// Consumed by the F4 medical-card pickers (no catalog screen in F5).
@injectable
class ProcedureCubit extends NexoAsyncCubit<List<ProcedureEntity>> {
  ProcedureCubit({required this._getProceduresUseCase});

  final GetProceduresUseCase _getProceduresUseCase;

  int _page = 1;
  String? _search;
  bool _hasMore = false;
  bool _loadingMore = false;

  bool get hasMore => _hasMore;

  @override
  Future<Result<List<ProcedureEntity>>> fetch() async {
    _page = 1;
    final result = await _getProceduresUseCase(
      ProceduresPageParams(page: _page, search: _search),
    );
    switch (result) {
      case Left(:final failure):
        return Left(failure);
      case Right(:final value):
        _hasMore = value.hasMore;
        return Right(value.items);
    }
  }

  Future<void> search(String query) async {
    _search = query.isEmpty ? null : query;
    await load();
  }

  Future<void> loadMore() async {
    if (isClosed || _loadingMore || !_hasMore) return;
    final current = state.dataOrNull ?? const <ProcedureEntity>[];
    _loadingMore = true;
    try {
      final result = await _getProceduresUseCase(
        ProceduresPageParams(page: _page + 1, search: _search),
      );
      if (isClosed) return;
      switch (result) {
        case Left(:final failure):
          onFailure?.call(failure);
        case Right(:final value):
          _page += 1;
          _hasMore = value.hasMore;
          emit(NexoAsyncSuccess([...current, ...value.items]));
      }
    } finally {
      _loadingMore = false;
    }
  }
}
