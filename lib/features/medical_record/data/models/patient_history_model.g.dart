// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientHistoryModel _$PatientHistoryModelFromJson(Map<String, dynamic> json) =>
    _PatientHistoryModel(
      patient: PatientModel.fromJson(json['patient'] as Map<String, dynamic>),
      appointments: (json['appointments'] as List<dynamic>)
          .map((e) => AppointmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$PatientHistoryModelToJson(
  _PatientHistoryModel instance,
) => <String, dynamic>{
  'patient': instance.patient,
  'appointments': instance.appointments,
  'total': instance.total,
};
