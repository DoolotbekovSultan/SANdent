import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../entities/appointments_report_entity.dart';
import '../entities/doctors_report_entity.dart';
import '../entities/financial_report_entity.dart';
import '../entities/materials_report_entity.dart';
import '../entities/patients_report_entity.dart';
import '../repositories/i_report_repository.dart';

/// Drill-down report use cases (`GET /reports/<type>/`, director-only).
@injectable
class GetFinancialReportUseCase
    extends NexoUseCase<FinancialReportEntity, NoParams> {
  // ignore: use_super_parameters
  GetFinancialReportUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IReportRepository _repository;

  @override
  Future<FinancialReportEntity> execute(NoParams params) {
    return _repository.getFinancial();
  }
}

@injectable
class GetDoctorsReportUseCase
    extends NexoUseCase<DoctorsReportEntity, NoParams> {
  // ignore: use_super_parameters
  GetDoctorsReportUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IReportRepository _repository;

  @override
  Future<DoctorsReportEntity> execute(NoParams params) {
    return _repository.getDoctors();
  }
}

@injectable
class GetPatientsReportUseCase
    extends NexoUseCase<PatientsReportEntity, NoParams> {
  // ignore: use_super_parameters
  GetPatientsReportUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IReportRepository _repository;

  @override
  Future<PatientsReportEntity> execute(NoParams params) {
    return _repository.getPatients();
  }
}

@injectable
class GetMaterialsReportUseCase
    extends NexoUseCase<MaterialsReportEntity, NoParams> {
  // ignore: use_super_parameters
  GetMaterialsReportUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IReportRepository _repository;

  @override
  Future<MaterialsReportEntity> execute(NoParams params) {
    return _repository.getMaterials();
  }
}

@injectable
class GetAppointmentsReportUseCase
    extends NexoUseCase<AppointmentsReportEntity, NoParams> {
  // ignore: use_super_parameters
  GetAppointmentsReportUseCase(NexoLogger logger, {required this._repository})
    : super(logger);

  final IReportRepository _repository;

  @override
  Future<AppointmentsReportEntity> execute(NoParams params) {
    return _repository.getAppointments();
  }
}
