// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_create_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BulkCreateResultModel _$BulkCreateResultModelFromJson(
  Map<String, dynamic> json,
) => _BulkCreateResultModel(
  created: (json['created'] as List<dynamic>)
      .map((e) => ProcedureModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  errors: (json['errors'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  total: (json['total'] as num).toInt(),
  success_count: (json['success_count'] as num).toInt(),
  error_count: (json['error_count'] as num).toInt(),
);

Map<String, dynamic> _$BulkCreateResultModelToJson(
  _BulkCreateResultModel instance,
) => <String, dynamic>{
  'created': instance.created,
  'errors': instance.errors,
  'total': instance.total,
  'success_count': instance.success_count,
  'error_count': instance.error_count,
};
