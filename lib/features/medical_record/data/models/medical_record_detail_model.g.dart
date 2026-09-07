// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_record_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MedicalRecordDetailModel _$MedicalRecordDetailModelFromJson(
  Map<String, dynamic> json,
) => _MedicalRecordDetailModel(
  id: (json['id'] as num).toInt(),
  appointment: (json['appointment'] as num).toInt(),
  appointment_detail: json['appointment_detail'] == null
      ? null
      : AppointmentModel.fromJson(
          json['appointment_detail'] as Map<String, dynamic>,
        ),
  diagnosis: json['diagnosis'] as String,
  recommendations: json['recommendations'] as String?,
  comments: json['comments'] as String?,
  procedures: (json['procedures'] as List<dynamic>?)
      ?.map((e) => RecordProcedureModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  materials: (json['materials'] as List<dynamic>?)
      ?.map((e) => RecordMaterialModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  patient_id: (json['patient_id'] as num?)?.toInt(),
  patient_name: json['patient_name'] as String?,
  doctor_id: (json['doctor_id'] as num?)?.toInt(),
  doctor_name: json['doctor_name'] as String?,
  appointment_date: json['appointment_date'] as String?,
  has_procedures: json['has_procedures'] as bool?,
  has_materials: json['has_materials'] as bool?,
  created_at: json['created_at'] as String?,
  updated_at: json['updated_at'] as String?,
);

Map<String, dynamic> _$MedicalRecordDetailModelToJson(
  _MedicalRecordDetailModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'appointment': instance.appointment,
  'appointment_detail': instance.appointment_detail,
  'diagnosis': instance.diagnosis,
  'recommendations': instance.recommendations,
  'comments': instance.comments,
  'procedures': instance.procedures,
  'materials': instance.materials,
  'patient_id': instance.patient_id,
  'patient_name': instance.patient_name,
  'doctor_id': instance.doctor_id,
  'doctor_name': instance.doctor_name,
  'appointment_date': instance.appointment_date,
  'has_procedures': instance.has_procedures,
  'has_materials': instance.has_materials,
  'created_at': instance.created_at,
  'updated_at': instance.updated_at,
};

_RecordProcedureModel _$RecordProcedureModelFromJson(
  Map<String, dynamic> json,
) => _RecordProcedureModel(
  id: (json['id'] as num?)?.toInt(),
  medical_record: (json['medical_record'] as num?)?.toInt(),
  procedure: (json['procedure'] as num?)?.toInt(),
  procedure_detail: json['procedure_detail'] == null
      ? null
      : ProcedureModel.fromJson(
          json['procedure_detail'] as Map<String, dynamic>,
        ),
  procedure_name: json['procedure_name'] as String?,
  notes: json['notes'] as String?,
  created_at: json['created_at'] as String?,
);

Map<String, dynamic> _$RecordProcedureModelToJson(
  _RecordProcedureModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'medical_record': instance.medical_record,
  'procedure': instance.procedure,
  'procedure_detail': instance.procedure_detail,
  'procedure_name': instance.procedure_name,
  'notes': instance.notes,
  'created_at': instance.created_at,
};

_RecordMaterialModel _$RecordMaterialModelFromJson(Map<String, dynamic> json) =>
    _RecordMaterialModel(
      id: (json['id'] as num?)?.toInt(),
      medical_record: (json['medical_record'] as num?)?.toInt(),
      material: (json['material'] as num?)?.toInt(),
      material_detail: json['material_detail'] == null
          ? null
          : MaterialModel.fromJson(
              json['material_detail'] as Map<String, dynamic>,
            ),
      material_name: json['material_name'] as String?,
      material_unit: json['material_unit'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$RecordMaterialModelToJson(
  _RecordMaterialModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'medical_record': instance.medical_record,
  'material': instance.material,
  'material_detail': instance.material_detail,
  'material_name': instance.material_name,
  'material_unit': instance.material_unit,
  'quantity': instance.quantity,
  'created_at': instance.created_at,
};
