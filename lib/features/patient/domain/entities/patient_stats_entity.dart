import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_stats_entity.freezed.dart';

/// Per-patient visit stats (domain).
@freezed
abstract class PatientStatsEntity with _$PatientStatsEntity {
  const factory PatientStatsEntity({
    required int totalAppointments,
    required int completed,
    required int cancelled,
    required int noShow,
    required String? lastVisit,
    required String? firstVisit,
    required num? avgGapDays,
  }) = _PatientStatsEntity;
}
