import '../models/appointments_report_model.dart';
import '../models/doctors_report_model.dart';
import '../models/financial_report_model.dart';
import '../models/materials_report_model.dart';
import '../models/patients_report_model.dart';
import '../../domain/entities/appointments_report_entity.dart';
import '../../domain/entities/doctors_report_entity.dart';
import '../../domain/entities/financial_report_entity.dart';
import '../../domain/entities/materials_report_entity.dart';
import '../../domain/entities/patients_report_entity.dart';

extension FinancialReportMapper on FinancialReportModel {
  FinancialReportEntity toDomain() => FinancialReportEntity(
    startDate: period.start_date,
    endDate: period.end_date,
    days: period.days,
    totalAppointments: total_appointments,
    totalRevenue: total_revenue,
    avgCheck: avg_check,
    materialCost: material_cost,
    profit: profit,
    revenueByProcedure: revenue_by_procedure ?? const [],
    revenueByDoctor: revenue_by_doctor ?? const [],
    materialUsage: material_usage ?? const [],
    dailyRevenue: daily_revenue ?? const [],
  );
}

extension DoctorStatMapper on DoctorStatModel {
  DoctorStatEntity toDomain() => DoctorStatEntity(
    doctorId: doctor_id,
    doctorName: doctor_name,
    totalAppointments: total_appointments,
    completed: completed,
    cancelled: cancelled,
    noShow: no_show,
    completionRate: completion_rate,
    uniquePatients: unique_patients,
    procedureCount: procedure_count,
    avgProceduresPerAppointment: avg_procedures_per_appointment,
  );
}

extension DoctorsReportMapper on DoctorsReportModel {
  DoctorsReportEntity toDomain() => DoctorsReportEntity(
    startDate: period.start_date,
    endDate: period.end_date,
    days: period.days,
    totalDoctors: total_doctors,
    doctorStats: doctor_stats?.map((e) => e.toDomain()).toList() ?? const [],
    topDoctor: top_doctor?.toDomain(),
  );
}

extension PatientsReportMapper on PatientsReportModel {
  PatientsReportEntity toDomain() => PatientsReportEntity(
    startDate: period.start_date,
    endDate: period.end_date,
    days: period.days,
    totalPatients: total_patients,
    newPatients: new_patients,
    activePatients: active_patients,
    repeatPatients: repeat_patients,
    byGender: by_gender ?? const [],
    byAgeGroup: by_age_group ?? const {},
    patientList: patient_list ?? const [],
  );
}

extension MaterialsReportMapper on MaterialsReportModel {
  MaterialsReportEntity toDomain() => MaterialsReportEntity(
    startDate: period.start_date,
    endDate: period.end_date,
    days: period.days,
    totalMaterialsUsed: total_materials_used,
    totalQuantity: total_quantity,
    uniqueMaterials: unique_materials,
    topMaterials: top_materials ?? const [],
    byDoctor: by_doctor ?? const [],
    materialDetails: material_details ?? const [],
  );
}

extension AppointmentsReportMapper on AppointmentsReportModel {
  AppointmentsReportEntity toDomain() => AppointmentsReportEntity(
    startDate: period.start_date,
    endDate: period.end_date,
    days: period.days,
    total: total,
    byStatus: by_status ?? const [],
    byDoctor: by_doctor ?? const [],
    byDay: by_day ?? const [],
    byHour: by_hour ?? const [],
    completed: completed,
    cancelled: cancelled,
    noShow: no_show,
    scheduled: scheduled,
    inProgress: in_progress,
    completionRate: completion_rate,
    cancellationRate: cancellation_rate,
  );
}
