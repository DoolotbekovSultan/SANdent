import 'package:nexo/nexo_core.dart';

import '../entities/appointment_entity.dart';
import '../parameters/appointment_params.dart';

/// Appointment repository contract.
abstract interface class IAppointmentRepository {
  Future<PageChunk<AppointmentEntity, int>> getAppointments({
    required int page,
    String? search,
  });
  Future<AppointmentEntity> getAppointmentById(int id);
  Future<AppointmentEntity> createAppointment(CreateAppointmentParams params);
  Future<AppointmentEntity> updateAppointment(UpdateAppointmentParams params);
  Future<void> deleteAppointment(int id);
  Future<AppointmentEntity> cancelAppointment(int id, {String? note});
  Future<AppointmentEntity> completeAppointment(int id);
  Future<AppointmentEntity> noShowAppointment(int id);
  Future<AppointmentEntity> changeStatus(int id, String status);
}
