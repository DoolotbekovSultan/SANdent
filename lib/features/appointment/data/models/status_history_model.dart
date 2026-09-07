// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_history_model.freezed.dart';
part 'status_history_model.g.dart';

/// Status-change record (`Appointment.status_history[]`).
///
/// Shape from swagger `AppointmentStatusHistory` — NOT live-verified
/// (no appointment object obtainable: `POST /appointments/` → backend 500).
/// Re-verify once the backend is fixed.
@freezed
abstract class StatusHistoryModel with _$StatusHistoryModel {
  const factory StatusHistoryModel({
    required int? id,
    required String status,
    required String? status_display,
    required String? old_status,
    required int? changed_by,
    required String? changed_by_name,
    required String? note,
    required String? changed_at,
  }) = _StatusHistoryModel;

  factory StatusHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$StatusHistoryModelFromJson(json);
}
