// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: (json['id'] as num).toInt(),
      user: (json['user'] as num?)?.toInt(),
      user_detail: json['user_detail'] == null
          ? null
          : UserModel.fromJson(json['user_detail'] as Map<String, dynamic>),
      message: json['message'] as String,
      notification_type: json['notification_type'] as String?,
      type_display: json['type_display'] as String?,
      is_read: json['is_read'] as bool?,
      data: json['data'] as Map<String, dynamic>?,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'user_detail': instance.user_detail,
      'message': instance.message,
      'notification_type': instance.notification_type,
      'type_display': instance.type_display,
      'is_read': instance.is_read,
      'data': instance.data,
      'created_at': instance.created_at,
    };
