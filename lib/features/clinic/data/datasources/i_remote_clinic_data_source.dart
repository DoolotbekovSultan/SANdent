import 'package:nexo/nexo_core.dart';

import '../models/clinic_model.dart';

/// Clinic API (base `.../api/v1/`). All paths live-verified (director).
///
/// - `GET clinics/` PAGED (empty list on server — 0 clinics).
/// - `GET clinics/{id}/` → full object; `POST` → 201 full object (not echo);
///   `PATCH` → 200; `DELETE` → 204.
/// - Admin+director can CRUD; doctor → 403.
abstract interface class IRemoteClinicDataSource {
  Future<PageChunk<ClinicModel, int>> getClinics({required int page});
  Future<ClinicModel> getClinicById(int id);
  Future<ClinicModel> createClinic(Map<String, dynamic> body);
  Future<ClinicModel> updateClinic(int id, Map<String, dynamic> body);
  Future<void> deleteClinic(int id);
}
