import '../../../user/data/mappers/user_mapper.dart';
import '../models/notification_model.dart';
import '../../domain/entities/notification_entity.dart';

extension NotificationMapper on NotificationModel {
  NotificationEntity toDomain() => NotificationEntity(
    id: id,
    userId: user,
    user: user_detail?.toDomain(),
    message: message,
    notificationType: notification_type,
    typeDisplay: type_display,
    isRead: is_read,
    data: data,
    createdAt: created_at,
  );
}

extension NotificationListMapper on List<NotificationModel> {
  List<NotificationEntity> toDomain() => map((e) => e.toDomain()).toList();
}
