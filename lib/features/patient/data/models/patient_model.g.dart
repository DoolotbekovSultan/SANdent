// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientModel _$PatientModelFromJson(Map<String, dynamic> json) =>
    _PatientModel(
      id: (json['id'] as num).toInt(),
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      middle_name: json['middle_name'] as String?,
      full_name: json['full_name'] as String,
      short_name: json['short_name'] as String?,
      date_of_birth: json['date_of_birth'] as String,
      age: (json['age'] as num?)?.toInt(),
      age_group: json['age_group'] as String?,
      gender: json['gender'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String?,
      address: json['address'] as String?,
      inn: json['inn'] as String?,
      snils: json['snils'] as String?,
      policy_number: json['policy_number'] as String?,
      allergies: json['allergies'] as String?,
      chronic_diseases: json['chronic_diseases'] as String?,
      notes: json['notes'] as String?,
      total_appointments: (json['total_appointments'] as num?)?.toInt(),
      completed_appointments: (json['completed_appointments'] as num?)?.toInt(),
      cancelled_appointments: (json['cancelled_appointments'] as num?)?.toInt(),
      last_appointment: json['last_appointment'] as String?,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$PatientModelToJson(_PatientModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'middle_name': instance.middle_name,
      'full_name': instance.full_name,
      'short_name': instance.short_name,
      'date_of_birth': instance.date_of_birth,
      'age': instance.age,
      'age_group': instance.age_group,
      'gender': instance.gender,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'inn': instance.inn,
      'snils': instance.snils,
      'policy_number': instance.policy_number,
      'allergies': instance.allergies,
      'chronic_diseases': instance.chronic_diseases,
      'notes': instance.notes,
      'total_appointments': instance.total_appointments,
      'completed_appointments': instance.completed_appointments,
      'cancelled_appointments': instance.cancelled_appointments,
      'last_appointment': instance.last_appointment,
      'documents': instance.documents,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
