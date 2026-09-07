// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'procedure_stats_model.freezed.dart';
part 'procedure_stats_model.g.dart';

/// Procedure usage stats — mirrors backend JSON keys 1:1.
/// Live-verified via `GET /api/v1/procedures/2/stats/` (200):
///
/// ```json
/// {
///   "usage_count": 0,
///   "total_revenue": 0,
///   "last_used": null
/// }
/// ```
@freezed
abstract class ProcedureStatsModel with _$ProcedureStatsModel {
  const factory ProcedureStatsModel({
    required int usage_count,
    required num total_revenue,
    required String? last_used,
  }) = _ProcedureStatsModel;

  factory ProcedureStatsModel.fromJson(Map<String, dynamic> json) =>
      _$ProcedureStatsModelFromJson(json);
}
