// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_stats_model.freezed.dart';
part 'patient_stats_model.g.dart';

/// Per-patient visit stats — mirrors backend JSON keys 1:1.
/// Live-verified via `GET /api/v1/patients/1/stats/` (200):
///
/// ```json
/// {
///   "total_appointments": 0,
///   "completed": 0,
///   "cancelled": 0,
///   "no_show": 0,
///   "last_visit": null,
///   "first_visit": null,
///   "avg_gap_days": null
/// }
/// ```
@freezed
abstract class PatientStatsModel with _$PatientStatsModel {
  const factory PatientStatsModel({
    required int total_appointments,
    required int completed,
    required int cancelled,
    required int no_show,
    required String? last_visit,
    required String? first_visit,
    required num? avg_gap_days,
  }) = _PatientStatsModel;

  factory PatientStatsModel.fromJson(Map<String, dynamic> json) =>
      _$PatientStatsModelFromJson(json);
}
