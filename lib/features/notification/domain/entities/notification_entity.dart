import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../user/domain/entities/user_entity.dart';

part 'notification_entity.freezed.dart';

/// Notification (domain).
@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required int id,
    required int? userId,
    required UserEntity? user,
    required String message,
    required String? notificationType,
    required String? typeDisplay,
    required bool? isRead,
    required Map<String, dynamic>? data,
    required String? createdAt,
  }) = _NotificationEntity;
}

/// Backend notification types (`Notification.notification_type`).
abstract final class NotificationType {
  static const appointment = 'appointment';
  static const reminder = 'reminder';
  static const system = 'system';
  static const info = 'info';
  static const warning = 'warning';

  static const values = [appointment, reminder, system, info, warning];
}
