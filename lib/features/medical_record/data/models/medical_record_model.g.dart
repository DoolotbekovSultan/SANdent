// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MedicalRecordModel _$MedicalRecordModelFromJson(Map<String, dynamic> json) =>
    _MedicalRecordModel(
      id: (json['id'] as num).toInt(),
      appointment: (json['appointment'] as num).toInt(),
      patient_name: json['patient_name'] as String?,
      doctor_name: json['doctor_name'] as String?,
      appointment_date: json['appointment_date'] as String?,
      diagnosis: json['diagnosis'] as String,
      procedure_count: (json['procedure_count'] as num?)?.toInt(),
      material_count: (json['material_count'] as num?)?.toInt(),
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$MedicalRecordModelToJson(_MedicalRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointment': instance.appointment,
      'patient_name': instance.patient_name,
      'doctor_name': instance.doctor_name,
      'appointment_date': instance.appointment_date,
      'diagnosis': instance.diagnosis,
      'procedure_count': instance.procedure_count,
      'material_count': instance.material_count,
      'created_at': instance.created_at,
    };
