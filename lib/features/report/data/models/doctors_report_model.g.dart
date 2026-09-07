// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DoctorsReportModel _$DoctorsReportModelFromJson(
  Map<String, dynamic> json,
) => _DoctorsReportModel(
  period: ReportPeriodModel.fromJson(json['period'] as Map<String, dynamic>),
  total_doctors: (json['total_doctors'] as num).toInt(),
  doctor_stats: (json['doctor_stats'] as List<dynamic>?)
      ?.map((e) => DoctorStatModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  top_doctor: json['top_doctor'] == null
      ? null
      : DoctorStatModel.fromJson(json['top_doctor'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DoctorsReportModelToJson(_DoctorsReportModel instance) =>
    <String, dynamic>{
      'period': instance.period,
      'total_doctors': instance.total_doctors,
      'doctor_stats': instance.doctor_stats,
      'top_doctor': instance.top_doctor,
    };

_DoctorStatModel _$DoctorStatModelFromJson(Map<String, dynamic> json) =>
    _DoctorStatModel(
      doctor_id: (json['doctor_id'] as num).toInt(),
      doctor_name: json['doctor_name'] as String?,
      total_appointments: (json['total_appointments'] as num).toInt(),
      completed: (json['completed'] as num).toInt(),
      cancelled: (json['cancelled'] as num).toInt(),
      no_show: (json['no_show'] as num).toInt(),
      completion_rate: json['completion_rate'] as num,
      unique_patients: (json['unique_patients'] as num).toInt(),
      procedure_count: (json['procedure_count'] as num).toInt(),
      avg_procedures_per_appointment:
          json['avg_procedures_per_appointment'] as num,
    );

Map<String, dynamic> _$DoctorStatModelToJson(_DoctorStatModel instance) =>
    <String, dynamic>{
      'doctor_id': instance.doctor_id,
      'doctor_name': instance.doctor_name,
      'total_appointments': instance.total_appointments,
      'completed': instance.completed,
      'cancelled': instance.cancelled,
      'no_show': instance.no_show,
      'completion_rate': instance.completion_rate,
      'unique_patients': instance.unique_patients,
      'procedure_count': instance.procedure_count,
      'avg_procedures_per_appointment': instance.avg_procedures_per_appointment,
    };
