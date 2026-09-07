import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/medical_record_entity.dart';
import '../../domain/usecases/medical_record_usecases.dart';

/// Records list state machine.
@injectable
class MedicalRecordCubit extends NexoAsyncCubit<List<MedicalRecordEntity>> {
  MedicalRecordCubit({required this._getRecordsUseCase});

  final GetMedicalRecordsUseCase _getRecordsUseCase;

  int _page = 1;
  bool _hasMore = false;
  bool _loadingMore = false;

  bool get hasMore => _hasMore;

  @override
  Future<Result<List<MedicalRecordEntity>>> fetch() async {
    _page = 1;
    final result = await _getRecordsUseCase(1);
    switch (result) {
      case Left(:final failure):
        return Left(failure);
      case Right(:final value):
        _hasMore = value.hasMore;
        return Right(value.items);
    }
  }

  Future<void> loadMore() async {
    if (isClosed || _loadingMore || !_hasMore) return;
    final current = state.dataOrNull ?? const <MedicalRecordEntity>[];
    _loadingMore = true;
    try {
      final result = await _getRecordsUseCase(_page + 1);
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
