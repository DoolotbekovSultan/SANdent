// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../patient/data/models/patient_model.dart';
import 'status_history_model.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

/// Appointment DTO — mirrors backend JSON keys 1:1 (snake_case).
///
/// Shape from swagger `Appointment` definition — NOT live-verified: no
/// appointment object could be obtained (list is empty; every
/// `POST /appointments/` attempt returns backend 500 — reported).
/// Re-verify against a real object once the backend is fixed.
///
/// ```json
/// {
///   "id": 7,
///   "patient": 1,
///   "patient_detail": { "<Patient object>" },
///   "doctor": 3,
///   "doctor_detail": { "id": 3, "full_name": "Rustam Keneev", "...": "..." },
///   "clinic": null,
///   "clinic_detail": null,
///   "date_time": "2026-09-07T10:00:00+0300",
///   "duration": 30,
///   "end_time": "2026-09-07T10:30:00+0300",
///   "status": "scheduled",
///   "status_display": "Запланирован",
///   "notes": "",
///   "created_by": 4,
///   "created_at": "2026-09-06T15:00:00+0300",
///   "updated_at": "2026-09-06T15:00:00+0300",
///   "sync_status": "synced",
///   "device_id": null,
///   "status_history": []
/// }
/// ```
///
/// Cut (unverified swagger `string` vs probable `bool`, no live sample):
/// `is_past`, `is_active`, `can_cancel`, `can_reschedule`.
/// `doctor_detail`/`clinic_detail` stay raw maps here — the canonical
/// `User`/`Clinic` entities land in F7/F10.
@freezed
abstract class AppointmentModel with _$AppointmentModel {
  const factory AppointmentModel({
    required int id,
    required int patient,
    required PatientModel? patient_detail,
    required int doctor,
    required Map<String, dynamic>? doctor_detail,
    required int? clinic,
    required Map<String, dynamic>? clinic_detail,
    required String date_time,
    required int? duration,
    required String? end_time,
    required String status,
    required String? status_display,
    required String? notes,
    required int? created_by,
    required String? created_at,
    required String? updated_at,
    required String? sync_status,
    required String? device_id,
    required List<StatusHistoryModel>? status_history,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}
