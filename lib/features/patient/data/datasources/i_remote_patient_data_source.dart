import 'package:nexo/nexo_core.dart';

import '../models/patient_model.dart';
import '../models/patient_statistics_model.dart';
import '../models/patient_stats_model.dart';

/// Patient API over the authenticated client.
///
/// Live-verified paths (base `.../api/v1/`):
/// - `GET patients/` (paged `{count, next, previous, results}`; query
///   params `page`, `search`, `ordering`, plus `gender`/`date_of_birth`
///   filters) — swagger wrongly claims a bare array.
/// - `GET patients/search/` with **`query`** param (not `search`) →
///   `{query, count, results}`.
/// - `GET patients/{id}/` → full [PatientModel]; `GET patients/{id}/stats/`
///   → [PatientStatsModel].
/// - `POST patients/` / `PATCH patients/{id}/` return an echo of the sent
///   fields only (no `id`) — the repository re-fetches the full object.
/// - `DELETE patients/{id}/` → 204.
/// - `GET patients/statistics/` → [PatientStatisticsModel] (doctor/director
///   200; admin → 403).
/// History (`GET patients/{id}/history/` → `{patient, appointments, total}`)
/// is implemented in F4 together with the Appointment entity.
abstract interface class IRemotePatientDataSource {
  Future<PageChunk<PatientModel, int>> getPatients({
    required int page,
    String? search,
  });
  Future<PageChunk<PatientModel, int>> searchPatients(String query);
  Future<PatientModel> getPatientById(int id);
  Future<Map<String, dynamic>> createPatient(Map<String, dynamic> body);
  Future<void> updatePatient(int id, Map<String, dynamic> body);
  Future<void> deletePatient(int id);
  Future<PatientStatsModel> getPatientStats(int id);
  Future<PatientStatisticsModel> getStatistics();
}
