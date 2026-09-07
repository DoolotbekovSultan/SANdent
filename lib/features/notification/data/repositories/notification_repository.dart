import 'package:injectable/injectable.dart';
import 'package:nexo/nexo_core.dart';

import '../../domain/entities/notification_entity.dart';
import '../../domain/repositories/i_notification_repository.dart';
import '../datasources/i_remote_notification_data_source.dart';
import '../mappers/notification_mapper.dart';

@LazySingleton(as: INotificationRepository)
class NotificationRepository implements INotificationRepository {
  NotificationRepository({required this._remoteDatasource});

  final IRemoteNotificationDataSource _remoteDatasource;

  @override
  Future<PageChunk<NotificationEntity, int>> getNotifications({
    required int page,
  }) async {
    final chunk = await _remoteDatasource.getNotifications(page: page);
    return PageChunk<NotificationEntity, int>(
      items: chunk.items.toDomain(),
      nextCursor: chunk.nextCursor,
      hasMore: chunk.hasMore,
    );
  }

  @override
  Future<NotificationEntity> getNotificationById(int id) async {
    final model = await _remoteDatasource.getNotificationById(id);
    return model.toDomain();
  }

  @override
  Future<void> markRead(List<int> ids) =>
      _remoteDatasource.markRead(ids);

  @override
  Future<void> markAllRead() => _remoteDatasource.markAllRead();

  @override
  Future<void> deleteNotification(int id) =>
      _remoteDatasource.deleteNotification(id);
}
