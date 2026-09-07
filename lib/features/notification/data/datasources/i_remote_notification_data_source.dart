import 'package:nexo/nexo_core.dart';

import '../models/notification_model.dart';

/// Notifications API (base `.../api/v1/`).
///
/// Live-verified (admin): `GET notifications/` PAGED (empty list, 200);
/// `GET notifications/statistics/` → 500 (backend bug, no method here).
/// Per-swagger (UNVERIFIED live — nothing to mark/delete yet):
/// `POST notifications/mark-read/` (`{notification_ids}`),
/// `POST notifications/mark-all-read/`, `PATCH|DELETE notifications/{id}/`.
abstract interface class IRemoteNotificationDataSource {
  Future<PageChunk<NotificationModel, int>> getNotifications({
    required int page,
  });
  Future<NotificationModel> getNotificationById(int id);
  Future<void> markRead(List<int> ids);
  Future<void> markAllRead();
  Future<void> deleteNotification(int id);
}
