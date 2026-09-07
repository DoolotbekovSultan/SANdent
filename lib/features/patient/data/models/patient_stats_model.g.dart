// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientStatsModel _$PatientStatsModelFromJson(Map<String, dynamic> json) =>
    _PatientStatsModel(
      total_appointments: (json['total_appointments'] as num).toInt(),
      completed: (json['completed'] as num).toInt(),
      cancelled: (json['cancelled'] as num).toInt(),
      no_show: (json['no_show'] as num).toInt(),
      last_visit: json['last_visit'] as String?,
      first_visit: json['first_visit'] as String?,
      avg_gap_days: json['avg_gap_days'] as num?,
    );

Map<String, dynamic> _$PatientStatsModelToJson(_PatientStatsModel instance) =>
    <String, dynamic>{
      'total_appointments': instance.total_appointments,
      'completed': instance.completed,
      'cancelled': instance.cancelled,
      'no_show': instance.no_show,
      'last_visit': instance.last_visit,
      'first_visit': instance.first_visit,
      'avg_gap_days': instance.avg_gap_days,
    };
