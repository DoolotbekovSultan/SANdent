import '../../../appointment/data/mappers/appointment_mapper.dart';
import '../../../material/data/mappers/material_mapper.dart';
import '../../../patient/data/mappers/patient_mapper.dart';
import '../../../procedure/data/mappers/procedure_mapper.dart';
import '../models/medical_record_detail_model.dart';
import '../models/medical_record_model.dart';
import '../models/patient_history_model.dart';
import '../../domain/entities/medical_record_detail_entity.dart';
import '../../domain/entities/medical_record_entity.dart';
import '../../domain/entities/patient_history_entity.dart';

extension MedicalRecordMapper on MedicalRecordModel {
  MedicalRecordEntity toDomain() => MedicalRecordEntity(
    id: id,
    appointmentId: appointment,
    patientName: patient_name,
    doctorName: doctor_name,
    appointmentDate: appointment_date,
    diagnosis: diagnosis,
    procedureCount: procedure_count,
    materialCount: material_count,
    createdAt: created_at,
  );
}

extension MedicalRecordListMapper on List<MedicalRecordModel> {
  List<MedicalRecordEntity> toDomain() => map((e) => e.toDomain()).toList();
}

extension MedicalRecordDetailMapper on MedicalRecordDetailModel {
  MedicalRecordDetailEntity toDomain() => MedicalRecordDetailEntity(
    id: id,
    appointmentId: appointment,
    appointment: appointment_detail?.toDomain(),
    diagnosis: diagnosis,
    recommendations: recommendations,
    comments: comments,
    procedures:
        procedures?.map((e) => e.toDomain()).toList() ?? const [],
    materials:
        materials?.map((e) => e.toDomain()).toList() ?? const [],
    patientId: patient_id,
    patientName: patient_name,
    doctorId: doctor_id,
    doctorName: doctor_name,
    appointmentDate: appointment_date,
    hasProcedures: has_procedures,
    hasMaterials: has_materials,
    createdAt: created_at,
    updatedAt: updated_at,
  );
}

extension RecordProcedureMapper on RecordProcedureModel {
  RecordProcedureEntry toDomain() => RecordProcedureEntry(
    id: id,
    procedureId: procedure,
    procedure: procedure_detail?.toDomain(),
    procedureName: procedure_name,
    notes: notes,
    createdAt: created_at,
  );
}

extension RecordMaterialMapper on RecordMaterialModel {
  RecordMaterialEntry toDomain() => RecordMaterialEntry(
    id: id,
    materialId: material,
    material: material_detail?.toDomain(),
    materialName: material_name,
    materialUnit: material_unit,
    quantity: quantity,
    createdAt: created_at,
  );
}

extension PatientHistoryMapper on PatientHistoryModel {
  PatientHistoryEntity toDomain() => PatientHistoryEntity(
    patient: patient.toDomain(),
    appointments: appointments.toDomain(),
    total: total,
  );
}
