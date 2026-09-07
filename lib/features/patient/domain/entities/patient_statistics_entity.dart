import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_statistics_entity.freezed.dart';

/// Global patient statistics (domain).
@freezed
abstract class PatientStatisticsEntity with _$PatientStatisticsEntity {
  const factory PatientStatisticsEntity({
    required int total,
    required List<Map<String, dynamic>> byGender,
    required Map<String, dynamic> byAgeGroup,
    required int newThisMonth,
    required int newThisWeek,
    required int newToday,
    required int active,
    required int inactive,
  }) = _PatientStatisticsEntity;
}
