// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procedure_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProcedureStatsModel _$ProcedureStatsModelFromJson(Map<String, dynamic> json) =>
    _ProcedureStatsModel(
      usage_count: (json['usage_count'] as num).toInt(),
      total_revenue: json['total_revenue'] as num,
      last_used: json['last_used'] as String?,
    );

Map<String, dynamic> _$ProcedureStatsModelToJson(
  _ProcedureStatsModel instance,
) => <String, dynamic>{
  'usage_count': instance.usage_count,
  'total_revenue': instance.total_revenue,
  'last_used': instance.last_used,
};
