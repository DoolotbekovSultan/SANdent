import 'package:nexo/nexo_core.dart';

import '../entities/patient_entity.dart';
import '../entities/patient_statistics_entity.dart';
import '../entities/patient_stats_entity.dart';
import '../parameters/create_patient_params.dart';
import '../parameters/update_patient_params.dart';

/// Patient repository contract.
abstract interface class IPatientRepository {
  Future<PageChunk<PatientEntity, int>> getPatients({
    required int page,
    String? search,
  });
  Future<PageChunk<PatientEntity, int>> searchPatients(String query);
  Future<PatientEntity> getPatientById(int id);
  Future<PatientEntity> createPatient(CreatePatientParams params);
  Future<PatientEntity> updatePatient(UpdatePatientParams params);
  Future<void> deletePatient(int id);
  Future<PatientStatsEntity> getPatientStats(int id);
  Future<PatientStatisticsEntity> getStatistics();
}
