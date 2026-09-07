// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// User DTO — mirrors backend JSON keys 1:1 (snake_case).
/// Live-verified via `GET /api/v1/users/5/` (200):
///
/// ```json
/// {
///   "id": 5,
///   "username": "test_doctor",
///   "email": "",
///   "first_name": "",
///   "last_name": "",
///   "full_name": "",
///   "role": "doctor",
///   "role_display": "Врач",
///   "phone": "",
///   "clinic": null,
///   "clinic_detail": null,
///   "is_active": true,
///   "fcm_token": null,
///   "device_id": null,
///   "last_login": null,
///   "date_joined": "2026-09-06T14:20:00+0300",
///   "created_at": "2026-09-06T14:20:00+0300",
///   "updated_at": "2026-09-06T14:20:00+0300"
/// }
/// ```
///
/// Notes (verified live, probes cleaned):
/// - `GET /users/` is PAGED (swagger examples suggest arrays elsewhere);
///   `GET /users/doctors/` is a bare array (3 entries).
/// - `POST /users/` → 201 echo without `id`; `PATCH` → 200 echo of sent
///   fields; `DELETE` → 204. `PATCH /me/` returns the FULL object.
/// - `POST /users/{id}/set_clinic/` with `{"clinic_id": N}` works (200).
/// - No avatar/specialization fields on the backend (cut from UI).
/// - `clinic_detail` stays a raw map here; canonical `Clinic` lands if/when
///   the clinics list is non-empty (currently 0 clinics on server).
@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String username,
    required String? email,
    required String? first_name,
    required String? last_name,
    required String? full_name,
    required String? role,
    required String? role_display,
    required String? phone,
    required int? clinic,
    required Map<String, dynamic>? clinic_detail,
    required bool? is_active,
    required String? fcm_token,
    required String? device_id,
    required String? last_login,
    required String? date_joined,
    required String? created_at,
    required String? updated_at,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
