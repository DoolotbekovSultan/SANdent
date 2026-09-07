import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/patient_statistics_entity.dart';
import '../../domain/usecases/patient_usecases.dart';

/// Global patient statistics (`GET patients/statistics/`, doctor/director;
/// admin → 403, which the UI treats as "no block").
@injectable
class PatientStatisticsCubit extends NexoAsyncCubit<PatientStatisticsEntity> {
  PatientStatisticsCubit({required this._useCase});

  final GetPatientStatisticsUseCase _useCase;

  @override
  Future<Result<PatientStatisticsEntity>> fetch() =>
      _useCase(const NoParams());
}
