import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../../../core/config.dart';
import '../models/notification_model.dart';
import 'i_remote_notification_data_source.dart';

/// Offline/mock notifications backend.
@LazySingleton(as: IRemoteNotificationDataSource, env: [AppEnvironment.mock])
class MockNotificationRemoteDataSource
    implements IRemoteNotificationDataSource {
  static const _items = [
    NotificationModel(
      id: 1,
      user: 5,
      user_detail: null,
      message: 'Напоминание о приёме завтра в 10:00',
      notification_type: 'reminder',
      type_display: 'Напоминание',
      is_read: false,
      data: null,
      created_at: null,
    ),
  ];

  @override
  Future<PageChunk<NotificationModel, int>> getNotifications({
    required int page,
  }) async =>
      const PageChunk(items: _items, nextCursor: null, hasMore: false);

  @override
  Future<NotificationModel> getNotificationById(int id) async =>
      _items.firstWhere(
        (n) => n.id == id,
        orElse: () => throw StateError('No mock notification $id'),
      );

  @override
  Future<void> markRead(List<int> ids) async {}

  @override
  Future<void> markAllRead() async {}

  @override
  Future<void> deleteNotification(int id) async {}
}
