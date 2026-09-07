import 'package:flutter_test/flutter_test.dart';
import 'package:nexo/nexo_core.dart';
import 'package:nexo/nexo_logger.dart';
import 'package:nexo/nexo_testing.dart';
import 'package:talker/talker.dart';

import 'package:san_dent/features/notification/data/datasources/i_remote_notification_data_source.dart';
import 'package:san_dent/features/notification/data/mappers/notification_mapper.dart';
import 'package:san_dent/features/notification/data/models/notification_model.dart';
import 'package:san_dent/features/notification/data/repositories/notification_repository.dart';
import 'package:san_dent/features/notification/domain/usecases/notification_usecases.dart';

NexoLogger _logger() => TalkerLoggerAdapter(Talker());

/// Swagger-shaped object (no live object — list is empty on server).
const _notifJson = <String, dynamic>{
  'id': 9,
  'user': 5,
  'user_detail': null,
  'message': 'Напоминание о приёме',
  'notification_type': 'reminder',
  'type_display': 'Напоминание',
  'is_read': false,
  'data': {'appointment_id': 7},
  'created_at': '2026-09-06T15:00:00+0300',
};

class FakeRemote implements IRemoteNotificationDataSource {
  final List<NotificationModel> items = [
    NotificationModel.fromJson(_notifJson),
  ];
  List<int>? lastMarked;
  int markAllCalls = 0;

  @override
  Future<PageChunk<NotificationModel, int>> getNotifications({
    required int page,
  }) async => PageChunk(items: items, nextCursor: null, hasMore: false);

  @override
  Future<NotificationModel> getNotificationById(int id) async =>
      items.firstWhere(
        (n) => n.id == id,
        orElse: () => throw StateError('missing $id'),
      );

  @override
  Future<void> markRead(List<int> ids) async {
    lastMarked = ids;
  }

  @override
  Future<void> markAllRead() async {
    markAllCalls++;
  }

  @override
  Future<void> deleteNotification(int id) async {
    items.removeWhere((n) => n.id == id);
  }
}

void main() {
  late FakeRemote remote;
  late NotificationRepository repository;

  setUp(() {
    remote = FakeRemote();
    repository = NotificationRepository(remoteDatasource: remote);
  });

  group('NotificationMapper (swagger shape)', () {
    test('maps message, type, payload', () {
      final entity = NotificationModel.fromJson(_notifJson).toDomain();

      expect(entity.id, 9);
      expect(entity.message, 'Напоминание о приёме');
      expect(entity.isRead, isFalse);
      expect(entity.data, {'appointment_id': 7});
    });
  });

  group('NotificationRepository', () {
    test('getNotifications returns chunk', () async {
      final chunk = await repository.getNotifications(page: 1);
      expect(chunk.items.length, 1);
    });

    test('markRead forwards ids', () async {
      await repository.markRead([9]);
      expect(remote.lastMarked, [9]);
    });

    test('deleteNotification removes the item', () async {
      await repository.deleteNotification(9);
      final chunk = await repository.getNotifications(page: 1);
      expect(chunk.items, isEmpty);
    });
  });

  group('UseCases', () {
    test('GetNotificationsUseCase returns chunk', () async {
      final result = await GetNotificationsUseCase(
        _logger(),
        repository: repository,
      )(1);

      expect(result.dataOrThrow().items.length, 1);
    });

    test('MarkAllNotificationsReadUseCase completes', () async {
      final result = await MarkAllNotificationsReadUseCase(
        _logger(),
        repository: repository,
      )(const NoParams());

      expect(result, isSuccess(null));
      expect(remote.markAllCalls, 1);
    });
  });
}
