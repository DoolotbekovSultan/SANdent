// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_period_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportPeriodModel _$ReportPeriodModelFromJson(Map<String, dynamic> json) =>
    _ReportPeriodModel(
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      days: (json['days'] as num).toInt(),
    );

Map<String, dynamic> _$ReportPeriodModelToJson(_ReportPeriodModel instance) =>
    <String, dynamic>{
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'days': instance.days,
    };
