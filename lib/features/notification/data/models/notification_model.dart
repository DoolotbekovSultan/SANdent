// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../user/data/models/user_model.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

/// Notification DTO — mirrors backend JSON keys 1:1 (snake_case).
/// Shape from swagger `Notification` — NO live object available
/// (`GET /notifications/` returns an empty paged list; verified 200):
///
/// ```json
/// {
///   "id": 1,
///   "user": 5,
///   "user_detail": { "<User object>" },
///   "message": "Напоминание о приёме завтра в 10:00",
///   "notification_type": "reminder",
///   "type_display": "Напоминание",
///   "is_read": false,
///   "data": {"appointment_id": 7},
///   "created_at": "2026-09-06T15:00:00+0300"
/// }
/// ```
///
/// Live-verified: list is PAGED `{count,next,previous,results}` (admin 200).
/// `GET /notifications/statistics/` → 500 (backend bug, reported).
/// mark-read bodies per swagger `NotificationMarkRead` (`{notification_ids}`),
/// `mark-all-read` bodyless — both UNVERIFIED live (nothing to mark).
@freezed
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required int id,
    required int? user,
    required UserModel? user_detail,
    required String message,
    required String? notification_type,
    required String? type_display,
    required bool? is_read,
    required Map<String, dynamic>? data,
    required String? created_at,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
