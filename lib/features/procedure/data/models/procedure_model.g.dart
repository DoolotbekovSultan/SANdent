// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procedure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProcedureModel _$ProcedureModelFromJson(Map<String, dynamic> json) =>
    _ProcedureModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String?,
      category: (json['category'] as num?)?.toInt(),
      category_name: json['category_name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      duration_minutes: (json['duration_minutes'] as num?)?.toInt(),
      is_active: json['is_active'] as bool?,
      usage_count: (json['usage_count'] as num?)?.toInt(),
      total_revenue: json['total_revenue'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ProcedureModelToJson(_ProcedureModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'category': instance.category,
      'category_name': instance.category_name,
      'description': instance.description,
      'price': instance.price,
      'duration_minutes': instance.duration_minutes,
      'is_active': instance.is_active,
      'usage_count': instance.usage_count,
      'total_revenue': instance.total_revenue,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
