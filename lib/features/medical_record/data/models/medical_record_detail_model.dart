// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../appointment/data/models/appointment_model.dart';
import '../../../material/data/models/material_model.dart';
import '../../../procedure/data/models/procedure_model.dart';

part 'medical_record_detail_model.freezed.dart';
part 'medical_record_detail_model.g.dart';

/// Full medical record — mirrors backend JSON keys 1:1.
/// Shape from swagger `MedicalRecord` (+ `AppointmentProcedure` /
/// `AppointmentMaterial` item shapes) — NOT live-verified (no record
/// obtainable: creating requires an appointment, and `POST /appointments/`
/// 500s). Re-verify once the backend is fixed.
///
/// ```json
/// {
///   "id": 1,
///   "appointment": 7,
///   "appointment_detail": { "<Appointment object>" },
///   "diagnosis": "Кариес",
///   "recommendations": "Повторный осмотр через 6 месяцев",
///   "comments": "",
///   "procedures": [
///     {"id": 1, "medical_record": 1, "procedure": 2,
///      "procedure_detail": { "<Procedure object>" },
///      "procedure_name": "Чистка", "notes": "", "created_at": "..."}
///   ],
///   "materials": [
///     {"id": 1, "medical_record": 1, "material": 1,
///      "material_detail": { "<Material object>" },
///      "material_name": "Перчатки", "material_unit": "шт",
///      "quantity": 2, "created_at": "..."}
///   ],
///   "patient_id": 1,
///   "patient_name": "Петров Иван",
///   "doctor_id": 3,
///   "doctor_name": "Rustam Keneev",
///   "appointment_date": "2026-09-07T10:00:00+0300",
///   "has_procedures": true,
///   "has_materials": true,
///   "created_at": "...",
///   "updated_at": "..."
/// }
/// ```
@freezed
abstract class MedicalRecordDetailModel with _$MedicalRecordDetailModel {
  const factory MedicalRecordDetailModel({
    required int id,
    required int appointment,
    required AppointmentModel? appointment_detail,
    required String diagnosis,
    required String? recommendations,
    required String? comments,
    required List<RecordProcedureModel>? procedures,
    required List<RecordMaterialModel>? materials,
    required int? patient_id,
    required String? patient_name,
    required int? doctor_id,
    required String? doctor_name,
    required String? appointment_date,
    required bool? has_procedures,
    required bool? has_materials,
    required String? created_at,
    required String? updated_at,
  }) = _MedicalRecordDetailModel;

  factory MedicalRecordDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalRecordDetailModelFromJson(json);
}

/// Attached procedure (`AppointmentProcedure` shape, swagger-only).
@freezed
abstract class RecordProcedureModel with _$RecordProcedureModel {
  const factory RecordProcedureModel({
    required int? id,
    required int? medical_record,
    required int? procedure,
    required ProcedureModel? procedure_detail,
    required String? procedure_name,
    required String? notes,
    required String? created_at,
  }) = _RecordProcedureModel;

  factory RecordProcedureModel.fromJson(Map<String, dynamic> json) =>
      _$RecordProcedureModelFromJson(json);
}

/// Attached material (`AppointmentMaterial` shape, swagger-only).
@freezed
abstract class RecordMaterialModel with _$RecordMaterialModel {
  const factory RecordMaterialModel({
    required int? id,
    required int? medical_record,
    required int? material,
    required MaterialModel? material_detail,
    required String? material_name,
    required String? material_unit,
    required int? quantity,
    required String? created_at,
  }) = _RecordMaterialModel;

  factory RecordMaterialModel.fromJson(Map<String, dynamic> json) =>
      _$RecordMaterialModelFromJson(json);
}
