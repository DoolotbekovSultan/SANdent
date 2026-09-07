import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/appointment_entity.dart';
import '../repositories/i_appointment_repository.dart';

/// Page parameters for the appointments list.
class AppointmentsPageParams {
  const AppointmentsPageParams({this.page = 1, this.search});

  final int page;
  final String? search;
}

/// Paged appointments (`GET appointments/`, ordered by `date_time`).
@injectable
class GetAppointmentsUseCase
    extends
        NexoUseCase<PageChunk<AppointmentEntity, int>, AppointmentsPageParams> {
  // ignore: use_super_parameters
  GetAppointmentsUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAppointmentRepository _repository;

  @override
  Future<PageChunk<AppointmentEntity, int>> execute(
    AppointmentsPageParams params,
  ) => _repository.getAppointments(page: params.page, search: params.search);
}

/// Appointment detail (`GET appointments/{id}/`).
@injectable
class GetAppointmentByIdUseCase extends NexoUseCase<AppointmentEntity, int> {
  // ignore: use_super_parameters
  GetAppointmentByIdUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IAppointmentRepository _repository;

  @override
  Future<AppointmentEntity> execute(int params) =>
      _repository.getAppointmentById(params);
}
