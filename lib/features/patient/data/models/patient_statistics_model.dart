// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_statistics_model.freezed.dart';
part 'patient_statistics_model.g.dart';

/// Global patient statistics — mirrors backend JSON keys 1:1.
/// Live-verified via `GET /api/v1/patients/statistics/`
/// (doctor/director 200; admin → 403):
///
/// ```json
/// {"total": 0, "by_gender": [],
///  "by_age_group": {"child": 0, "young_adult": 0, "adult": 0, "senior": 0},
///  "new_this_month": 0, "new_this_week": 0, "new_today": 0,
///  "active": 0, "inactive": 0}
/// ```
///
/// Notes: swagger's `PatientStatistics` claims `by_gender`/`by_age_group` are
/// keyed objects — live `by_gender` is a bare ARRAY (empty, item shape
/// unknown → raw maps). Distinct from per-patient [PatientStatsModel]
/// (`GET patients/{id}/stats/`).
@freezed
abstract class PatientStatisticsModel with _$PatientStatisticsModel {
  const factory PatientStatisticsModel({
    required int total,
    required List<Map<String, dynamic>>? by_gender,
    required Map<String, dynamic>? by_age_group,
    required int new_this_month,
    required int new_this_week,
    required int new_today,
    required int active,
    required int inactive,
  }) = _PatientStatisticsModel;

  factory PatientStatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$PatientStatisticsModelFromJson(json);
}
