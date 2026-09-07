import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../domain/entities/appointment_entity.dart';
import '../../domain/parameters/appointment_params.dart';
import '../../domain/repositories/i_appointment_repository.dart';
import '../datasources/i_remote_appointment_data_source.dart';
import '../mappers/appointment_mapper.dart';
import '../models/requests/appointment_requests.dart';

@LazySingleton(as: IAppointmentRepository)
class AppointmentRepository implements IAppointmentRepository {
  AppointmentRepository({required this._remoteDatasource});

  final IRemoteAppointmentDataSource _remoteDatasource;

  @override
  Future<PageChunk<AppointmentEntity, int>> getAppointments({
    required int page,
    String? search,
  }) async {
    final chunk = await _remoteDatasource.getAppointments(
      page: page,
      search: search,
    );
    return PageChunk<AppointmentEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<AppointmentEntity> getAppointmentById(int id) async {
    final model = await _remoteDatasource.getAppointmentById(id);
    return model.toDomain();
  }

  @override
  Future<AppointmentEntity> createAppointment(
    CreateAppointmentParams params,
  ) async {
    final model = await _remoteDatasource.createAppointment(
      CreateAppointmentRequest(
        patientId: params.patientId,
        doctorId: params.doctorId,
        clinicId: params.clinicId,
        dateTime: params.dateTime,
        duration: params.duration,
        notes: params.notes,
      ).toJson(),
    );
    return model.toDomain();
  }

  @override
  Future<AppointmentEntity> updateAppointment(
    UpdateAppointmentParams params,
  ) async {
    final model = await _remoteDatasource.updateAppointment(
      params.id,
      UpdateAppointmentRequest(
        dateTime: params.dateTime,
        duration: params.duration,
        notes: params.notes,
        status: params.status,
      ).toJson(),
    );
    return model.toDomain();
  }

  @override
  Future<void> deleteAppointment(int id) =>
      _remoteDatasource.deleteAppointment(id);

  @override
  Future<AppointmentEntity> cancelAppointment(int id, {String? note}) async {
    final model = await _remoteDatasource.cancelAppointment(id, note: note);
    return model.toDomain();
  }

  @override
  Future<AppointmentEntity> completeAppointment(int id) async {
    final model = await _remoteDatasource.completeAppointment(id);
    return model.toDomain();
  }

  @override
  Future<AppointmentEntity> noShowAppointment(int id) async {
    final model = await _remoteDatasource.noShowAppointment(id);
    return model.toDomain();
  }

  @override
  Future<AppointmentEntity> changeStatus(int id, String status) async {
    final model = await _remoteDatasource.changeStatus(id, status);
    return model.toDomain();
  }
}
