/// Create-appointment body for `POST /appointments/`.
/// Required: `patient` (id), `doctor` (id), `date_time` (ISO).
class CreateAppointmentRequest {
  const CreateAppointmentRequest({
    required this.patientId,
    required this.doctorId,
    this.clinicId,
    required this.dateTime,
    this.duration,
    this.notes,
  });

  final int patientId;
  final int doctorId;
  final int? clinicId;
  final DateTime dateTime;
  final int? duration;
  final String? notes;

  Map<String, dynamic> toJson() => {
    'patient': patientId,
    'doctor': doctorId,
    if (clinicId != null) 'clinic': clinicId,
    'date_time': dateTime.toIso8601String(),
    if (duration != null) 'duration': duration,
    if (notes != null) 'notes': notes,
  };
}

/// Partial-update body for `PATCH /appointments/{id}/`.
class UpdateAppointmentRequest {
  const UpdateAppointmentRequest({
    this.dateTime,
    this.duration,
    this.notes,
    this.status,
    this.clinicId,
  });

  final DateTime? dateTime;
  final int? duration;
  final String? notes;
  final String? status;
  final int? clinicId;

  Map<String, dynamic> toJson() => {
    if (dateTime != null) 'date_time': dateTime!.toIso8601String(),
    if (duration != null) 'duration': duration,
    if (notes != null) 'notes': notes,
    if (status != null) 'status': status,
    if (clinicId != null) 'clinic': clinicId,
  };
}
