import 'package:injectable/injectable.dart';

import '../../../../core/config.dart';
import '../models/appointments_report_model.dart';
import '../models/doctors_report_model.dart';
import '../models/financial_report_model.dart';
import '../models/materials_report_model.dart';
import '../models/patients_report_model.dart';
import '../models/report_period_model.dart';
import 'i_remote_report_data_source.dart';

const _mockPeriod = ReportPeriodModel(
  start_date: '2026-08-08',
  end_date: '2026-09-07',
  days: 30,
);

/// Offline/mock drill-down reports backend.
@LazySingleton(as: IRemoteReportDataSource, env: [AppEnvironment.mock])
class MockReportRemoteDataSource implements IRemoteReportDataSource {
  @override
  Future<FinancialReportModel> getFinancial() async =>
      const FinancialReportModel(
        period: _mockPeriod,
        total_appointments: 18,
        total_revenue: 45000,
        avg_check: 2500,
        material_cost: 8000,
        profit: 37000,
        revenue_by_procedure: null,
        revenue_by_doctor: null,
        material_usage: null,
        daily_revenue: null,
      );

  @override
  Future<DoctorsReportModel> getDoctors() async => const DoctorsReportModel(
    period: _mockPeriod,
    total_doctors: 4,
    doctor_stats: [
      DoctorStatModel(
        doctor_id: 5,
        doctor_name: 'Иван Петров',
        total_appointments: 10,
        completed: 8,
        cancelled: 1,
        no_show: 1,
        completion_rate: 80,
        unique_patients: 9,
        procedure_count: 12,
        avg_procedures_per_appointment: 1.2,
      ),
    ],
    top_doctor: DoctorStatModel(
      doctor_id: 5,
      doctor_name: 'Иван Петров',
      total_appointments: 10,
      completed: 8,
      cancelled: 1,
      no_show: 1,
      completion_rate: 80,
      unique_patients: 9,
      procedure_count: 12,
      avg_procedures_per_appointment: 1.2,
    ),
  );

  @override
  Future<PatientsReportModel> getPatients() async =>
      const PatientsReportModel(
        period: _mockPeriod,
        total_patients: 120,
        new_patients: 20,
        active_patients: 95,
        repeat_patients: 60,
        by_gender: null,
        by_age_group: {'0-18': 10, '19-30': 30, '31-45': 40, '46-60': 25, '60+': 15},
        patient_list: null,
      );

  @override
  Future<MaterialsReportModel> getMaterials() async =>
      const MaterialsReportModel(
        period: _mockPeriod,
        total_materials_used: 45,
        total_quantity: 120,
        unique_materials: 12,
        top_materials: null,
        by_doctor: null,
        material_details: null,
      );

  @override
  Future<AppointmentsReportModel> getAppointments() async =>
      const AppointmentsReportModel(
        period: _mockPeriod,
        total: 60,
        by_status: null,
        by_doctor: null,
        by_day: null,
        by_hour: null,
        completed: 40,
        cancelled: 8,
        no_show: 4,
        scheduled: 6,
        in_progress: 2,
        completion_rate: 66.6,
        cancellation_rate: 13.3,
      );
}
