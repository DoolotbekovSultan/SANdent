// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

import 'report_period_model.dart';

part 'patients_report_model.freezed.dart';
part 'patients_report_model.g.dart';

/// Patients drill-down report — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `GET /api/v1/reports/patients/` (director, 200;
/// admin/doctor → 403):
///
/// ```json
/// {
///   "period": {"start_date": "2026-08-08T01:53:05.225216+00:00",
///     "end_date": "2026-09-07T01:53:05.225216+00:00", "days": 30},
///   "total_patients": 0, "new_patients": 0, "active_patients": 0,
///   "repeat_patients": 0, "by_gender": [],
///   "by_age_group": {"0-18": 0, "19-30": 0, "31-45": 0,
///     "46-60": 0, "60+": 0},
///   "patient_list": []
/// }
/// ```
///
/// Notes: `by_gender` is a bare ARRAY on the live server (empty — item shape
/// unknown, raw maps); `by_age_group` is a keyed object. `patient_list` item
/// shape is unknown (empty) — raw maps, never invented.
@freezed
abstract class PatientsReportModel with _$PatientsReportModel {
  const factory PatientsReportModel({
    required ReportPeriodModel period,
    required int total_patients,
    required int new_patients,
    required int active_patients,
    required int repeat_patients,
    required List<Map<String, dynamic>>? by_gender,
    required Map<String, dynamic>? by_age_group,
    required List<Map<String, dynamic>>? patient_list,
  }) = _PatientsReportModel;

  factory PatientsReportModel.fromJson(Map<String, dynamic> json) =>
      _$PatientsReportModelFromJson(json);
}
