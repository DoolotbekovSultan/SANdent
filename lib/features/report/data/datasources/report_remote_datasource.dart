import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';

import '../../../../core/config.dart';
import '../models/appointments_report_model.dart';
import '../models/doctors_report_model.dart';
import '../models/financial_report_model.dart';
import '../models/materials_report_model.dart';
import '../models/patients_report_model.dart';
import 'i_remote_report_data_source.dart';

/// Real drill-down reports API implementation (authenticated [DioClient]).
@LazySingleton(as: IRemoteReportDataSource, env: [AppEnvironment.prod])
class ReportRemoteDataSource extends BaseRemoteDataSource
    implements IRemoteReportDataSource {
  ReportRemoteDataSource({
    required DioClient client,
    required NexoLogger logger,
  }) : super(client, logger: logger);

  Map<String, dynamic> _object(dynamic data, String endpoint) {
    if (data is Map<String, dynamic>) return data;
    if (data is Map) return Map<String, dynamic>.from(data);
    throw StateError('Expected a JSON object from $endpoint');
  }

  @override
  Future<FinancialReportModel> getFinancial() async {
    final response = await get('reports/financial/');
    return FinancialReportModel.fromJson(_object(response.data, 'reports/financial/'));
  }

  @override
  Future<DoctorsReportModel> getDoctors() async {
    final response = await get('reports/doctors/');
    return DoctorsReportModel.fromJson(_object(response.data, 'reports/doctors/'));
  }

  @override
  Future<PatientsReportModel> getPatients() async {
    final response = await get('reports/patients/');
    return PatientsReportModel.fromJson(_object(response.data, 'reports/patients/'));
  }

  @override
  Future<MaterialsReportModel> getMaterials() async {
    final response = await get('reports/materials/');
    return MaterialsReportModel.fromJson(_object(response.data, 'reports/materials/'));
  }

  @override
  Future<AppointmentsReportModel> getAppointments() async {
    final response = await get('reports/appointments/');
    return AppointmentsReportModel.fromJson(
      _object(response.data, 'reports/appointments/'),
    );
  }
}
