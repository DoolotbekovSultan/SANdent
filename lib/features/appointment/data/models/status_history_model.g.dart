// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatusHistoryModel _$StatusHistoryModelFromJson(Map<String, dynamic> json) =>
    _StatusHistoryModel(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String,
      status_display: json['status_display'] as String?,
      old_status: json['old_status'] as String?,
      changed_by: (json['changed_by'] as num?)?.toInt(),
      changed_by_name: json['changed_by_name'] as String?,
      note: json['note'] as String?,
      changed_at: json['changed_at'] as String?,
    );

Map<String, dynamic> _$StatusHistoryModelToJson(_StatusHistoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'status_display': instance.status_display,
      'old_status': instance.old_status,
      'changed_by': instance.changed_by,
      'changed_by_name': instance.changed_by_name,
      'note': instance.note,
      'changed_at': instance.changed_at,
    };
