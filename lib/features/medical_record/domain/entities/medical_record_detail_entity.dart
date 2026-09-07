import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../appointment/domain/entities/appointment_entity.dart';
import '../../../material/domain/entities/material_entity.dart';
import '../../../procedure/domain/entities/procedure_entity.dart';

part 'medical_record_detail_entity.freezed.dart';

/// Full medical record (domain).
@freezed
abstract class MedicalRecordDetailEntity
    with _$MedicalRecordDetailEntity {
  const factory MedicalRecordDetailEntity({
    required int id,
    required int appointmentId,
    required AppointmentEntity? appointment,
    required String diagnosis,
    required String? recommendations,
    required String? comments,
    required List<RecordProcedureEntry> procedures,
    required List<RecordMaterialEntry> materials,
    required int? patientId,
    required String? patientName,
    required int? doctorId,
    required String? doctorName,
    required String? appointmentDate,
    required bool? hasProcedures,
    required bool? hasMaterials,
    required String? createdAt,
    required String? updatedAt,
  }) = _MedicalRecordDetailEntity;
}

/// Attached procedure (domain).
@freezed
abstract class RecordProcedureEntry with _$RecordProcedureEntry {
  const factory RecordProcedureEntry({
    required int? id,
    required int? procedureId,
    required ProcedureEntity? procedure,
    required String? procedureName,
    required String? notes,
    required String? createdAt,
  }) = _RecordProcedureEntry;
}

/// Attached material (domain).
@freezed
abstract class RecordMaterialEntry with _$RecordMaterialEntry {
  const factory RecordMaterialEntry({
    required int? id,
    required int? materialId,
    required MaterialEntity? material,
    required String? materialName,
    required String? materialUnit,
    required int? quantity,
    required String? createdAt,
  }) = _RecordMaterialEntry;
}
