import 'package:freezed_annotation/freezed_annotation.dart';

part 'patients_report_entity.freezed.dart';

/// Patients drill-down report (domain).
@freezed
abstract class PatientsReportEntity with _$PatientsReportEntity {
  const factory PatientsReportEntity({
    required String? startDate,
    required String? endDate,
    required int days,
    required int totalPatients,
    required int newPatients,
    required int activePatients,
    required int repeatPatients,
    required List<Map<String, dynamic>> byGender,
    required Map<String, dynamic> byAgeGroup,
    required List<Map<String, dynamic>> patientList,
  }) = _PatientsReportEntity;
}
