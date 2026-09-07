import 'package:nexo/nexo_core.dart';

/// Parameters for [CreateMedicalRecordUseCase].
class CreateMedicalRecordParams {
  const CreateMedicalRecordParams({
    required this.appointmentId,
    required this.diagnosis,
    this.recommendations,
    this.comments,
    this.procedures = const [],
    this.materials = const [],
  });

  final int appointmentId;
  final String diagnosis;
  final String? recommendations;
  final String? comments;
  final List<RecordProcedureInput> procedures;
  final List<RecordMaterialInput> materials;

  static String? validateDiagnosis(String? value) =>
      NexoValidators.requiredField(fieldName: 'Диагноз')(value?.trim());
}

/// One procedure attachment input (`{procedure, notes?}` — unverified).
class RecordProcedureInput {
  const RecordProcedureInput({required this.procedureId, this.notes});

  final int procedureId;
  final String? notes;

  Map<String, dynamic> toJson() => {
    'procedure': procedureId,
    if (notes != null) 'notes': notes,
  };
}

/// One material attachment input (`{material, quantity}` — unverified).
class RecordMaterialInput {
  const RecordMaterialInput({required this.materialId, required this.quantity});

  final int materialId;
  final int quantity;

  Map<String, dynamic> toJson() => {
    'material': materialId,
    'quantity': quantity,
  };
}

/// Parameters for [UpdateMedicalRecordUseCase] (PATCH).
class UpdateMedicalRecordParams {
  const UpdateMedicalRecordParams({
    required this.id,
    this.diagnosis,
    this.recommendations,
    this.comments,
  });

  final int id;
  final String? diagnosis;
  final String? recommendations;
  final String? comments;
}
