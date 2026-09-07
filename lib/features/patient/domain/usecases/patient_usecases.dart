import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/patient_entity.dart';
import '../entities/patient_statistics_entity.dart';
import '../entities/patient_stats_entity.dart';
import '../parameters/create_patient_params.dart';
import '../parameters/update_patient_params.dart';
import '../repositories/i_patient_repository.dart';

/// Creates a patient, then resolves the full object via search by phone
/// (the create echo carries no `id` — verified live).
@injectable
class CreatePatientUseCase
    extends NexoUseCase<PatientEntity, CreatePatientParams> {
  // ignore: use_super_parameters
  CreatePatientUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientRepository _repository;

  @override
  Future<PatientEntity> execute(CreatePatientParams params) =>
      _repository.createPatient(params);
}

/// Partial update, then re-fetches the full object
/// (the PATCH echo carries no counters — verified live).
@injectable
class UpdatePatientUseCase
    extends NexoUseCase<PatientEntity, UpdatePatientParams> {
  // ignore: use_super_parameters
  UpdatePatientUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientRepository _repository;

  @override
  Future<PatientEntity> execute(UpdatePatientParams params) =>
      _repository.updatePatient(params);
}

/// Deletes a patient (`DELETE patients/{id}/` → 204).
@injectable
class DeletePatientUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeletePatientUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientRepository _repository;

  @override
  Future<void> execute(int params) => _repository.deletePatient(params);
}

/// Global patient statistics (`GET patients/statistics/`; doctor/director,
/// admin → 403).
@injectable
class GetPatientStatisticsUseCase
    extends NexoUseCase<PatientStatisticsEntity, NoParams> {
  // ignore: use_super_parameters
  GetPatientStatisticsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientRepository _repository;

  @override
  Future<PatientStatisticsEntity> execute(NoParams params) =>
      _repository.getStatistics();
}

/// Per-patient visit stats (`GET patients/{id}/stats/`).
@injectable
class GetPatientStatsUseCase extends NexoUseCase<PatientStatsEntity, int> {
  // ignore: use_super_parameters
  GetPatientStatsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IPatientRepository _repository;

  @override
  Future<PatientStatsEntity> execute(int params) =>
      _repository.getPatientStats(params);
}
