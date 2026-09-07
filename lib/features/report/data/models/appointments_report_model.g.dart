// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentsReportModel _$AppointmentsReportModelFromJson(
  Map<String, dynamic> json,
) => _AppointmentsReportModel(
  period: ReportPeriodModel.fromJson(json['period'] as Map<String, dynamic>),
  total: (json['total'] as num).toInt(),
  by_status: (json['by_status'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  by_doctor: (json['by_doctor'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  by_day: (json['by_day'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  by_hour: (json['by_hour'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  completed: (json['completed'] as num).toInt(),
  cancelled: (json['cancelled'] as num).toInt(),
  no_show: (json['no_show'] as num).toInt(),
  scheduled: (json['scheduled'] as num).toInt(),
  in_progress: (json['in_progress'] as num).toInt(),
  completion_rate: json['completion_rate'] as num,
  cancellation_rate: json['cancellation_rate'] as num,
);

Map<String, dynamic> _$AppointmentsReportModelToJson(
  _AppointmentsReportModel instance,
) => <String, dynamic>{
  'period': instance.period,
  'total': instance.total,
  'by_status': instance.by_status,
  'by_doctor': instance.by_doctor,
  'by_day': instance.by_day,
  'by_hour': instance.by_hour,
  'completed': instance.completed,
  'cancelled': instance.cancelled,
  'no_show': instance.no_show,
  'scheduled': instance.scheduled,
  'in_progress': instance.in_progress,
  'completion_rate': instance.completion_rate,
  'cancellation_rate': instance.cancellation_rate,
};
