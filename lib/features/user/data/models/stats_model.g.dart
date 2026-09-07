// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatsModel _$StatsModelFromJson(Map<String, dynamic> json) => _StatsModel(
  total: (json['total'] as num).toInt(),
  by_role: (json['by_role'] as List<dynamic>?)
      ?.map((e) => ByRoleStatModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  active: (json['active'] as num).toInt(),
  inactive: (json['inactive'] as num).toInt(),
  by_clinic: (json['by_clinic'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  created_today: (json['created_today'] as num).toInt(),
  created_this_week: (json['created_this_week'] as num).toInt(),
  created_this_month: (json['created_this_month'] as num).toInt(),
);

Map<String, dynamic> _$StatsModelToJson(_StatsModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'by_role': instance.by_role,
      'active': instance.active,
      'inactive': instance.inactive,
      'by_clinic': instance.by_clinic,
      'created_today': instance.created_today,
      'created_this_week': instance.created_this_week,
      'created_this_month': instance.created_this_month,
    };

_ByRoleStatModel _$ByRoleStatModelFromJson(Map<String, dynamic> json) =>
    _ByRoleStatModel(
      role: json['role'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$ByRoleStatModelToJson(_ByRoleStatModel instance) =>
    <String, dynamic>{'role': instance.role, 'count': instance.count};
