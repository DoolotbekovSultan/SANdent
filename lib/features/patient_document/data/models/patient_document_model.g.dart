// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientDocumentModel _$PatientDocumentModelFromJson(
  Map<String, dynamic> json,
) => _PatientDocumentModel(
  id: (json['id'] as num).toInt(),
  patient: (json['patient'] as num).toInt(),
  document_type: json['document_type'] as String,
  document_type_display: json['document_type_display'] as String?,
  file: json['file'] as String?,
  file_url: json['file_url'] as String?,
  description: json['description'] as String?,
  uploaded_at: json['uploaded_at'] as String?,
);

Map<String, dynamic> _$PatientDocumentModelToJson(
  _PatientDocumentModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'patient': instance.patient,
  'document_type': instance.document_type,
  'document_type_display': instance.document_type_display,
  'file': instance.file,
  'file_url': instance.file_url,
  'description': instance.description,
  'uploaded_at': instance.uploaded_at,
};
