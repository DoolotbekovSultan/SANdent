import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../patient/domain/entities/patient_entity.dart';
import 'status_history_entry.dart';

part 'appointment_entity.freezed.dart';

/// Appointment (domain).
///
/// `dateTime` is parsed from the backend ISO string (`+0300` tz verified
/// via `DateTime.parse` on sibling endpoints).
/// `doctorName`/`clinicName` are resolved defensively from the raw detail
/// maps — the canonical `User`/`Clinic` entities land in F7/F10.
@freezed
abstract class AppointmentEntity with _$AppointmentEntity {
  const factory AppointmentEntity({
    required int id,
    required int patientId,
    required PatientEntity? patient,
    required int doctorId,
    required String doctorName,
    required int? clinicId,
    required String? clinicName,
    required DateTime dateTime,
    required int? duration,
    required String? endTime,
    required String status,
    required String? statusDisplay,
    required String? notes,
    required int? createdBy,
    required String? createdAt,
    required String? updatedAt,
    required String? syncStatus,
    required String? deviceId,
    required List<StatusHistoryEntry> statusHistory,
  }) = _AppointmentEntity;
}
