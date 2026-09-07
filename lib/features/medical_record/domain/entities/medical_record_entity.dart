import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_record_entity.freezed.dart';

/// Medical record list item (domain).
@freezed
abstract class MedicalRecordEntity with _$MedicalRecordEntity {
  const factory MedicalRecordEntity({
    required int id,
    required int appointmentId,
    required String? patientName,
    required String? doctorName,
    required String? appointmentDate,
    required String diagnosis,
    required int? procedureCount,
    required int? materialCount,
    required String? createdAt,
  }) = _MedicalRecordEntity;
}
