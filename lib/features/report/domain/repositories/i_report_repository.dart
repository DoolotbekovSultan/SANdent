import '../entities/appointments_report_entity.dart';
import '../entities/doctors_report_entity.dart';
import '../entities/financial_report_entity.dart';
import '../entities/materials_report_entity.dart';
import '../entities/patients_report_entity.dart';

abstract interface class IReportRepository {
  Future<FinancialReportEntity> getFinancial();
  Future<DoctorsReportEntity> getDoctors();
  Future<PatientsReportEntity> getPatients();
  Future<MaterialsReportEntity> getMaterials();
  Future<AppointmentsReportEntity> getAppointments();
}
