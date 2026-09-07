import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/appointment_entity.dart';
import '../entities/appointment_status.dart';
import '../parameters/appointment_params.dart';
import '../repositories/i_appointment_repository.dart';

/// Creates an appointment.
///
/// NOTE: the backend currently answers 500 to any `POST /appointments/`
/// (reported) — expect `Failure.http(internalServerError)` until fixed.
@injectable
class CreateAppointmentUseCase
    extends NexoUseCase<AppointmentEntity, CreateAppointmentParams> {
  // ignore: use_super_parameters
  CreateAppointmentUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAppointmentRepository _repository;

  @override
  Future<AppointmentEntity> execute(CreateAppointmentParams params) =>
      _repository.createAppointment(params);
}

/// Partial appointment update (`PATCH appointments/{id}/`).
@injectable
class UpdateAppointmentUseCase
    extends NexoUseCase<AppointmentEntity, UpdateAppointmentParams> {
  // ignore: use_super_parameters
  UpdateAppointmentUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAppointmentRepository _repository;

  @override
  Future<AppointmentEntity> execute(UpdateAppointmentParams params) =>
      _repository.updateAppointment(params);
}

/// Deletes an appointment (`DELETE appointments/{id}/` → 204).
@injectable
class DeleteAppointmentUseCase extends NexoUseCase<void, int> {
  // ignore: use_super_parameters
  DeleteAppointmentUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAppointmentRepository _repository;

  @override
  Future<void> execute(int params) => _repository.deleteAppointment(params);
}

/// Cancels an appointment (`POST appointments/{id}/cancel/`).
@injectable
class CancelAppointmentUseCase extends NexoUseCase<AppointmentEntity, int> {
  // ignore: use_super_parameters
  CancelAppointmentUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAppointmentRepository _repository;

  @override
  Future<AppointmentEntity> execute(int params) =>
      _repository.cancelAppointment(params);
}

/// Completes an appointment (`POST appointments/{id}/complete/`).
@injectable
class CompleteAppointmentUseCase extends NexoUseCase<AppointmentEntity, int> {
  // ignore: use_super_parameters
  CompleteAppointmentUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAppointmentRepository _repository;

  @override
  Future<AppointmentEntity> execute(int params) =>
      _repository.completeAppointment(params);
}

/// Marks a no-show (`POST appointments/{id}/no_show/`).
@injectable
class NoShowAppointmentUseCase extends NexoUseCase<AppointmentEntity, int> {
  // ignore: use_super_parameters
  NoShowAppointmentUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAppointmentRepository _repository;

  @override
  Future<AppointmentEntity> execute(int params) =>
      _repository.noShowAppointment(params);
}

/// Changes the status (`POST appointments/{id}/change_status/`).
/// [ChangeStatusParams] carries a validated [AppointmentStatus] value.
@injectable
class ChangeAppointmentStatusUseCase
    extends NexoUseCase<AppointmentEntity, ChangeStatusParams> {
  // ignore: use_super_parameters
  ChangeAppointmentStatusUseCase(
    NexoLogger logger, {
    required this._repository,
  }) : super(logger);

  final IAppointmentRepository _repository;

  @override
  Future<AppointmentEntity> execute(ChangeStatusParams params) =>
      _repository.changeStatus(params.id, params.status);
}

class ChangeStatusParams {
  const ChangeStatusParams({required this.id, required this.status});

  final int id;
  final String status;
}
