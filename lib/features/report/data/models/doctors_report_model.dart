// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

import 'report_period_model.dart';

part 'doctors_report_model.freezed.dart';
part 'doctors_report_model.g.dart';

/// Doctors drill-down report — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `GET /api/v1/reports/doctors/` (director, 200;
/// admin/doctor → 403):
///
/// ```json
/// {
///   "period": {"start_date": "2026-08-08T01:53:04.936493+00:00",
///     "end_date": "2026-09-07T01:53:04.936493+00:00", "days": 30},
///   "total_doctors": 4,
///   "doctor_stats": [{"doctor_id": 5, "doctor_name": "",
///     "total_appointments": 0, "completed": 0, "cancelled": 0,
///     "no_show": 0, "completion_rate": 0, "unique_patients": 0,
///     "procedure_count": 0, "avg_procedures_per_appointment": 0}],
///   "top_doctor": {"doctor_id": 5, "doctor_name": "",
///     "total_appointments": 0, "completed": 0, "cancelled": 0,
///     "no_show": 0, "completion_rate": 0, "unique_patients": 0,
///     "procedure_count": 0, "avg_procedures_per_appointment": 0}
/// }
/// ```
///
/// Unlike the other four reports, `doctor_stats` items have a known live
/// shape (zero-valued but fully keyed) — modelled as [DoctorStatModel].
@freezed
abstract class DoctorsReportModel with _$DoctorsReportModel {
  const factory DoctorsReportModel({
    required ReportPeriodModel period,
    required int total_doctors,
    required List<DoctorStatModel>? doctor_stats,
    required DoctorStatModel? top_doctor,
  }) = _DoctorsReportModel;

  factory DoctorsReportModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorsReportModelFromJson(json);
}

@freezed
abstract class DoctorStatModel with _$DoctorStatModel {
  const factory DoctorStatModel({
    required int doctor_id,
    required String? doctor_name,
    required int total_appointments,
    required int completed,
    required int cancelled,
    required int no_show,
    required num completion_rate,
    required int unique_patients,
    required int procedure_count,
    required num avg_procedures_per_appointment,
  }) = _DoctorStatModel;

  factory DoctorStatModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorStatModelFromJson(json);
}
