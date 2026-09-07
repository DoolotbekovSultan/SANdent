import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointments_report_entity.freezed.dart';

/// Appointments drill-down report (domain).
@freezed
abstract class AppointmentsReportEntity with _$AppointmentsReportEntity {
  const factory AppointmentsReportEntity({
    required String? startDate,
    required String? endDate,
    required int days,
    required int total,
    required List<Map<String, dynamic>> byStatus,
    required List<Map<String, dynamic>> byDoctor,
    required List<Map<String, dynamic>> byDay,
    required List<Map<String, dynamic>> byHour,
    required int completed,
    required int cancelled,
    required int noShow,
    required int scheduled,
    required int inProgress,
    required num completionRate,
    required num cancellationRate,
  }) = _AppointmentsReportEntity;
}
