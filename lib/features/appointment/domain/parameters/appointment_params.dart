import '../entities/appointment_status.dart';

/// Parameters for [CreateAppointmentUseCase].
class CreateAppointmentParams {
  const CreateAppointmentParams({
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

  static String? validateAll({
    required int? patientId,
    required int? doctorId,
    required DateTime? dateTime,
  }) {
    if (patientId == null) return 'Выберите пациента';
    if (doctorId == null) return 'Выберите врача';
    if (dateTime == null) return 'Выберите дату и время';
    return null;
  }
}

/// Parameters for [UpdateAppointmentUseCase] — all fields optional (PATCH).
class UpdateAppointmentParams {
  const UpdateAppointmentParams({
    required this.id,
    this.dateTime,
    this.duration,
    this.notes,
    this.status,
  });

  final int id;
  final DateTime? dateTime;
  final int? duration;
  final String? notes;
  final String? status;

  static String? validateStatus(String? value) {
    if (value == null) return null;
    if (!AppointmentStatus.values.contains(value)) {
      return 'Неизвестный статус';
    }
    return null;
  }
}
