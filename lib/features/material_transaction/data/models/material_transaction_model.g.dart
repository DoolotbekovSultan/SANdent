// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaterialTransactionModel _$MaterialTransactionModelFromJson(
  Map<String, dynamic> json,
) => _MaterialTransactionModel(
  id: (json['id'] as num).toInt(),
  material: (json['material'] as num).toInt(),
  material_name: json['material_name'] as String?,
  transaction_type: json['transaction_type'] as String,
  transaction_type_display: json['transaction_type_display'] as String?,
  quantity: json['quantity'] as String,
  note: json['note'] as String?,
  created_by: (json['created_by'] as num?)?.toInt(),
  created_by_name: json['created_by_name'] as String?,
  created_at: json['created_at'] as String?,
);

Map<String, dynamic> _$MaterialTransactionModelToJson(
  _MaterialTransactionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'material': instance.material,
  'material_name': instance.material_name,
  'transaction_type': instance.transaction_type,
  'transaction_type_display': instance.transaction_type_display,
  'quantity': instance.quantity,
  'note': instance.note,
  'created_by': instance.created_by,
  'created_by_name': instance.created_by_name,
  'created_at': instance.created_at,
};
