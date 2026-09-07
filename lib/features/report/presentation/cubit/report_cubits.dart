import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_errors.dart';

import '../../domain/entities/appointments_report_entity.dart';
import '../../domain/entities/doctors_report_entity.dart';
import '../../domain/entities/financial_report_entity.dart';
import '../../domain/entities/materials_report_entity.dart';
import '../../domain/entities/patients_report_entity.dart';
import '../../domain/usecases/report_usecases.dart';

/// Drill-down report cubits (one per `GET /reports/<type>/`, director-only).
/// State is `NexoAsyncState<T>` — use .load()/.retry()/.refresh().
@injectable
class FinancialReportCubit extends NexoAsyncCubit<FinancialReportEntity> {
  FinancialReportCubit({required this._useCase});

  final GetFinancialReportUseCase _useCase;

  @override
  Future<Result<FinancialReportEntity>> fetch() =>
      _useCase(const NoParams());
}

@injectable
class DoctorsReportCubit extends NexoAsyncCubit<DoctorsReportEntity> {
  DoctorsReportCubit({required this._useCase});

  final GetDoctorsReportUseCase _useCase;

  @override
  Future<Result<DoctorsReportEntity>> fetch() => _useCase(const NoParams());
}

@injectable
class PatientsReportCubit extends NexoAsyncCubit<PatientsReportEntity> {
  PatientsReportCubit({required this._useCase});

  final GetPatientsReportUseCase _useCase;

  @override
  Future<Result<PatientsReportEntity>> fetch() => _useCase(const NoParams());
}

@injectable
class MaterialsReportCubit extends NexoAsyncCubit<MaterialsReportEntity> {
  MaterialsReportCubit({required this._useCase});

  final GetMaterialsReportUseCase _useCase;

  @override
  Future<Result<MaterialsReportEntity>> fetch() => _useCase(const NoParams());
}

@injectable
class AppointmentsReportCubit
    extends NexoAsyncCubit<AppointmentsReportEntity> {
  AppointmentsReportCubit({required this._useCase});

  final GetAppointmentsReportUseCase _useCase;

  @override
  Future<Result<AppointmentsReportEntity>> fetch() =>
      _useCase(const NoParams());
}
