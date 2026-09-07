import '../models/appointments_report_model.dart';
import '../models/doctors_report_model.dart';
import '../models/financial_report_model.dart';
import '../models/materials_report_model.dart';
import '../models/patients_report_model.dart';

/// Drill-down reports API (base `.../api/v1/`).
///
/// Live-verified (all director-only 200; admin/doctor → 403):
/// `GET reports/financial/` → [FinancialReportModel],
/// `GET reports/doctors/` → [DoctorsReportModel],
/// `GET reports/patients/` → [PatientsReportModel],
/// `GET reports/materials/` → [MaterialsReportModel],
/// `GET reports/appointments/` → [AppointmentsReportModel].
/// (`GET reports/procedures/` → 500 backend bug — not exposed.)
abstract interface class IRemoteReportDataSource {
  Future<FinancialReportModel> getFinancial();
  Future<DoctorsReportModel> getDoctors();
  Future<PatientsReportModel> getPatients();
  Future<MaterialsReportModel> getMaterials();
  Future<AppointmentsReportModel> getAppointments();
}
