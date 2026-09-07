import 'package:nexo/nexo_core.dart';

import '../models/medical_record_detail_model.dart';
import '../models/medical_record_model.dart';
import '../models/patient_history_model.dart';

/// Medical-records API (base `.../api/v1/`).
///
/// Live-verified: `GET medical-records/` PAGED `{count,next,previous,results}`
/// (200 doctor/director with empty results; 403 admin).
/// `GET patients/{id}/history/` → `{patient, appointments[], total}` (200).
///
/// NOT verifiable (no appointment obtainable — `POST /appointments/` 500s):
/// create/update/detail/add/remove shapes are swagger-only and marked;
/// re-verify once the backend is fixed. `add_*` bodies undocumented (swagger
/// refs the full record); `remove_*` are bodyless DELETEs — item ids passed
/// as `procedure_id`/`material_id` query params (best effort, unverified).
abstract interface class IRemoteMedicalRecordDataSource {
  Future<PageChunk<MedicalRecordModel, int>> getRecords({
    required int page,
  });
  Future<MedicalRecordDetailModel> getRecordById(int id);
  Future<MedicalRecordDetailModel> createRecord(Map<String, dynamic> body);
  Future<MedicalRecordDetailModel> updateRecord(
    int id,
    Map<String, dynamic> body,
  );
  Future<void> deleteRecord(int id);
  Future<void> addProcedure(int id, Map<String, dynamic> body);
  Future<void> addMaterial(int id, Map<String, dynamic> body);
  Future<void> removeProcedure(int recordId, int procedureId);
  Future<void> removeMaterial(int recordId, int materialId);
  Future<PatientHistoryModel> getPatientHistory(int patientId);
}
