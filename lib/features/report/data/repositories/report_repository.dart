import 'package:injectable/injectable.dart';

import '../../domain/entities/appointments_report_entity.dart';
import '../../domain/entities/doctors_report_entity.dart';
import '../../domain/entities/financial_report_entity.dart';
import '../../domain/entities/materials_report_entity.dart';
import '../../domain/entities/patients_report_entity.dart';
import '../../domain/repositories/i_report_repository.dart';
import '../datasources/i_remote_report_data_source.dart';
import '../mappers/report_mapper.dart';

@LazySingleton(as: IReportRepository)
class ReportRepository implements IReportRepository {
  ReportRepository({required this._remoteDatasource});

  final IRemoteReportDataSource _remoteDatasource;

  @override
  Future<FinancialReportEntity> getFinancial() async {
    final model = await _remoteDatasource.getFinancial();
    return model.toDomain();
  }

  @override
  Future<DoctorsReportEntity> getDoctors() async {
    final model = await _remoteDatasource.getDoctors();
    return model.toDomain();
  }

  @override
  Future<PatientsReportEntity> getPatients() async {
    final model = await _remoteDatasource.getPatients();
    return model.toDomain();
  }

  @override
  Future<MaterialsReportEntity> getMaterials() async {
    final model = await _remoteDatasource.getMaterials();
    return model.toDomain();
  }

  @override
  Future<AppointmentsReportEntity> getAppointments() async {
    final model = await _remoteDatasource.getAppointments();
    return model.toDomain();
  }
}
