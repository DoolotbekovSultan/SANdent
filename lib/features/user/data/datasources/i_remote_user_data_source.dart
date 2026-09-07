import 'package:nexo/nexo_core.dart';

import '../models/stats_model.dart';
import '../models/user_model.dart';

/// User/staff API (base `.../api/v1/`). All paths live-verified (admin).
///
/// - `GET users/` PAGED; `GET users/doctors/` bare array; `GET users/{id}/`.
/// - `POST users/` (UserCreate: username/password/password2/role/...) → 201
///   echo; `PATCH` → 200 echo; `DELETE` → 204.
/// - `POST users/{id}/set_clinic/` with `{"clinic_id"}` → 200 (full user).
/// - `GET clinics/` PAGED but empty (0 clinics on server).
/// - `GET stats/` → [StatsModel] (admin/director 200; doctor → 403).
abstract interface class IRemoteUserDataSource {
  Future<PageChunk<UserModel, int>> getUsers({
    required int page,
    String? search,
  });
  Future<List<UserModel>> getDoctors();
  Future<UserModel> getUserById(int id);
  Future<Map<String, dynamic>> createUser(Map<String, dynamic> body);
  Future<void> updateUser(int id, Map<String, dynamic> body);
  Future<void> deleteUser(int id);
  Future<UserModel> setClinic({required int userId, required int clinicId});

  /// Current user (`GET /me/` → full object; `PATCH /me/` → full object).
  /// Canonical `User` type reused — no duplicate entity (F10 lives here).
  Future<UserModel> getMe();
  Future<UserModel> updateMe(Map<String, dynamic> body);

  /// `POST /me/change-password/` — NEVER probed live (lockout risk);
  /// implemented per swagger `ChangePassword` schema.
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  });

  Future<StatsModel> getStats();
}
