import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/patient_history_entity.dart';
import '../../domain/usecases/medical_record_usecases.dart';

/// Patient history state machine (`GET patients/{id}/history/`).
/// Scoped to one patient via [watchPatient] before [load].
@injectable
class PatientHistoryCubit extends NexoAsyncCubit<PatientHistoryEntity> {
  PatientHistoryCubit({required this._getHistoryUseCase});

  final GetPatientHistoryUseCase _getHistoryUseCase;
  int _patientId = -1;

  void watchPatient(int patientId) {
    _patientId = patientId;
  }

  @override
  Future<Result<PatientHistoryEntity>> fetch() =>
      _getHistoryUseCase(_patientId);
}
