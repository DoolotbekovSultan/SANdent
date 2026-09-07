import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../../../patient/data/models/patient_model.dart';
import '../models/medical_record_detail_model.dart';
import '../models/medical_record_model.dart';
import '../models/patient_history_model.dart';
import 'i_remote_medical_record_data_source.dart';

/// Offline/mock records backend.
@LazySingleton(as: IRemoteMedicalRecordDataSource, env: [AppEnvironment.mock])
class MockMedicalRecordRemoteDataSource
    implements IRemoteMedicalRecordDataSource {
  static const _items = [
    MedicalRecordModel(
      id: 1,
      appointment: 7,
      patient_name: 'Петров Иван',
      doctor_name: 'Rustam Keneev',
      appointment_date: '2026-09-07T10:00:00+0300',
      diagnosis: 'Кариес',
      procedure_count: 1,
      material_count: 1,
      created_at: null,
    ),
  ];

  @override
  Future<PageChunk<MedicalRecordModel, int>> getRecords({
    required int page,
  }) async =>
      const PageChunk(items: _items, nextCursor: null, hasMore: false);

  @override
  Future<MedicalRecordDetailModel> getRecordById(int id) async =>
      const MedicalRecordDetailModel(
        id: 1,
        appointment: 7,
        appointment_detail: null,
        diagnosis: 'Кариес',
        recommendations: null,
        comments: null,
        procedures: null,
        materials: null,
        patient_id: 1,
        patient_name: 'Петров Иван',
        doctor_id: 3,
        doctor_name: 'Rustam Keneev',
        appointment_date: '2026-09-07T10:00:00+0300',
        has_procedures: false,
        has_materials: false,
        created_at: null,
        updated_at: null,
      );

  @override
  Future<MedicalRecordDetailModel> createRecord(
    Map<String, dynamic> body,
  ) async => getRecordById(1);

  @override
  Future<MedicalRecordDetailModel> updateRecord(
    int id,
    Map<String, dynamic> body,
  ) async => getRecordById(id);

  @override
  Future<void> deleteRecord(int id) async {}

  @override
  Future<void> addProcedure(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> addMaterial(int id, Map<String, dynamic> body) async {}

  @override
  Future<void> removeProcedure(int recordId, int procedureId) async {}

  @override
  Future<void> removeMaterial(int recordId, int materialId) async {}

  @override
  Future<PatientHistoryModel> getPatientHistory(int patientId) async =>
      const PatientHistoryModel(
        patient: PatientModel(
          id: 1,
          first_name: 'Иван',
          last_name: 'Петров',
          middle_name: null,
          full_name: 'Петров Иван',
          short_name: null,
          date_of_birth: '1990-01-15',
          age: 36,
          age_group: null,
          gender: 'male',
          phone: '+996555000111',
          email: null,
          address: null,
          inn: null,
          snils: null,
          policy_number: null,
          allergies: null,
          chronic_diseases: null,
          notes: null,
          total_appointments: 0,
          completed_appointments: 0,
          cancelled_appointments: 0,
          last_appointment: null,
          documents: null,
          created_at: null,
          updated_at: null,
        ),
        appointments: [],
        total: 0,
      );
}
