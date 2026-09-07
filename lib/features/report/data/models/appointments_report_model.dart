// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

import 'report_period_model.dart';

part 'appointments_report_model.freezed.dart';
part 'appointments_report_model.g.dart';

/// Appointments drill-down report — mirrors backend JSON keys 1:1.
/// Live-verified via `GET /api/v1/reports/appointments/` (director, 200;
/// admin/doctor → 403):
///
/// ```json
/// {
///   "period": {"start_date": "2026-08-08T01:53:05.651133+00:00",
///     "end_date": "2026-09-07T01:53:05.651133+00:00", "days": 30},
///   "total": 0, "by_status": [], "by_doctor": [], "by_day": [],
///   "by_hour": [], "completed": 0, "cancelled": 0, "no_show": 0,
///   "scheduled": 0, "in_progress": 0, "completion_rate": 0,
///   "cancellation_rate": 0
/// }
/// ```
///
/// Notes: rates are `num` (backend sends `0`, not `0.0`); the four nested
/// breakdowns are empty on the server — item shapes unknown, raw maps.
@freezed
abstract class AppointmentsReportModel with _$AppointmentsReportModel {
  const factory AppointmentsReportModel({
    required ReportPeriodModel period,
    required int total,
    required List<Map<String, dynamic>>? by_status,
    required List<Map<String, dynamic>>? by_doctor,
    required List<Map<String, dynamic>>? by_day,
    required List<Map<String, dynamic>>? by_hour,
    required int completed,
    required int cancelled,
    required int no_show,
    required int scheduled,
    required int in_progress,
    required num completion_rate,
    required num cancellation_rate,
  }) = _AppointmentsReportModel;

  factory AppointmentsReportModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsReportModelFromJson(json);
}
