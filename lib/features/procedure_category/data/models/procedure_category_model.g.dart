// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procedure_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProcedureCategoryModel _$ProcedureCategoryModelFromJson(
  Map<String, dynamic> json,
) => _ProcedureCategoryModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String?,
  parent: (json['parent'] as num?)?.toInt(),
  description: json['description'] as String?,
  procedure_count: (json['procedure_count'] as num?)?.toInt(),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  is_active: json['is_active'] as bool?,
  created_at: json['created_at'] as String?,
  updated_at: json['updated_at'] as String?,
);

Map<String, dynamic> _$ProcedureCategoryModelToJson(
  _ProcedureCategoryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'parent': instance.parent,
  'description': instance.description,
  'procedure_count': instance.procedure_count,
  'children': instance.children,
  'is_active': instance.is_active,
  'created_at': instance.created_at,
  'updated_at': instance.updated_at,
};
