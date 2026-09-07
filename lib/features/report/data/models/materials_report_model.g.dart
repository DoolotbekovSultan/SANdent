// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materials_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaterialsReportModel _$MaterialsReportModelFromJson(
  Map<String, dynamic> json,
) => _MaterialsReportModel(
  period: ReportPeriodModel.fromJson(json['period'] as Map<String, dynamic>),
  total_materials_used: (json['total_materials_used'] as num).toInt(),
  total_quantity: (json['total_quantity'] as num).toInt(),
  unique_materials: (json['unique_materials'] as num).toInt(),
  top_materials: (json['top_materials'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  by_doctor: (json['by_doctor'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  material_details: (json['material_details'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
);

Map<String, dynamic> _$MaterialsReportModelToJson(
  _MaterialsReportModel instance,
) => <String, dynamic>{
  'period': instance.period,
  'total_materials_used': instance.total_materials_used,
  'total_quantity': instance.total_quantity,
  'unique_materials': instance.unique_materials,
  'top_materials': instance.top_materials,
  'by_doctor': instance.by_doctor,
  'material_details': instance.material_details,
};
