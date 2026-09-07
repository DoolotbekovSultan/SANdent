import 'package:freezed_annotation/freezed_annotation.dart';

part 'procedure_stats_entity.freezed.dart';

/// Procedure usage stats (domain).
@freezed
abstract class ProcedureStatsEntity with _$ProcedureStatsEntity {
  const factory ProcedureStatsEntity({
    required int usageCount,
    required num totalRevenue,
    required String? lastUsed,
  }) = _ProcedureStatsEntity;
}
