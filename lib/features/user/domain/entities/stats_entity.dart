import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_entity.freezed.dart';

/// Global user stats (domain) — admin-home fallback when
/// `GET /reports/dashboard/` answers 403.
@freezed
abstract class StatsEntity with _$StatsEntity {
  const factory StatsEntity({
    required int total,
    required List<ByRoleStatEntity> byRole,
    required int active,
    required int inactive,
    required List<Map<String, dynamic>> byClinic,
    required int createdToday,
    required int createdThisWeek,
    required int createdThisMonth,
  }) = _StatsEntity;
}

@freezed
abstract class ByRoleStatEntity with _$ByRoleStatEntity {
  const factory ByRoleStatEntity({
    required String role,
    required int count,
  }) = _ByRoleStatEntity;
}
