import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/report/data/datasources/i_remote_report_data_source.dart';
import 'package:san_dent/features/report/data/mappers/report_mapper.dart';
import 'package:san_dent/features/report/data/models/appointments_report_model.dart';
import 'package:san_dent/features/report/data/models/doctors_report_model.dart';
import 'package:san_dent/features/report/data/models/financial_report_model.dart';
import 'package:san_dent/features/report/data/models/materials_report_model.dart';
import 'package:san_dent/features/report/data/models/patients_report_model.dart';
import 'package:san_dent/features/report/data/repositories/report_repository.dart';
import 'package:san_dent/features/report/domain/usecases/report_usecases.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

const _period = <String, dynamic>{
  'start_date': '2026-08-08T01:53:04.718967+00:00',
  'end_date': '2026-09-07T01:53:04.718967+00:00',
  'days': 30,
};

/// Live `GET /reports/financial/` (director, 200).
const _financialJson = <String, dynamic>{
  'period': _period,
  'total_appointments': 0,
  'total_revenue': 0.0,
  'avg_check': 0.0,
  'material_cost': 0,
  'profit': 0.0,
  'revenue_by_procedure': [],
  'revenue_by_doctor': [],
  'material_usage': [],
  'daily_revenue': [],
};

/// Live `GET /reports/doctors/` (director, 200; one stat shown).
const _doctorsJson = <String, dynamic>{
  'period': _period,
  'total_doctors': 4,
  'doctor_stats': [
    {
      'doctor_id': 5,
      'doctor_name': '',
      'total_appointments': 0,
      'completed': 0,
      'cancelled': 0,
      'no_show': 0,
      'completion_rate': 0,
      'unique_patients': 0,
      'procedure_count': 0,
      'avg_procedures_per_appointment': 0,
    },
  ],
  'top_doctor': {
    'doctor_id': 5,
    'doctor_name': '',
    'total_appointments': 0,
    'completed': 0,
    'cancelled': 0,
    'no_show': 0,
    'completion_rate': 0,
    'unique_patients': 0,
    'procedure_count': 0,
    'avg_procedures_per_appointment': 0,
  },
};

/// Live `GET /reports/patients/` (director, 200).
const _patientsJson = <String, dynamic>{
  'period': _period,
  'total_patients': 0,
  'new_patients': 0,
  'active_patients': 0,
  'repeat_patients': 0,
  'by_gender': [],
  'by_age_group': {'0-18': 0, '19-30': 0, '31-45': 0, '46-60': 0, '60+': 0},
  'patient_list': [],
};

/// Live `GET /reports/materials/` (director, 200).
const _materialsJson = <String, dynamic>{
  'period': _period,
  'total_materials_used': 0,
  'total_quantity': 0,
  'unique_materials': 0,
  'top_materials': [],
  'by_doctor': [],
  'material_details': [],
};

/// Live `GET /reports/appointments/` (director, 200).
const _appointmentsJson = <String, dynamic>{
  'period': _period,
  'total': 0,
  'by_status': [],
  'by_doctor': [],
  'by_day': [],
  'by_hour': [],
  'completed': 0,
  'cancelled': 0,
  'no_show': 0,
  'scheduled': 0,
  'in_progress': 0,
  'completion_rate': 0,
  'cancellation_rate': 0,
};

class FakeRemote implements IRemoteReportDataSource {
  @override
  Future<FinancialReportModel> getFinancial() async =>
      FinancialReportModel.fromJson(_financialJson);

  @override
  Future<DoctorsReportModel> getDoctors() async =>
      DoctorsReportModel.fromJson(_doctorsJson);

  @override
  Future<PatientsReportModel> getPatients() async =>
      PatientsReportModel.fromJson(_patientsJson);

  @override
  Future<MaterialsReportModel> getMaterials() async =>
      MaterialsReportModel.fromJson(_materialsJson);

  @override
  Future<AppointmentsReportModel> getAppointments() async =>
      AppointmentsReportModel.fromJson(_appointmentsJson);
}

void main() {
  test('FinancialReportMapper maps scalars and empties', () {
    final entity = FinancialReportModel.fromJson(_financialJson).toDomain();

    expect(entity.days, 30);
    expect(entity.totalAppointments, 0);
    expect(entity.totalRevenue, 0.0);
    expect(entity.revenueByProcedure, isEmpty);
    expect(entity.dailyRevenue, isEmpty);
  });

  test('DoctorsReportMapper maps stats with known shape', () {
    final entity = DoctorsReportModel.fromJson(_doctorsJson).toDomain();

    expect(entity.totalDoctors, 4);
    expect(entity.doctorStats, hasLength(1));
    expect(entity.doctorStats.first.doctorId, 5);
    expect(entity.topDoctor?.doctorId, 5);
  });

  test('PatientsReportMapper maps counters and age groups', () {
    final entity = PatientsReportModel.fromJson(_patientsJson).toDomain();

    expect(entity.totalPatients, 0);
    expect(entity.byAgeGroup['60+'], 0);
    expect(entity.patientList, isEmpty);
  });

  test('MaterialsReportMapper maps counters', () {
    final entity = MaterialsReportModel.fromJson(_materialsJson).toDomain();

    expect(entity.uniqueMaterials, 0);
    expect(entity.materialDetails, isEmpty);
  });

  test('AppointmentsReportMapper maps statuses and rates', () {
    final entity = AppointmentsReportModel.fromJson(
      _appointmentsJson,
    ).toDomain();

    expect(entity.total, 0);
    expect(entity.completionRate, 0);
    expect(entity.byStatus, isEmpty);
  });

  test('Report use cases return entities', () async {
    final repository = ReportRepository(remoteDatasource: FakeRemote());

    final financial =
        await GetFinancialReportUseCase(_logger(), repository: repository)(
          const NoParams(),
        );
    expect(financial.dataOrThrow().days, 30);

    final doctors =
        await GetDoctorsReportUseCase(_logger(), repository: repository)(
          const NoParams(),
        );
    expect(doctors.dataOrThrow().totalDoctors, 4);

    final patients =
        await GetPatientsReportUseCase(_logger(), repository: repository)(
          const NoParams(),
        );
    expect(patients.dataOrThrow().totalPatients, 0);

    final materials =
        await GetMaterialsReportUseCase(_logger(), repository: repository)(
          const NoParams(),
        );
    expect(materials.dataOrThrow().uniqueMaterials, 0);

    final appointments =
        await GetAppointmentsReportUseCase(_logger(), repository: repository)(
          const NoParams(),
        );
    expect(appointments.dataOrThrow().total, 0);
  });
}
