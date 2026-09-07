import 'package:nexo/nexo_core.dart';

import '../entities/notification_entity.dart';

/// Notification repository contract.
abstract interface class INotificationRepository {
  Future<PageChunk<NotificationEntity, int>> getNotifications({
    required int page,
  });
  Future<NotificationEntity> getNotificationById(int id);
  Future<void> markRead(List<int> ids);
  Future<void> markAllRead();
  Future<void> deleteNotification(int id);
}
