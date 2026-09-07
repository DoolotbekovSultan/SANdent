import '../../../patient/data/mappers/patient_mapper.dart';
import '../models/appointment_model.dart';
import '../models/status_history_model.dart';
import '../../domain/entities/appointment_entity.dart';
import '../../domain/entities/status_history_entry.dart';

extension AppointmentMapper on AppointmentModel {
  AppointmentEntity toDomain() => AppointmentEntity(
    id: id,
    patientId: patient,
    patient: patient_detail?.toDomain(),
    doctorId: doctor,
    doctorName: _doctorName(doctor_detail),
    clinicId: clinic,
    clinicName: clinic_detail?['name'] as String?,
    dateTime: DateTime.parse(date_time),
    duration: duration,
    endTime: end_time,
    status: status,
    statusDisplay: status_display,
    notes: notes,
    createdBy: created_by,
    createdAt: created_at,
    updatedAt: updated_at,
    syncStatus: sync_status,
    deviceId: device_id,
    statusHistory:
        status_history?.map((e) => e.toDomain()).toList() ?? const [],
  );

  /// Resolves a display name from the raw `doctor_detail` map
  /// (canonical `User` entity lands in F7/F10).
  static String _doctorName(Map<String, dynamic>? detail) {
    if (detail == null) return 'Врач';
    final full = detail['full_name'];
    if (full is String && full.trim().isNotEmpty) return full;
    final first = detail['first_name'];
    final last = detail['last_name'];
    final composed = [
      if (first is String) first,
      if (last is String) last,
    ].join(' ').trim();
    if (composed.isNotEmpty) return composed;
    final username = detail['username'];
    if (username is String && username.isNotEmpty) return username;
    return 'Врач';
  }
}

extension AppointmentListMapper on List<AppointmentModel> {
  List<AppointmentEntity> toDomain() => map((e) => e.toDomain()).toList();
}

extension StatusHistoryMapper on StatusHistoryModel {
  StatusHistoryEntry toDomain() => StatusHistoryEntry(
    id: id,
    status: status,
    statusDisplay: status_display,
    oldStatus: old_status,
    changedBy: changed_by,
    changedByName: changed_by_name,
    note: note,
    changedAt: changed_at,
  );
}
