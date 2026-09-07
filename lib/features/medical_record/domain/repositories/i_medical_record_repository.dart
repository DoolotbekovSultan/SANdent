import 'package:nexo/nexo_core.dart';

import '../entities/medical_record_detail_entity.dart';
import '../entities/medical_record_entity.dart';
import '../entities/patient_history_entity.dart';
import '../parameters/medical_record_params.dart';

/// Medical-records repository contract.
abstract interface class IMedicalRecordRepository {
  Future<PageChunk<MedicalRecordEntity, int>> getRecords({
    required int page,
  });
  Future<MedicalRecordDetailEntity> getRecordById(int id);
  Future<MedicalRecordDetailEntity> createRecord(
    CreateMedicalRecordParams params,
  );
  Future<MedicalRecordDetailEntity> updateRecord(
    UpdateMedicalRecordParams params,
  );
  Future<void> deleteRecord(int id);
  Future<void> addProcedure({
    required int recordId,
    required int procedureId,
    String? note,
  });
  Future<void> addMaterial({
    required int recordId,
    required int materialId,
    required int quantity,
  });
  Future<void> removeProcedure({
    required int recordId,
    required int procedureId,
  });
  Future<void> removeMaterial({required int recordId, required int materialId});
  Future<PatientHistoryEntity> getPatientHistory(int patientId);
}
