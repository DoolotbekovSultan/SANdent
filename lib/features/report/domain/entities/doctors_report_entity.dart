import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctors_report_entity.freezed.dart';

/// Doctors drill-down report (domain).
@freezed
abstract class DoctorsReportEntity with _$DoctorsReportEntity {
  const factory DoctorsReportEntity({
    required String? startDate,
    required String? endDate,
    required int days,
    required int totalDoctors,
    required List<DoctorStatEntity> doctorStats,
    required DoctorStatEntity? topDoctor,
  }) = _DoctorsReportEntity;
}

@freezed
abstract class DoctorStatEntity with _$DoctorStatEntity {
  const factory DoctorStatEntity({
    required int doctorId,
    required String? doctorName,
    required int totalAppointments,
    required int completed,
    required int cancelled,
    required int noShow,
    required num completionRate,
    required int uniquePatients,
    required int procedureCount,
    required num avgProceduresPerAppointment,
  }) = _DoctorStatEntity;
}
