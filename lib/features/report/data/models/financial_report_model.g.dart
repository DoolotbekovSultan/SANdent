// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FinancialReportModel _$FinancialReportModelFromJson(
  Map<String, dynamic> json,
) => _FinancialReportModel(
  period: ReportPeriodModel.fromJson(json['period'] as Map<String, dynamic>),
  total_appointments: (json['total_appointments'] as num).toInt(),
  total_revenue: json['total_revenue'] as num,
  avg_check: json['avg_check'] as num,
  material_cost: json['material_cost'] as num,
  profit: json['profit'] as num,
  revenue_by_procedure: (json['revenue_by_procedure'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  revenue_by_doctor: (json['revenue_by_doctor'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  material_usage: (json['material_usage'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  daily_revenue: (json['daily_revenue'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
);

Map<String, dynamic> _$FinancialReportModelToJson(
  _FinancialReportModel instance,
) => <String, dynamic>{
  'period': instance.period,
  'total_appointments': instance.total_appointments,
  'total_revenue': instance.total_revenue,
  'avg_check': instance.avg_check,
  'material_cost': instance.material_cost,
  'profit': instance.profit,
  'revenue_by_procedure': instance.revenue_by_procedure,
  'revenue_by_doctor': instance.revenue_by_doctor,
  'material_usage': instance.material_usage,
  'daily_revenue': instance.daily_revenue,
};
