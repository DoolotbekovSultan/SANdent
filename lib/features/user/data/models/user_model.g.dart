// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num).toInt(),
  username: json['username'] as String,
  email: json['email'] as String?,
  first_name: json['first_name'] as String?,
  last_name: json['last_name'] as String?,
  full_name: json['full_name'] as String?,
  role: json['role'] as String?,
  role_display: json['role_display'] as String?,
  phone: json['phone'] as String?,
  clinic: (json['clinic'] as num?)?.toInt(),
  clinic_detail: json['clinic_detail'] as Map<String, dynamic>?,
  is_active: json['is_active'] as bool?,
  fcm_token: json['fcm_token'] as String?,
  device_id: json['device_id'] as String?,
  last_login: json['last_login'] as String?,
  date_joined: json['date_joined'] as String?,
  created_at: json['created_at'] as String?,
  updated_at: json['updated_at'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'full_name': instance.full_name,
      'role': instance.role,
      'role_display': instance.role_display,
      'phone': instance.phone,
      'clinic': instance.clinic,
      'clinic_detail': instance.clinic_detail,
      'is_active': instance.is_active,
      'fcm_token': instance.fcm_token,
      'device_id': instance.device_id,
      'last_login': instance.last_login,
      'date_joined': instance.date_joined,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
