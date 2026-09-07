// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_slots_model.freezed.dart';
part 'available_slots_model.g.dart';

/// Doctor's free slots — mirrors backend JSON keys 1:1.
/// Live-verified via `GET /api/v1/doctors/3/available-slots/?date=2026-09-07`:
///
/// ```json
/// {
///   "doctor": {"id": 3, "name": "Rustam Keneev"},
///   "date": "2026-09-07",
///   "available_slots": [
///     {
///       "start": "2026-09-07T09:00:00",
///       "end": "2026-09-07T09:30:00",
///       "duration": 30,
///       "available": true
///     }
///   ]
/// }
/// ```
///
/// No booking UI in F3 (Home is a schedule view) — consumed from F5
/// (appointment creation) on.
@freezed
abstract class AvailableSlotsModel with _$AvailableSlotsModel {
  const factory AvailableSlotsModel({
    required Map<String, dynamic> doctor,
    required String date,
    required List<TimeSlotModel> available_slots,
  }) = _AvailableSlotsModel;

  factory AvailableSlotsModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableSlotsModelFromJson(json);
}

@freezed
abstract class TimeSlotModel with _$TimeSlotModel {
  const factory TimeSlotModel({
    required String start,
    required String end,
    required int duration,
    required bool available,
  }) = _TimeSlotModel;

  factory TimeSlotModel.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotModelFromJson(json);
}
