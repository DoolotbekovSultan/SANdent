import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/patient_document_entity.dart';
import '../../domain/usecases/get_patient_document_usecase.dart';
import '../../domain/usecases/patient_document_usecases.dart';

/// Patient documents list state machine with load-more + delete.
///
/// Scoped to one patient via [watchPatient] before [load] (medical-card tab).
/// The server `?patient=` filter is sent AND results are filtered client-side
/// (the filter validates against existing patients — belt and suspenders).
@injectable
class PatientDocumentCubit extends NexoAsyncCubit<List<PatientDocumentEntity>> {
  PatientDocumentCubit({
    required this._getDocumentsUseCase,
    required this._deleteDocumentUseCase,
  });

  final GetPatientDocumentUseCase _getDocumentsUseCase;
  final DeletePatientDocumentUseCase _deleteDocumentUseCase;

  int _page = 1;
  int? _patientId;
  bool _hasMore = false;
  bool _loadingMore = false;

  bool get hasMore => _hasMore;

  void watchPatient(int patientId) {
    _patientId = patientId;
  }

  List<PatientDocumentEntity> _scoped(List<PatientDocumentEntity> items) =>
      _patientId == null
          ? items
          : items.where((d) => d.patient == _patientId).toList();

  @override
  Future<Result<List<PatientDocumentEntity>>> fetch() async {
    _page = 1;
    final result = await _getDocumentsUseCase(
      PatientDocumentsPageParams(page: _page, patientId: _patientId),
    );
    switch (result) {
      case Left(:final failure):
        return Left(failure);
      case Right(:final value):
        _hasMore = value.hasMore;
        return Right(_scoped(value.items));
    }
  }

  Future<void> loadMore() async {
    if (isClosed || _loadingMore || !_hasMore) return;
    final current = state.dataOrNull ?? const <PatientDocumentEntity>[];
    _loadingMore = true;
    try {
      final result = await _getDocumentsUseCase(
        PatientDocumentsPageParams(page: _page + 1, patientId: _patientId),
      );
      if (isClosed) return;
      switch (result) {
        case Left(:final failure):
          onFailure?.call(failure);
        case Right(:final value):
          _page += 1;
          _hasMore = value.hasMore;
          emit(NexoAsyncSuccess([...current, ..._scoped(value.items)]));
      }
    } finally {
      _loadingMore = false;
    }
  }

  /// Deletes a document, then reloads the list. Returns false on failure
  /// (the caller shows the snackbar via `onFailure`).
  Future<bool> deleteDocument(int id) async {
    final result = await _deleteDocumentUseCase(id);
    if (isClosed) return false;
    switch (result) {
      case Left(:final failure):
        onFailure?.call(failure);
        return false;
      case Right():
        await refresh();
        return true;
    }
  }
}
