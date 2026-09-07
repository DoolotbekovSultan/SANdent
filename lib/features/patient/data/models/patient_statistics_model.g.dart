// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientStatisticsModel _$PatientStatisticsModelFromJson(
  Map<String, dynamic> json,
) => _PatientStatisticsModel(
  total: (json['total'] as num).toInt(),
  by_gender: (json['by_gender'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  by_age_group: json['by_age_group'] as Map<String, dynamic>?,
  new_this_month: (json['new_this_month'] as num).toInt(),
  new_this_week: (json['new_this_week'] as num).toInt(),
  new_today: (json['new_today'] as num).toInt(),
  active: (json['active'] as num).toInt(),
  inactive: (json['inactive'] as num).toInt(),
);

Map<String, dynamic> _$PatientStatisticsModelToJson(
  _PatientStatisticsModel instance,
) => <String, dynamic>{
  'total': instance.total,
  'by_gender': instance.by_gender,
  'by_age_group': instance.by_age_group,
  'new_this_month': instance.new_this_month,
  'new_this_week': instance.new_this_week,
  'new_today': instance.new_today,
  'active': instance.active,
  'inactive': instance.inactive,
};
