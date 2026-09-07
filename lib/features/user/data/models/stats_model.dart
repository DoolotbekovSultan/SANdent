// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_model.freezed.dart';
part 'stats_model.g.dart';

/// Global user stats — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `GET /api/v1/stats/` (admin/director 200; doctor → 403):
///
/// ```json
/// {"total": 6,
///  "by_role": [{"role": "director", "count": 1},
///    {"role": "admin", "count": 1}, {"role": "doctor", "count": 4}],
///  "active": 6, "inactive": 0, "by_clinic": [],
///  "created_today": 0, "created_this_week": 0, "created_this_month": 3}
/// ```
///
/// Notes: swagger's `Stats` claims `by_role`/`by_clinic` are string arrays —
/// live `by_role` carries `{role, count}` objects (modelled as
/// [ByRoleStatModel]); `by_clinic` is empty (item shape unknown → raw maps).
@freezed
abstract class StatsModel with _$StatsModel {
  const factory StatsModel({
    required int total,
    required List<ByRoleStatModel>? by_role,
    required int active,
    required int inactive,
    required List<Map<String, dynamic>>? by_clinic,
    required int created_today,
    required int created_this_week,
    required int created_this_month,
  }) = _StatsModel;

  factory StatsModel.fromJson(Map<String, dynamic> json) =>
      _$StatsModelFromJson(json);
}

@freezed
abstract class ByRoleStatModel with _$ByRoleStatModel {
  const factory ByRoleStatModel({
    required String role,
    required int count,
  }) = _ByRoleStatModel;

  factory ByRoleStatModel.fromJson(Map<String, dynamic> json) =>
      _$ByRoleStatModelFromJson(json);
}
