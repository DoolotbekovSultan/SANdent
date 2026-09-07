// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    _AppointmentModel(
      id: (json['id'] as num).toInt(),
      patient: (json['patient'] as num).toInt(),
      patient_detail: json['patient_detail'] == null
          ? null
          : PatientModel.fromJson(
              json['patient_detail'] as Map<String, dynamic>,
            ),
      doctor: (json['doctor'] as num).toInt(),
      doctor_detail: json['doctor_detail'] as Map<String, dynamic>?,
      clinic: (json['clinic'] as num?)?.toInt(),
      clinic_detail: json['clinic_detail'] as Map<String, dynamic>?,
      date_time: json['date_time'] as String,
      duration: (json['duration'] as num?)?.toInt(),
      end_time: json['end_time'] as String?,
      status: json['status'] as String,
      status_display: json['status_display'] as String?,
      notes: json['notes'] as String?,
      created_by: (json['created_by'] as num?)?.toInt(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      sync_status: json['sync_status'] as String?,
      device_id: json['device_id'] as String?,
      status_history: (json['status_history'] as List<dynamic>?)
          ?.map((e) => StatusHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppointmentModelToJson(_AppointmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patient': instance.patient,
      'patient_detail': instance.patient_detail,
      'doctor': instance.doctor,
      'doctor_detail': instance.doctor_detail,
      'clinic': instance.clinic,
      'clinic_detail': instance.clinic_detail,
      'date_time': instance.date_time,
      'duration': instance.duration,
      'end_time': instance.end_time,
      'status': instance.status,
      'status_display': instance.status_display,
      'notes': instance.notes,
      'created_by': instance.created_by,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'sync_status': instance.sync_status,
      'device_id': instance.device_id,
      'status_history': instance.status_history,
    };
