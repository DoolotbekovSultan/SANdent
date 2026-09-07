// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaterialModel _$MaterialModelFromJson(Map<String, dynamic> json) =>
    _MaterialModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      unit: json['unit'] as String,
      description: json['description'] as String?,
      is_active: json['is_active'] as bool?,
      usage_count: (json['usage_count'] as num?)?.toInt(),
      total_used: json['total_used'] as String?,
      current_stock: json['current_stock'] as String?,
      min_stock: json['min_stock'] as String?,
      needs_restock: json['needs_restock'] as bool?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$MaterialModelToJson(_MaterialModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
      'description': instance.description,
      'is_active': instance.is_active,
      'usage_count': instance.usage_count,
      'total_used': instance.total_used,
      'current_stock': instance.current_stock,
      'min_stock': instance.min_stock,
      'needs_restock': instance.needs_restock,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
