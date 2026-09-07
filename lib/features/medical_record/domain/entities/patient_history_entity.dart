import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../appointment/domain/entities/appointment_entity.dart';
import '../../../patient/domain/entities/patient_entity.dart';

part 'patient_history_entity.freezed.dart';

/// Patient visit history (domain).
@freezed
abstract class PatientHistoryEntity with _$PatientHistoryEntity {
  const factory PatientHistoryEntity({
    required PatientEntity patient,
    required List<AppointmentEntity> appointments,
    required int total,
  }) = _PatientHistoryEntity;
}
