import 'package:nexo/nexo_core.dart';

import '../models/appointment_model.dart';
import '../models/available_slots_model.dart';

/// Appointment API over the authenticated client (base `.../api/v1/`).
///
/// Live-verified: `GET appointments/` (paged `{count,next,previous,results}`,
/// params `page`/`search`/`ordering`); `DELETE appointments/{id}/` → 204;
/// `GET doctors/{id}/available-slots/?date=` (see [AvailableSlotsModel]);
/// `GET appointments/999/` → 404 `{"detail":"No Appointment matches..."}`.
///
/// NOT verifiable (no appointment obtainable — every `POST /appointments/`
/// returns backend 500, reported): create/update/detail shapes, `cancel/`,
/// `complete/`, `no_show/`, `change_status/`, `history/`. Implemented per
/// swagger and marked accordingly; re-verify once the backend is fixed.
/// `GET appointments/statistics/` → 404 (in swagger but absent on server).
/// `GET doctors/{id}/schedule/` → 403 for the admin role.
abstract interface class IRemoteAppointmentDataSource {
  Future<PageChunk<AppointmentModel, int>> getAppointments({
    required int page,
    String? search,
  });
  Future<AppointmentModel> getAppointmentById(int id);
  Future<AppointmentModel> createAppointment(Map<String, dynamic> body);
  Future<AppointmentModel> updateAppointment(int id, Map<String, dynamic> body);
  Future<void> deleteAppointment(int id);
  Future<AppointmentModel> cancelAppointment(int id, {String? note});
  Future<AppointmentModel> completeAppointment(int id);
  Future<AppointmentModel> noShowAppointment(int id);
  Future<AppointmentModel> changeStatus(int id, String status);
  Future<AvailableSlotsModel> getAvailableSlots({
    required int doctorId,
    required String date,
  });
}
