// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_record_model.freezed.dart';
part 'medical_record_model.g.dart';

/// Medical record list item — mirrors backend JSON keys 1:1 (snake_case).
/// Shape from swagger `MedicalRecordList` — NOT live-verified
/// (`GET /medical-records/` is 200 but empty for doctor/director; 403 admin):
///
/// ```json
/// {
///   "id": 1,
///   "appointment": 7,
///   "patient_name": "Петров Иван",
///   "doctor_name": "Rustam Keneev",
///   "appointment_date": "2026-09-07T10:00:00+0300",
///   "diagnosis": "Кариес",
///   "procedure_count": 2,
///   "material_count": 3,
///   "created_at": "2026-09-07T11:00:00+0300"
/// }
/// ```
@freezed
abstract class MedicalRecordModel with _$MedicalRecordModel {
  const factory MedicalRecordModel({
    required int id,
    required int appointment,
    required String? patient_name,
    required String? doctor_name,
    required String? appointment_date,
    required String diagnosis,
    required int? procedure_count,
    required int? material_count,
    required String? created_at,
  }) = _MedicalRecordModel;

  factory MedicalRecordModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalRecordModelFromJson(json);
}
