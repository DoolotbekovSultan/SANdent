// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../appointment/data/models/appointment_model.dart';
import '../../../patient/data/models/patient_model.dart';

part 'patient_history_model.freezed.dart';
part 'patient_history_model.g.dart';

/// Patient visit history — mirrors backend JSON keys 1:1.
/// Live-verified via `GET /api/v1/patients/1/history/` (200, empty):
///
/// ```json
/// {
///   "patient": { "<Patient object>" },
///   "appointments": [],
///   "total": 0
/// }
/// ```
///
/// `appointments[]` items are full `Appointment` objects (shape swagger-only
/// until the create-500 is fixed). Owned by F4 (history tab lives here).
@freezed
abstract class PatientHistoryModel with _$PatientHistoryModel {
  const factory PatientHistoryModel({
    required PatientModel patient,
    required List<AppointmentModel> appointments,
    required int total,
  }) = _PatientHistoryModel;

  factory PatientHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$PatientHistoryModelFromJson(json);
}
