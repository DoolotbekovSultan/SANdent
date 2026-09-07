/// Create-record body for `POST /medical-records/`.
/// Required: `appointment` (id), `diagnosis`. Procedure/material item
/// shapes are best-effort per swagger (`{procedure, notes?}` /
/// `{material, quantity}`) — UNVERIFIED live, re-verify once appointments
/// are creatable.
class CreateMedicalRecordRequest {
  const CreateMedicalRecordRequest({
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
  final List<Map<String, dynamic>> procedures;
  final List<Map<String, dynamic>> materials;

  Map<String, dynamic> toJson() => {
    'appointment': appointmentId,
    'diagnosis': diagnosis,
    if (recommendations != null) 'recommendations': recommendations,
    if (comments != null) 'comments': comments,
    if (procedures.isNotEmpty) 'procedures': procedures,
    if (materials.isNotEmpty) 'materials': materials,
  };
}

/// Partial-update body for `PATCH /medical-records/{id}/`.
class UpdateMedicalRecordRequest {
  const UpdateMedicalRecordRequest({
    this.diagnosis,
    this.recommendations,
    this.comments,
  });

  final String? diagnosis;
  final String? recommendations;
  final String? comments;

  Map<String, dynamic> toJson() => {
    if (diagnosis != null) 'diagnosis': diagnosis,
    if (recommendations != null) 'recommendations': recommendations,
    if (comments != null) 'comments': comments,
  };
}
