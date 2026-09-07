// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_model.freezed.dart';
part 'patient_model.g.dart';

/// Patient DTO — mirrors backend JSON keys 1:1 (snake_case), see style rule
/// in AGENTS.md. Live-verified via `GET /api/v1/patients/1/` (200):
///
/// ```json
/// {
///   "id": 1,
///   "first_name": "Тест",
///   "last_name": "Пациентов",
///   "middle_name": "",
///   "full_name": "Пациентов Тест",
///   "short_name": "Пациентов Т.",
///   "date_of_birth": "1990-01-15",
///   "age": 36,
///   "age_group": "young_adult",
///   "gender": "male",
///   "phone": "+996555000111",
///   "email": "",
///   "address": "",
///   "inn": "",
///   "snils": "",
///   "policy_number": "",
///   "allergies": "",
///   "chronic_diseases": "",
///   "notes": "",
///   "total_appointments": 0,
///   "completed_appointments": 0,
///   "cancelled_appointments": 0,
///   "last_appointment": null,
///   "documents": [],
///   "created_at": "2026-09-06T14:25:33+0300",
///   "updated_at": "2026-09-06T14:25:33+0300"
/// }
/// ```
///
/// Notes from live probing:
/// - `GET /patients/` returns a PAGED object `{count, next, previous,
///   results}`, NOT the bare array swagger claims — parsed via `parsePage`.
/// - `POST /patients/` and `PATCH /patients/{id}/` return an echo of the
///   sent fields only (no `id`, no counters) — the repository re-fetches
///   the full object after write.
/// - `documents` is decoded fully in F4 (patient-documents), raw maps here.
@freezed
abstract class PatientModel with _$PatientModel {
  const factory PatientModel({
    required int id,
    required String first_name,
    required String last_name,
    required String? middle_name,
    required String full_name,
    required String? short_name,
    required String date_of_birth,
    required int? age,
    required String? age_group,
    required String gender,
    required String phone,
    required String? email,
    required String? address,
    required String? inn,
    required String? snils,
    required String? policy_number,
    required String? allergies,
    required String? chronic_diseases,
    required String? notes,
    required int? total_appointments,
    required int? completed_appointments,
    required int? cancelled_appointments,
    required String? last_appointment,
    required List<Map<String, dynamic>>? documents,
    required String? created_at,
    required String? updated_at,
  }) = _PatientModel;

  factory PatientModel.fromJson(Map<String, dynamic> json) =>
      _$PatientModelFromJson(json);
}
