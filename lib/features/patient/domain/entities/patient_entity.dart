import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_entity.freezed.dart';

/// Patient (domain, idiomatic camelCase — mapped from [PatientModel]).
///
/// `gender` is the backend string (`male`/`female`).
/// `documents` stays raw here; fully decoded in F4 (patient-documents).
@freezed
abstract class PatientEntity with _$PatientEntity {
  const factory PatientEntity({
    required int id,
    required String firstName,
    required String lastName,
    required String? middleName,
    required String fullName,
    required String? shortName,
    required String dateOfBirth,
    required int? age,
    required String? ageGroup,
    required String gender,
    required String phone,
    required String? email,
    required String? address,
    required String? inn,
    required String? snils,
    required String? policyNumber,
    required String? allergies,
    required String? chronicDiseases,
    required String? notes,
    required int? totalAppointments,
    required int? completedAppointments,
    required int? cancelledAppointments,
    required String? lastAppointment,
    required List<Map<String, dynamic>>? documents,
    required String? createdAt,
    required String? updatedAt,
  }) = _PatientEntity;
}
