import '../models/patient_model.dart';
import '../models/patient_statistics_model.dart';
import '../models/patient_stats_model.dart';
import '../../domain/entities/patient_entity.dart';
import '../../domain/entities/patient_statistics_entity.dart';
import '../../domain/entities/patient_stats_entity.dart';

extension PatientMapper on PatientModel {
  PatientEntity toDomain() => PatientEntity(
    id: id,
    firstName: first_name,
    lastName: last_name,
    middleName: middle_name,
    fullName: full_name,
    shortName: short_name,
    dateOfBirth: date_of_birth,
    age: age,
    ageGroup: age_group,
    gender: gender,
    phone: phone,
    email: email,
    address: address,
    inn: inn,
    snils: snils,
    policyNumber: policy_number,
    allergies: allergies,
    chronicDiseases: chronic_diseases,
    notes: notes,
    totalAppointments: total_appointments,
    completedAppointments: completed_appointments,
    cancelledAppointments: cancelled_appointments,
    lastAppointment: last_appointment,
    documents: documents,
    createdAt: created_at,
    updatedAt: updated_at,
  );
}

extension PatientListMapper on List<PatientModel> {
  List<PatientEntity> toDomain() => map((e) => e.toDomain()).toList();
}

extension PatientStatisticsMapper on PatientStatisticsModel {
  PatientStatisticsEntity toDomain() => PatientStatisticsEntity(
    total: total,
    byGender: by_gender ?? const [],
    byAgeGroup: by_age_group ?? const {},
    newThisMonth: new_this_month,
    newThisWeek: new_this_week,
    newToday: new_today,
    active: active,
    inactive: inactive,
  );
}

extension PatientStatsMapper on PatientStatsModel {
  PatientStatsEntity toDomain() => PatientStatsEntity(
    totalAppointments: total_appointments,
    completed: completed,
    cancelled: cancelled,
    noShow: no_show,
    lastVisit: last_visit,
    firstVisit: first_visit,
    avgGapDays: avg_gap_days,
  );
}
