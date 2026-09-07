// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patients_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientsReportModel _$PatientsReportModelFromJson(Map<String, dynamic> json) =>
    _PatientsReportModel(
      period: ReportPeriodModel.fromJson(
        json['period'] as Map<String, dynamic>,
      ),
      total_patients: (json['total_patients'] as num).toInt(),
      new_patients: (json['new_patients'] as num).toInt(),
      active_patients: (json['active_patients'] as num).toInt(),
      repeat_patients: (json['repeat_patients'] as num).toInt(),
      by_gender: (json['by_gender'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      by_age_group: json['by_age_group'] as Map<String, dynamic>?,
      patient_list: (json['patient_list'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$PatientsReportModelToJson(
  _PatientsReportModel instance,
) => <String, dynamic>{
  'period': instance.period,
  'total_patients': instance.total_patients,
  'new_patients': instance.new_patients,
  'active_patients': instance.active_patients,
  'repeat_patients': instance.repeat_patients,
  'by_gender': instance.by_gender,
  'by_age_group': instance.by_age_group,
  'patient_list': instance.patient_list,
};
